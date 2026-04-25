import 'dart:convert';

import 'package:drift/drift.dart' as drift;
import 'package:injectable/injectable.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/models/dictionary_entry.dart';
import '../../domain/models/dictionary_favorite.dart';
import '../../domain/models/dictionary_language.dart';

class CachedEnglishDictionaryEntry {
  const CachedEnglishDictionaryEntry({
    required this.entry,
    required this.cachedAt,
  });

  final DictionaryEnglishEntry entry;
  final DateTime cachedAt;
}

@lazySingleton
class DriftDictionaryDataSource {
  DriftDictionaryDataSource(this._database);

  static const String _jmdictSourceKey = 'jmdict_seed_v1';
  static const String _englishLanguage = 'en';

  final AppDatabase _database;

  Future<bool> isJapaneseReady() async {
    final state = await _getJapaneseState();
    return state != null && state.isReady && state.entryCount > 0;
  }

  Future<int> getJapaneseEntryCount() async {
    return (await _getJapaneseState())?.entryCount ?? 0;
  }

  Future<void> saveJapaneseReadyState({
    required int entryCount,
    required DateTime updatedAt,
  }) {
    return _database.into(_database.dictionarySourceStateTable).insertOnConflictUpdate(
          DictionarySourceStateTableCompanion.insert(
            sourceKey: _jmdictSourceKey,
            isReady: const drift.Value(true),
            entryCount: drift.Value(entryCount),
            updatedAt: updatedAt,
            errorMessage: const drift.Value(null),
          ),
        );
  }

  Future<void> saveJapaneseBootstrapError(String message) {
    return _database.into(_database.dictionarySourceStateTable).insertOnConflictUpdate(
          DictionarySourceStateTableCompanion.insert(
            sourceKey: _jmdictSourceKey,
            isReady: const drift.Value(false),
            entryCount: const drift.Value(0),
            updatedAt: DateTime.now(),
            errorMessage: drift.Value(message),
          ),
        );
  }

  Future<CachedEnglishDictionaryEntry?> getEnglishCache(String word) async {
    final row = await (_database.select(_database.dictionaryCacheTable)
          ..where(
            (tbl) => tbl.word.equals(word) & tbl.language.equals(_englishLanguage),
          ))
        .getSingleOrNull();
    if (row == null) {
      return null;
    }

    final decoded = _decodeEntry(row.entryJson);
    if (decoded is! DictionaryEnglishEntry) {
      return null;
    }

    return CachedEnglishDictionaryEntry(
      entry: decoded,
      cachedAt: row.cachedAt,
    );
  }

  Future<void> saveEnglishCache(
    String word,
    DictionaryEnglishEntry entry,
  ) {
    return _database.into(_database.dictionaryCacheTable).insertOnConflictUpdate(
          DictionaryCacheTableCompanion.insert(
            word: word,
            language: _englishLanguage,
            entryJson: jsonEncode(entry.toJson()),
            cachedAt: DateTime.now(),
          ),
        );
  }

  Future<List<DictionaryFavorite>> getFavorites() async {
    final rows = await (_database.select(_database.dictionaryFavoriteTable)
          ..orderBy([(tbl) => drift.OrderingTerm.desc(tbl.createdAt)]))
        .get();
    return rows.map(_mapFavorite).toList();
  }

  Future<Set<String>> getFavoriteIds() async {
    final rows = await _database.select(_database.dictionaryFavoriteTable).get();
    return rows.map((row) => row.id).toSet();
  }

  Future<bool> isFavorite(String favoriteId) async {
    final row = await (_database.select(_database.dictionaryFavoriteTable)
          ..where((tbl) => tbl.id.equals(favoriteId)))
        .getSingleOrNull();
    return row != null;
  }

  Future<void> saveFavorite(DictionaryFavorite favorite) {
    return _database.into(_database.dictionaryFavoriteTable).insertOnConflictUpdate(
          DictionaryFavoriteTableCompanion.insert(
            id: favorite.id,
            entryKey: favorite.entryKey,
            language: favorite.language.name,
            title: favorite.title,
            subtitle: drift.Value(favorite.subtitle),
            entryJson: jsonEncode(favorite.entry.toJson()),
            createdAt: drift.Value(favorite.createdAt),
          ),
        );
  }

  Future<void> removeFavorite(String favoriteId) {
    return (_database.delete(_database.dictionaryFavoriteTable)
          ..where((tbl) => tbl.id.equals(favoriteId)))
        .go();
  }

  Future<DictionarySourceStateTableData?> _getJapaneseState() {
    return (_database.select(_database.dictionarySourceStateTable)
          ..where((tbl) => tbl.sourceKey.equals(_jmdictSourceKey)))
        .getSingleOrNull();
  }

  DictionaryFavorite _mapFavorite(DictionaryFavoriteTableData row) {
    final entry = _decodeEntry(row.entryJson);
    return DictionaryFavorite(
      id: row.id,
      entryKey: row.entryKey,
      language: DictionaryLanguage.values.firstWhere(
        (value) => value.name == row.language,
        orElse: () => DictionaryLanguage.english,
      ),
      title: row.title,
      subtitle: row.subtitle,
      entry: entry,
      createdAt: row.createdAt,
    );
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
}
