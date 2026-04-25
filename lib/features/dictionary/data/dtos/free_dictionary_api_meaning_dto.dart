import 'package:freezed_annotation/freezed_annotation.dart';

import 'free_dictionary_api_definition_dto.dart';

part 'free_dictionary_api_meaning_dto.freezed.dart';
part 'free_dictionary_api_meaning_dto.g.dart';

@Freezed(fromJson: true, toJson: true)
class FreeDictionaryApiMeaningDto with _$FreeDictionaryApiMeaningDto {
  const factory FreeDictionaryApiMeaningDto({
    required String partOfSpeech,
    @Default(<FreeDictionaryApiDefinitionDto>[]) List<FreeDictionaryApiDefinitionDto> definitions,
  }) = _FreeDictionaryApiMeaningDto;

  factory FreeDictionaryApiMeaningDto.fromJson(Map<String, Object?> json) =>
      _$FreeDictionaryApiMeaningDtoFromJson(json);
}
