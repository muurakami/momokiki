import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/dictionary/data/datasources/seed_dictionary_reader.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_entry.dart';
import 'package:momokiki/features/dictionary/domain/services/kana_romaji_converter.dart';
import 'package:sqlite3/sqlite3.dart';

void main() {
  late Directory tempDirectory;
  late File databaseFile;
  late SeedDictionaryReader reader;

  const entry = DictionaryJapaneseEntry(
    entryId: '1000000',
    forms: <DictionaryJapaneseForm>[
      DictionaryJapaneseForm(
        text: '走る',
        reading: 'はしる',
        romaji: 'hashiru',
        isPrimary: true,
        isCommon: true,
        isKanji: true,
      ),
      DictionaryJapaneseForm(
        text: 'はしる',
        reading: 'はしる',
        romaji: 'hashiru',
      ),
    ],
    senses: <DictionaryJapaneseSense>[
      DictionaryJapaneseSense(
        partsOfSpeech: <String>['verb'],
        glosses: <String>['to run'],
      ),
    ],
    isCommon: true,
  );

  setUp(() {
    tempDirectory = Directory.systemTemp.createTempSync('dictionary_seed_reader_test_');
    databaseFile = File('${tempDirectory.path}${Platform.pathSeparator}dictionary_seed.sqlite');
    _createSeedDatabase(databaseFile, entry);
    reader = SeedDictionaryReader.forTesting(
      const KanaRomajiConverter(),
      databaseFile.path,
    );
  });

  tearDown(() {
    reader.close();
    if (tempDirectory.existsSync()) {
      tempDirectory.deleteSync(recursive: true);
    }
  });

  test('validates seed schema and known entry', () async {
    expect(await reader.isInstalled(), isTrue);
    expect(await reader.hasRequiredTables(), isTrue);
    expect(await reader.getJapaneseEntryCount(), 1);
    expect(await reader.hasEntry('1000000'), isTrue);
  });

  test('searches seeded japanese entries by text and romaji', () async {
    final kanjiResults = await reader.searchJapaneseByText('走');
    final kanaResults = await reader.searchJapaneseByText('はし');
    final romajiResults = await reader.searchJapaneseByRomaji('hashi');

    expect(kanjiResults, isNotEmpty);
    expect(kanaResults, isNotEmpty);
    expect(romajiResults, isNotEmpty);
    expect(romajiResults.first.primaryForm.text, '走る');
  });
}

void _createSeedDatabase(File file, DictionaryJapaneseEntry entry) {
  final database = sqlite3.open(file.path);
  try {
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
      CREATE VIRTUAL TABLE dictionary_japanese_fts USING fts5(
        entry_id UNINDEXED,
        kanji_terms,
        kana_terms,
        romaji_terms,
        tokenize = 'unicode61 remove_diacritics 2'
      )
    ''');

    database.execute(
      '''
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
      ''',
      <Object?>[
        entry.entryId,
        '走る',
        'はしる',
        'hashiru',
        'to run',
        jsonEncode(entry.toJson()),
        1,
        DateTime(2026, 1, 1).millisecondsSinceEpoch,
      ],
    );
    database.execute(
      '''
      INSERT INTO dictionary_japanese_fts (
        entry_id,
        kanji_terms,
        kana_terms,
        romaji_terms
      ) VALUES (?, ?, ?, ?)
      ''',
      <Object?>['1000000', '走る', 'はしる', 'hashiru'],
    );
  } finally {
    database.dispose();
  }
}
