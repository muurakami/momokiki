// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryFavoriteImpl _$$DictionaryFavoriteImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryFavoriteImpl(
      id: json['id'] as String,
      entryKey: json['entryKey'] as String,
      language: $enumDecode(_$DictionaryLanguageEnumMap, json['language']),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      entry: DictionaryEntry.fromJson(json['entry'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$DictionaryFavoriteImplToJson(
        _$DictionaryFavoriteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entryKey': instance.entryKey,
      'language': _$DictionaryLanguageEnumMap[instance.language]!,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'entry': instance.entry,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$DictionaryLanguageEnumMap = {
  DictionaryLanguage.japanese: 'japanese',
  DictionaryLanguage.english: 'english',
};
