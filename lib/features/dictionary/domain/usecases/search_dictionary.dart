import 'package:injectable/injectable.dart';

import '../models/dictionary_entry.dart';
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
  }) async {
    final normalizedQuery = query.trim();
    final mode = _detector.detect(normalizedQuery);
    if (mode == DictionaryQueryLanguageMode.empty) {
      return DictionarySearchResult.empty(normalizedQuery);
    }

    switch (mode) {
      case DictionaryQueryLanguageMode.empty:
        return DictionarySearchResult.empty(normalizedQuery);
      case DictionaryQueryLanguageMode.japanese:
        final japaneseEntries = await _repository.searchJapaneseByText(
          normalizedQuery,
          limit: japaneseLimit,
        );
        return DictionarySearchResult(
          query: normalizedQuery,
          mode: mode,
          japaneseEntries: japaneseEntries,
        );
      case DictionaryQueryLanguageMode.latinAmbiguous:
        final romajiQuery = _romajiConverter.normalizeLatin(normalizedQuery);
        final results = await Future.wait<Object?>([
          _repository.searchJapaneseByRomaji(
            romajiQuery,
            limit: japaneseLimit,
          ),
          _repository.searchEnglish(
            normalizedQuery,
            limit: englishLimit,
          ),
        ]);
        return DictionarySearchResult(
          query: normalizedQuery,
          mode: mode,
          japaneseEntries: results[0]! as List<DictionaryJapaneseEntry>,
          englishEntries: results[1]! as List<DictionaryEnglishEntry>,
        );
    }
  }
}
