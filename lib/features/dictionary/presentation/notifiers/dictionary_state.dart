import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/dictionary_entry.dart';
import '../../domain/models/dictionary_search_result.dart';

part 'dictionary_state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const DictionaryState._();

  const factory DictionaryState({
    @Default('') String query,
    @Default(false) bool isSearching,
    @Default(false) bool isExporting,
    @Default(<String>{}) Set<String> favoriteIds,
    DictionarySearchResult? searchResult,
    String? errorMessage,
  }) = _DictionaryState;

  bool isFavorite(DictionaryEntry entry) => favoriteIds.contains(entry.favoriteId);
}
