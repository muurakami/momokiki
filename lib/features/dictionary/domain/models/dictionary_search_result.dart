import 'package:freezed_annotation/freezed_annotation.dart';

import 'dictionary_entry.dart';
import 'dictionary_language.dart';

part 'dictionary_search_result.freezed.dart';

@freezed
class DictionarySearchResult with _$DictionarySearchResult {
  const DictionarySearchResult._();

  const factory DictionarySearchResult({
    required String query,
    required DictionaryQueryLanguageMode mode,
    @Default(<DictionaryJapaneseEntry>[]) List<DictionaryJapaneseEntry> japaneseEntries,
    @Default(<DictionaryEnglishEntry>[]) List<DictionaryEnglishEntry> englishEntries,
  }) = _DictionarySearchResult;

  factory DictionarySearchResult.empty([String query = '']) =>
      DictionarySearchResult(
        query: query,
        mode: query.trim().isEmpty
            ? DictionaryQueryLanguageMode.empty
            : DictionaryQueryLanguageMode.latinAmbiguous,
      );

  bool get isEmpty => japaneseEntries.isEmpty && englishEntries.isEmpty;
}
