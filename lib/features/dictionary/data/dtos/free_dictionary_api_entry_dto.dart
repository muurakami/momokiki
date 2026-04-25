import 'package:freezed_annotation/freezed_annotation.dart';

import 'free_dictionary_api_meaning_dto.dart';
import 'free_dictionary_api_phonetic_dto.dart';

part 'free_dictionary_api_entry_dto.freezed.dart';
part 'free_dictionary_api_entry_dto.g.dart';

@Freezed(fromJson: true, toJson: true)
class FreeDictionaryApiEntryDto with _$FreeDictionaryApiEntryDto {
  const factory FreeDictionaryApiEntryDto({
    required String word,
    String? phonetic,
    @Default(<FreeDictionaryApiPhoneticDto>[]) List<FreeDictionaryApiPhoneticDto> phonetics,
    @Default(<FreeDictionaryApiMeaningDto>[]) List<FreeDictionaryApiMeaningDto> meanings,
  }) = _FreeDictionaryApiEntryDto;

  factory FreeDictionaryApiEntryDto.fromJson(Map<String, Object?> json) =>
      _$FreeDictionaryApiEntryDtoFromJson(json);
}
