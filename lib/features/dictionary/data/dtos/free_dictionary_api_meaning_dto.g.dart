// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_dictionary_api_meaning_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreeDictionaryApiMeaningDtoImpl _$$FreeDictionaryApiMeaningDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FreeDictionaryApiMeaningDtoImpl(
      partOfSpeech: json['partOfSpeech'] as String,
      definitions: (json['definitions'] as List<dynamic>?)
              ?.map((e) => FreeDictionaryApiDefinitionDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <FreeDictionaryApiDefinitionDto>[],
    );

Map<String, dynamic> _$$FreeDictionaryApiMeaningDtoImplToJson(
        _$FreeDictionaryApiMeaningDtoImpl instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
    };
