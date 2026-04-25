import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_dictionary_api_definition_dto.freezed.dart';
part 'free_dictionary_api_definition_dto.g.dart';

@Freezed(fromJson: true, toJson: true)
class FreeDictionaryApiDefinitionDto with _$FreeDictionaryApiDefinitionDto {
  const factory FreeDictionaryApiDefinitionDto({
    required String definition,
    String? example,
    @Default(<String>[]) List<String> synonyms,
  }) = _FreeDictionaryApiDefinitionDto;

  factory FreeDictionaryApiDefinitionDto.fromJson(Map<String, Object?> json) =>
      _$FreeDictionaryApiDefinitionDtoFromJson(json);
}
