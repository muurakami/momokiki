import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_dictionary_api_phonetic_dto.freezed.dart';
part 'free_dictionary_api_phonetic_dto.g.dart';

@Freezed(fromJson: true, toJson: true)
class FreeDictionaryApiPhoneticDto with _$FreeDictionaryApiPhoneticDto {
  const factory FreeDictionaryApiPhoneticDto({
    String? text,
    @JsonKey(name: 'audio') String? audioUrl,
  }) = _FreeDictionaryApiPhoneticDto;

  factory FreeDictionaryApiPhoneticDto.fromJson(Map<String, Object?> json) =>
      _$FreeDictionaryApiPhoneticDtoFromJson(json);
}
