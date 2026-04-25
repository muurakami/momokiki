// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_dictionary_api_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreeDictionaryApiEntryDtoImpl _$$FreeDictionaryApiEntryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FreeDictionaryApiEntryDtoImpl(
      word: json['word'] as String,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>?)
              ?.map((e) => FreeDictionaryApiPhoneticDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <FreeDictionaryApiPhoneticDto>[],
      meanings: (json['meanings'] as List<dynamic>?)
              ?.map((e) => FreeDictionaryApiMeaningDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <FreeDictionaryApiMeaningDto>[],
    );

Map<String, dynamic> _$$FreeDictionaryApiEntryDtoImplToJson(
        _$FreeDictionaryApiEntryDtoImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics,
      'meanings': instance.meanings,
    };
