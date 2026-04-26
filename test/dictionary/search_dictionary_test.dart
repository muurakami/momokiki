import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_entry.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_favorite.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_language.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_search_result.dart';
import 'package:momokiki/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:momokiki/features/dictionary/domain/services/kana_romaji_converter.dart';
import 'package:momokiki/features/dictionary/domain/services/query_language_detector.dart';
import 'package:momokiki/features/dictionary/domain/usecases/search_dictionary.dart';

void main() {
  group('SearchDictionary', () {
    late _FakeDictionaryRepository repository;
    late SearchDictionary searchDictionary;

    setUp(() {
      repository = _FakeDictionaryRepository();
      searchDictionary = SearchDictionary(
        repository,
        const QueryLanguageDetector(),
        const KanaRomajiConverter(),
      );
    });

    test('English-only Latin query calls only searchEnglish', () async {
      final result = await searchDictionary(
        'run',
        activeLanguages: const {DictionaryLanguage.english},
      );

      expect(repository.calls, <String>['english:run']);
      expect(result.englishEntries, isNotEmpty);
      expect(result.japaneseEntries, isEmpty);
      _expectNoMixedEntries(result);
    });

    test('English-only Japanese query still calls only searchEnglish',
        () async {
      final result = await searchDictionary(
        '走る',
        activeLanguages: const {DictionaryLanguage.english},
      );

      expect(repository.calls, <String>['english:走る']);
      expect(result.englishEntries, isNotEmpty);
      expect(result.japaneseEntries, isEmpty);
      _expectNoMixedEntries(result);
    });

    test('Japanese-only Latin query calls only searchJapaneseByRomaji',
        () async {
      final result = await searchDictionary(
        'Hashiru',
        activeLanguages: const {DictionaryLanguage.japanese},
      );

      expect(repository.calls, <String>['japaneseRomaji:hashiru']);
      expect(result.japaneseEntries, isNotEmpty);
      expect(result.englishEntries, isEmpty);
      _expectNoMixedEntries(result);
    });

    test('Japanese-only Japanese query calls only searchJapaneseByText',
        () async {
      final result = await searchDictionary(
        '走る',
        activeLanguages: const {DictionaryLanguage.japanese},
      );

      expect(repository.calls, <String>['japaneseText:走る']);
      expect(result.japaneseEntries, isNotEmpty);
      expect(result.englishEntries, isEmpty);
      _expectNoMixedEntries(result);
    });

    test('Both active Latin query calls only searchEnglish', () async {
      final result = await searchDictionary(
        'run',
        activeLanguages: const {
          DictionaryLanguage.japanese,
          DictionaryLanguage.english,
        },
      );

      expect(repository.calls, <String>['english:run']);
      expect(result.englishEntries, isNotEmpty);
      expect(result.japaneseEntries, isEmpty);
      _expectNoMixedEntries(result);
    });

    test('Both active Japanese query calls only searchJapaneseByText',
        () async {
      final result = await searchDictionary(
        '走る',
        activeLanguages: const {
          DictionaryLanguage.japanese,
          DictionaryLanguage.english,
        },
      );

      expect(repository.calls, <String>['japaneseText:走る']);
      expect(result.japaneseEntries, isNotEmpty);
      expect(result.englishEntries, isEmpty);
      _expectNoMixedEntries(result);
    });
  });
}

void _expectNoMixedEntries(DictionarySearchResult result) {
  expect(
    result.japaneseEntries.isEmpty || result.englishEntries.isEmpty,
    isTrue,
  );
}

class _FakeDictionaryRepository implements DictionaryRepository {
  final List<String> calls = <String>[];

  @override
  Future<bool> isJapaneseReady() => throw UnimplementedError();

  @override
  Future<int> ensureJapaneseDictionaryReady() => throw UnimplementedError();

  @override
  Future<List<DictionaryJapaneseEntry>> searchJapaneseByText(
    String query, {
    int limit = 20,
  }) async {
    calls.add('japaneseText:$query');
    return <DictionaryJapaneseEntry>[_japaneseEntry(query)];
  }

  @override
  Future<List<DictionaryJapaneseEntry>> searchJapaneseByRomaji(
    String query, {
    int limit = 20,
  }) async {
    calls.add('japaneseRomaji:$query');
    return <DictionaryJapaneseEntry>[_japaneseEntry(query)];
  }

  @override
  Future<List<DictionaryEnglishEntry>> searchEnglish(
    String query, {
    int limit = 5,
  }) async {
    calls.add('english:$query');
    return <DictionaryEnglishEntry>[_englishEntry(query)];
  }

  @override
  Future<List<DictionaryFavorite>> getFavorites() => throw UnimplementedError();

  @override
  Future<Set<String>> getFavoriteIds() => throw UnimplementedError();

  @override
  Future<bool> isFavorite(String favoriteId) => throw UnimplementedError();

  @override
  Future<void> saveFavorite(DictionaryEntry entry) =>
      throw UnimplementedError();

  @override
  Future<void> removeFavorite(String favoriteId) => throw UnimplementedError();
}

DictionaryJapaneseEntry _japaneseEntry(String query) {
  return DictionaryJapaneseEntry(
    entryId: 'ja-$query',
    forms: <DictionaryJapaneseForm>[
      DictionaryJapaneseForm(
        text: query,
        reading: query,
        romaji: query,
        isPrimary: true,
      ),
    ],
    senses: const <DictionaryJapaneseSense>[
      DictionaryJapaneseSense(glosses: <String>['run']),
    ],
  );
}

DictionaryEnglishEntry _englishEntry(String query) {
  return DictionaryEnglishEntry(
    word: query,
    meanings: const <DictionaryEnglishMeaning>[
      DictionaryEnglishMeaning(
        partOfSpeech: 'verb',
        definitions: <DictionaryEnglishDefinition>[
          DictionaryEnglishDefinition(definition: 'to move quickly on foot'),
        ],
      ),
    ],
  );
}
