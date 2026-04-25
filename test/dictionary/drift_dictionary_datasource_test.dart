import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/core/database/app_database.dart';
import 'package:momokiki/features/dictionary/data/datasources/drift_dictionary_datasource.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_entry.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_favorite.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_language.dart';

void main() {
  late AppDatabase database;
  late DriftDictionaryDataSource datasource;

  setUp(() {
    database = AppDatabase.test(NativeDatabase.memory());
    datasource = DriftDictionaryDataSource(database);
  });

  tearDown(() async {
    await database.close();
  });

  test('persists japanese seed readiness in app state', () async {
    expect(await datasource.isJapaneseReady(), isFalse);
    expect(await datasource.getJapaneseEntryCount(), 0);

    await datasource.saveJapaneseReadyState(
      entryCount: 216601,
      updatedAt: DateTime(2026, 1, 1),
    );

    expect(await datasource.isJapaneseReady(), isTrue);
    expect(await datasource.getJapaneseEntryCount(), 216601);
  });

  test('stores english cache and favorites snapshots', () async {
    const englishEntry = DictionaryEnglishEntry(
      word: 'run',
      phonetic: '/rʌn/',
      meanings: <DictionaryEnglishMeaning>[
        DictionaryEnglishMeaning(
          partOfSpeech: 'verb',
          definitions: <DictionaryEnglishDefinition>[
            DictionaryEnglishDefinition(definition: 'to move quickly on foot'),
          ],
        ),
      ],
    );

    await datasource.saveEnglishCache('run', englishEntry);
    final cached = await datasource.getEnglishCache('run');
    expect(cached, isNotNull);
    expect(cached!.entry.word, 'run');

    await datasource.saveFavorite(
      DictionaryFavorite(
        id: englishEntry.favoriteId,
        entryKey: englishEntry.entryKey,
        language: DictionaryLanguage.english,
        title: englishEntry.title,
        subtitle: englishEntry.subtitle,
        entry: englishEntry,
        createdAt: DateTime(2026, 1, 1),
      ),
    );

    expect(await datasource.isFavorite(englishEntry.favoriteId), isTrue);
    expect(await datasource.getFavoriteIds(), contains(englishEntry.favoriteId));

    final favorites = await datasource.getFavorites();
    expect(favorites, hasLength(1));
    expect(favorites.first.entry.title, 'run');
  });
}
