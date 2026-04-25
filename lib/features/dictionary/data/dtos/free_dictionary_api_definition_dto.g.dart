// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_dictionary_api_definition_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreeDictionaryApiDefinitionDtoImpl
    _$$FreeDictionaryApiDefinitionDtoImplFromJson(Map<String, dynamic> json) =>
        _$FreeDictionaryApiDefinitionDtoImpl(
          definition: json['definition'] as String,
          example: json['example'] as String?,
          synonyms: (json['synonyms'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
        );

Map<String, dynamic> _$$FreeDictionaryApiDefinitionDtoImplToJson(
        _$FreeDictionaryApiDefinitionDtoImpl instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'example': instance.example,
      'synonyms': instance.synonyms,
    };
