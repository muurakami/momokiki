import 'package:freezed_annotation/freezed_annotation.dart';

import 'dictionary_entry.dart';
import 'dictionary_language.dart';

part 'dictionary_favorite.freezed.dart';
part 'dictionary_favorite.g.dart';

@Freezed(fromJson: true, toJson: true)
class DictionaryFavorite with _$DictionaryFavorite {
  const DictionaryFavorite._();

  const factory DictionaryFavorite({
    required String id,
    required String entryKey,
    required DictionaryLanguage language,
    required String title,
    String? subtitle,
    required DictionaryEntry entry,
    required DateTime createdAt,
  }) = _DictionaryFavorite;

  factory DictionaryFavorite.fromJson(Map<String, Object?> json) =>
      _$DictionaryFavoriteFromJson(json);

  String get previewText => entry.previewText;
}
