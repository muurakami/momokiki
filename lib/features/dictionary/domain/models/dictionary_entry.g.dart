// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryJapaneseEntryImpl _$$DictionaryJapaneseEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryJapaneseEntryImpl(
      entryId: json['entryId'] as String,
      forms: (json['forms'] as List<dynamic>?)
              ?.map((e) =>
                  DictionaryJapaneseForm.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DictionaryJapaneseForm>[],
      senses: (json['senses'] as List<dynamic>?)
              ?.map((e) =>
                  DictionaryJapaneseSense.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DictionaryJapaneseSense>[],
      isCommon: json['isCommon'] as bool? ?? false,
      source: json['source'] as String? ?? 'jmdict',
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DictionaryJapaneseEntryImplToJson(
        _$DictionaryJapaneseEntryImpl instance) =>
    <String, dynamic>{
      'entryId': instance.entryId,
      'forms': instance.forms,
      'senses': instance.senses,
      'isCommon': instance.isCommon,
      'source': instance.source,
      'type': instance.$type,
    };

_$DictionaryEnglishEntryImpl _$$DictionaryEnglishEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryEnglishEntryImpl(
      word: json['word'] as String,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>?)
              ?.map((e) =>
                  DictionaryEnglishPhonetic.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DictionaryEnglishPhonetic>[],
      meanings: (json['meanings'] as List<dynamic>?)
              ?.map((e) =>
                  DictionaryEnglishMeaning.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DictionaryEnglishMeaning>[],
      source: json['source'] as String? ?? 'free_dictionary_api',
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DictionaryEnglishEntryImplToJson(
        _$DictionaryEnglishEntryImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics,
      'meanings': instance.meanings,
      'source': instance.source,
      'type': instance.$type,
    };

_$DictionaryJapaneseFormImpl _$$DictionaryJapaneseFormImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryJapaneseFormImpl(
      text: json['text'] as String,
      reading: json['reading'] as String,
      romaji: json['romaji'] as String,
      isPrimary: json['isPrimary'] as bool? ?? false,
      isCommon: json['isCommon'] as bool? ?? false,
      isKanji: json['isKanji'] as bool? ?? false,
    );

Map<String, dynamic> _$$DictionaryJapaneseFormImplToJson(
        _$DictionaryJapaneseFormImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'reading': instance.reading,
      'romaji': instance.romaji,
      'isPrimary': instance.isPrimary,
      'isCommon': instance.isCommon,
      'isKanji': instance.isKanji,
    };

_$DictionaryJapaneseSenseImpl _$$DictionaryJapaneseSenseImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryJapaneseSenseImpl(
      partsOfSpeech: (json['partsOfSpeech'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      glosses: (json['glosses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$DictionaryJapaneseSenseImplToJson(
        _$DictionaryJapaneseSenseImpl instance) =>
    <String, dynamic>{
      'partsOfSpeech': instance.partsOfSpeech,
      'glosses': instance.glosses,
    };

_$DictionaryEnglishPhoneticImpl _$$DictionaryEnglishPhoneticImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryEnglishPhoneticImpl(
      text: json['text'] as String?,
      audioUrl: json['audioUrl'] as String?,
    );

Map<String, dynamic> _$$DictionaryEnglishPhoneticImplToJson(
        _$DictionaryEnglishPhoneticImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'audioUrl': instance.audioUrl,
    };

_$DictionaryEnglishMeaningImpl _$$DictionaryEnglishMeaningImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryEnglishMeaningImpl(
      partOfSpeech: json['partOfSpeech'] as String,
      definitions: (json['definitions'] as List<dynamic>?)
              ?.map((e) => DictionaryEnglishDefinition.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <DictionaryEnglishDefinition>[],
    );

Map<String, dynamic> _$$DictionaryEnglishMeaningImplToJson(
        _$DictionaryEnglishMeaningImpl instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
    };

_$DictionaryEnglishDefinitionImpl _$$DictionaryEnglishDefinitionImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryEnglishDefinitionImpl(
      definition: json['definition'] as String,
      example: json['example'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$DictionaryEnglishDefinitionImplToJson(
        _$DictionaryEnglishDefinitionImpl instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'example': instance.example,
      'synonyms': instance.synonyms,
    };
