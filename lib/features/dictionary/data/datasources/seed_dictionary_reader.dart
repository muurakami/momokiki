import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlite3/sqlite3.dart';

import '../../domain/models/dictionary_entry.dart';
import '../../domain/services/kana_romaji_converter.dart';
import 'dictionary_seed_installer.dart';

@lazySingleton
class SeedDictionaryReader {
  SeedDictionaryReader(this._seedInstaller, this._romajiConverter)
      : _databasePathOverride = null;

  @visibleForTesting
  SeedDictionaryReader.forTesting(
    this._romajiConverter,
    String databasePath,
  )   : _seedInstaller = null,
        _databasePathOverride = databasePath;

  final DictionarySeedInstaller? _seedInstaller;
  final KanaRomajiConverter _romajiConverter;
  final String? _databasePathOverride;

  Database? _database;
  String? _openedPath;

  Future<bool> isInstalled() async {
    final databaseFile = File(await _resolveDatabasePath());
    return databaseFile.existsSync();
  }

  Future<bool> hasRequiredTables() async {
    final database = await _openDatabase();
    final rows = database.select(
      '''
      SELECT name
      FROM sqlite_master
      WHERE name IN (
        'dictionary_japanese_entry_table',
        'dictionary_japanese_fts'
      )
      ORDER BY name
      ''',
    );
    final tableNames = rows.map((row) => row['name']).whereType<String>().toSet();
    return tableNames.contains('dictionary_japanese_entry_table') &&
        tableNames.contains('dictionary_japanese_fts');
  }

  Future<int> getJapaneseEntryCount() async {
    final database = await _openDatabase();
    final rows = database.select(
      'SELECT COUNT(*) AS entry_count FROM dictionary_japanese_entry_table',
    );
    if (rows.isEmpty) {
      return 0;
    }

    final rawCount = rows.first['entry_count'];
    return rawCount is int ? rawCount : 0;
  }

  Future<bool> hasEntry(String entryId) async {
    final database = await _openDatabase();
    final rows = database.select(
      'SELECT 1 AS found FROM dictionary_japanese_entry_table WHERE entry_id = ? LIMIT 1',
      <Object?>[entryId],
    );
    return rows.isNotEmpty;
  }

  Future<List<DictionaryJapaneseEntry>> searchJapaneseByText(
    String query, {
    int limit = 20,
  }) async {
    final normalized = query.trim();
    if (normalized.isEmpty) {
      return const <DictionaryJapaneseEntry>[];
    }

    final searchTerms = <String>{normalized};
    final hiragana = _romajiConverter.toHiragana(normalized);
    if (hiragana.isNotEmpty) {
      searchTerms.add(hiragana);
    }

    final clauses = <String>{};
    for (final term in searchTerms) {
      clauses.add(_columnPrefixTerm('kanji_terms', term));
      clauses.add(_columnPrefixTerm('kana_terms', term));
    }

    return _searchJapaneseFts(clauses.join(' OR '), limit);
  }

  Future<List<DictionaryJapaneseEntry>> searchJapaneseByRomaji(
    String query, {
    int limit = 20,
  }) async {
    final normalized = _romajiConverter.normalizeLatin(query);
    if (normalized.isEmpty) {
      return const <DictionaryJapaneseEntry>[];
    }

    final matchQuery = normalized
        .split(' ')
        .where((token) => token.isNotEmpty)
        .map((token) => _columnPrefixTerm('romaji_terms', token))
        .join(' AND ');
    return _searchJapaneseFts(matchQuery, limit);
  }

  void close() {
    _database?.dispose();
    _database = null;
    _openedPath = null;
  }

  Future<Database> _openDatabase() async {
    final databasePath = await _resolveDatabasePath();
    final databaseFile = File(databasePath);
    if (!databaseFile.existsSync()) {
      throw StateError('Dictionary seed is not installed: $databasePath');
    }

    if (_database != null && _openedPath == databasePath) {
      return _database!;
    }

    close();
    _database = sqlite3.open(databasePath, mode: OpenMode.readOnly);
    _openedPath = databasePath;

    if (kDebugMode) {
      debugPrint('Dictionary seed opened: $databasePath');
    }

    return _database!;
  }

  Future<List<DictionaryJapaneseEntry>> _searchJapaneseFts(
    String matchQuery,
    int limit,
  ) async {
    if (matchQuery.isEmpty) {
      return const <DictionaryJapaneseEntry>[];
    }

    final database = await _openDatabase();
    final rows = database.select(
      '''
      SELECT e.entry_json AS entry_json
      FROM dictionary_japanese_entry_table e
      JOIN dictionary_japanese_fts f ON f.entry_id = e.entry_id
      WHERE dictionary_japanese_fts MATCH ?
      ORDER BY e.is_common DESC, bm25(dictionary_japanese_fts)
      LIMIT ?
      ''',
      <Object?>[matchQuery, limit],
    );

    return rows
        .map((row) => _decodeEntry(row['entry_json']))
        .whereType<DictionaryJapaneseEntry>()
        .toList(growable: false);
  }

  DictionaryEntry _decodeEntry(Object? rawJson) {
    if (rawJson is! String) {
      throw const FormatException('Dictionary entry row is invalid');
    }

    final decoded = jsonDecode(rawJson);
    if (decoded is! Map) {
      throw const FormatException('Dictionary entry JSON must be an object');
    }

    return DictionaryEntry.fromJson(Map<String, Object?>.from(decoded));
  }

  String _columnPrefixTerm(String column, String term) {
    return '$column:${_prefixTerm(term)}';
  }

  String _prefixTerm(String term) {
    final escaped = term.replaceAll('"', '""');
    return '"$escaped"*';
  }

  Future<String> _resolveDatabasePath() async {
    if (_databasePathOverride != null) {
      return _databasePathOverride;
    }

    final seedInstaller = _seedInstaller;
    if (seedInstaller == null) {
      throw StateError('Dictionary seed installer is not configured');
    }

    return seedInstaller.getInstalledPath();
  }
}
