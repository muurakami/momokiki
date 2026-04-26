import 'package:injectable/injectable.dart';

import '../models/dictionary_language.dart';
import '../models/dictionary_search_result.dart';
import '../repositories/dictionary_repository.dart';
import '../services/kana_romaji_converter.dart';
import '../services/query_language_detector.dart';

@lazySingleton
class SearchDictionary {
  const SearchDictionary(
    this._repository,
    this._detector,
    this._romajiConverter,
  );

  final DictionaryRepository _repository;
  final QueryLanguageDetector _detector;
  final KanaRomajiConverter _romajiConverter;

  Future<DictionarySearchResult> call(
    String query, {
    int japaneseLimit = 20,
    int englishLimit = 5,
    Set<DictionaryLanguage> activeLanguages = const {
      DictionaryLanguage.japanese,
      DictionaryLanguage.english,
    },
  }) async {
    final normalizedQuery = query.trim();
    final mode = _detector.detect(normalizedQuery);
    if (mode == DictionaryQueryLanguageMode.empty) {
      return DictionarySearchResult.empty(normalizedQuery);
    }

    final languages = activeLanguages.isEmpty
        ? const {DictionaryLanguage.japanese, DictionaryLanguage.english}
        : activeLanguages;
    final hasJapanese = languages.contains(DictionaryLanguage.japanese);
    final hasEnglish = languages.contains(DictionaryLanguage.english);

    if (hasEnglish && !hasJapanese) {
      final englishEntries = await _repository.searchEnglish(
        normalizedQuery,
        limit: englishLimit,
      );
      return DictionarySearchResult(
        query: normalizedQuery,
        mode: mode,
        englishEntries: englishEntries,
      );
    }

    if (hasJapanese && !hasEnglish) {
      if (mode == DictionaryQueryLanguageMode.latinAmbiguous) {
        final romajiQuery = _romajiConverter.normalizeLatin(normalizedQuery);
        final japaneseEntries = await _repository.searchJapaneseByRomaji(
          romajiQuery,
          limit: japaneseLimit,
        );
        return DictionarySearchResult(
          query: normalizedQuery,
          mode: mode,
          japaneseEntries: japaneseEntries,
        );
      }

      final japaneseEntries = await _repository.searchJapaneseByText(
        normalizedQuery,
        limit: japaneseLimit,
      );
      return DictionarySearchResult(
        query: normalizedQuery,
        mode: mode,
        japaneseEntries: japaneseEntries,
      );
    }

    if (mode == DictionaryQueryLanguageMode.japanese) {
      final japaneseEntries = await _repository.searchJapaneseByText(
        normalizedQuery,
        limit: japaneseLimit,
      );
      return DictionarySearchResult(
        query: normalizedQuery,
        mode: mode,
        japaneseEntries: japaneseEntries,
      );
    }

    final englishEntries = await _repository.searchEnglish(
      normalizedQuery,
      limit: englishLimit,
    );
    return DictionarySearchResult(
      query: normalizedQuery,
      mode: mode,
      englishEntries: englishEntries,
    );
  }
}
