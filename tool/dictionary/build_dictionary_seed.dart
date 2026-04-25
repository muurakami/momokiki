import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:sqlite3/sqlite3.dart';

import 'package:momokiki/features/dictionary/data/datasources/jmdict_xml_parser.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_entry.dart';
import 'package:momokiki/features/dictionary/domain/services/kana_romaji_converter.dart';

const String _defaultInputPath = 'assets/dict/jmdict.xml';
const String _defaultOutputPath = 'assets/dict/dictionary_seed.sqlite';
const String _jmdictSourceKey = 'jmdict_seed_v1';

Future<void> main(List<String> arguments) async {
  final inputPath = arguments.isNotEmpty ? arguments[0] : _defaultInputPath;
  final outputPath = arguments.length > 1 ? arguments[1] : _defaultOutputPath;
  final inputFile = File(path.normalize(path.absolute(inputPath)));
  final outputFile = File(path.normalize(path.absolute(outputPath)));

  if (!inputFile.existsSync()) {
    stderr.writeln('JMdict XML not found: ${inputFile.path}');
    exitCode = 1;
    return;
  }

  await outputFile.parent.create(recursive: true);
  if (outputFile.existsSync()) {
    await outputFile.delete();
  }

  stdout.writeln('Reading JMdict XML: ${inputFile.path}');
  final rawXml = await inputFile.readAsString();
  final parser = JmdictXmlParser();
  final database = sqlite3.open(outputFile.path);

  try {
    _configureDatabase(database);
    final importedAt = DateTime.now().millisecondsSinceEpoch;
    var totalEntries = 0;

    await for (final batch in parser.parseBatches(rawXml, batchSize: 500)) {
      _insertBatch(database, batch, importedAt);
      totalEntries += batch.length;
      if (totalEntries == batch.length || totalEntries % 5000 == 0) {
        stdout.writeln('Seed build progress: entries=$totalEntries');
      }
    }

    database.execute(
      '''
      INSERT INTO dictionary_source_state_table (
        source_key,
        is_ready,
        entry_count,
        updated_at,
        error_message
      ) VALUES (?, ?, ?, ?, ?)
      ''',
      <Object?>[_jmdictSourceKey, 1, totalEntries, importedAt, null],
    );
    database.execute('VACUUM');

    stdout.writeln(
      'Dictionary seed built: ${outputFile.path} (entries=$totalEntries)',
    );
  } finally {
    database.dispose();
  }
}

void _configureDatabase(Database database) {
  database.execute('PRAGMA journal_mode = MEMORY');
  database.execute('PRAGMA synchronous = OFF');
  database.execute('PRAGMA temp_store = MEMORY');
  database.execute('PRAGMA foreign_keys = OFF');

  database.execute('''
    CREATE TABLE dictionary_japanese_entry_table (
      entry_id TEXT NOT NULL PRIMARY KEY,
      primary_kanji TEXT,
      primary_kana TEXT NOT NULL,
      primary_romaji TEXT NOT NULL,
      meaning_preview TEXT NOT NULL,
      entry_json TEXT NOT NULL,
      is_common INTEGER NOT NULL DEFAULT 0,
      imported_at INTEGER NOT NULL
    )
  ''');
  database.execute('''
    CREATE TABLE dictionary_source_state_table (
      source_key TEXT NOT NULL PRIMARY KEY,
      is_ready INTEGER NOT NULL DEFAULT 0,
      entry_count INTEGER NOT NULL DEFAULT 0,
      updated_at INTEGER NOT NULL,
      error_message TEXT
    )
  ''');
  database.execute('''
    CREATE VIRTUAL TABLE dictionary_japanese_fts USING fts5(
      entry_id UNINDEXED,
      kanji_terms,
      kana_terms,
      romaji_terms,
      tokenize = 'unicode61 remove_diacritics 2'
    )
  ''');
  database.execute(
    'CREATE INDEX idx_dictionary_japanese_primary_kanji ON dictionary_japanese_entry_table(primary_kanji)',
  );
  database.execute(
    'CREATE INDEX idx_dictionary_japanese_primary_kana ON dictionary_japanese_entry_table(primary_kana)',
  );
  database.execute(
    'CREATE INDEX idx_dictionary_japanese_primary_romaji ON dictionary_japanese_entry_table(primary_romaji)',
  );
}

void _insertBatch(
  Database database,
  List<DictionaryJapaneseEntry> entries,
  int importedAt,
) {
  if (entries.isEmpty) {
    return;
  }

  final entryStatement = database.prepare('''
    INSERT INTO dictionary_japanese_entry_table (
      entry_id,
      primary_kanji,
      primary_kana,
      primary_romaji,
      meaning_preview,
      entry_json,
      is_common,
      imported_at
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
  ''');
  final ftsStatement = database.prepare('''
    INSERT INTO dictionary_japanese_fts (
      entry_id,
      kanji_terms,
      kana_terms,
      romaji_terms
    ) VALUES (?, ?, ?, ?)
  ''');

  try {
    database.execute('BEGIN IMMEDIATE');
    for (final entry in entries) {
      entryStatement.execute(<Object?>[
        entry.entryId,
        _primaryKanji(entry),
        _primaryKana(entry),
        _primaryRomaji(entry),
        _meaningPreview(entry),
        jsonEncode(entry.toJson()),
        entry.isCommon ? 1 : 0,
        importedAt,
      ]);
      ftsStatement.execute(<Object?>[
        entry.entryId,
        _kanjiTerms(entry),
        _kanaTerms(entry),
        _romajiTerms(entry),
      ]);
    }
    database.execute('COMMIT');
  } catch (_) {
    database.execute('ROLLBACK');
    rethrow;
  } finally {
    entryStatement.dispose();
    ftsStatement.dispose();
  }
}

String _primaryKana(DictionaryJapaneseEntry entry) {
  for (final form in entry.forms) {
    if (!form.isKanji) {
      return form.reading;
    }
  }
  return entry.primaryForm.reading;
}

String? _primaryKanji(DictionaryJapaneseEntry entry) {
  for (final form in entry.forms) {
    if (form.isKanji) {
      return form.text;
    }
  }
  return null;
}

String _primaryRomaji(DictionaryJapaneseEntry entry) {
  for (final form in entry.forms) {
    if (form.romaji.isNotEmpty) {
      return form.romaji;
    }
  }
  return const KanaRomajiConverter().toRomaji(_primaryKana(entry));
}

String _meaningPreview(DictionaryJapaneseEntry entry) {
  return entry.senses.expand((sense) => sense.glosses).take(3).join(', ');
}

String _kanjiTerms(DictionaryJapaneseEntry entry) {
  return entry.forms
      .where((form) => form.isKanji)
      .map((form) => form.text.trim())
      .where((value) => value.isNotEmpty)
      .join(' ');
}

String _kanaTerms(DictionaryJapaneseEntry entry) {
  final converter = const KanaRomajiConverter();
  final terms = <String>{};
  for (final form in entry.forms) {
    final reading = form.reading.trim();
    if (reading.isEmpty) {
      continue;
    }
    terms.add(reading);
    terms.add(converter.toHiragana(reading));
  }
  return terms.where((value) => value.isNotEmpty).join(' ');
}

String _romajiTerms(DictionaryJapaneseEntry entry) {
  final converter = const KanaRomajiConverter();
  final terms = <String>{};
  for (final form in entry.forms) {
    final normalized = converter.normalizeLatin(form.romaji);
    if (normalized.isNotEmpty) {
      terms.add(normalized);
    }
  }
  return terms.join(' ');
}
