import 'package:freezed_annotation/freezed_annotation.dart';

import 'dictionary_language.dart';

part 'dictionary_entry.freezed.dart';
part 'dictionary_entry.g.dart';

@Freezed(fromJson: true, toJson: true, unionKey: 'type')
sealed class DictionaryEntry with _$DictionaryEntry {
  const DictionaryEntry._();

  const factory DictionaryEntry.japanese({
    required String entryId,
    @Default(<DictionaryJapaneseForm>[]) List<DictionaryJapaneseForm> forms,
    @Default(<DictionaryJapaneseSense>[]) List<DictionaryJapaneseSense> senses,
    @Default(false) bool isCommon,
    @Default('jmdict') String source,
  }) = DictionaryJapaneseEntry;

  const factory DictionaryEntry.english({
    required String word,
    String? phonetic,
    @Default(<DictionaryEnglishPhonetic>[]) List<DictionaryEnglishPhonetic> phonetics,
    @Default(<DictionaryEnglishMeaning>[]) List<DictionaryEnglishMeaning> meanings,
    @Default('free_dictionary_api') String source,
  }) = DictionaryEnglishEntry;

  factory DictionaryEntry.fromJson(Map<String, Object?> json) =>
      _$DictionaryEntryFromJson(json);

  DictionaryLanguage get language => map(
        japanese: (_) => DictionaryLanguage.japanese,
        english: (_) => DictionaryLanguage.english,
      );

  String get favoriteId => map(
        japanese: (entry) => 'ja:${entry.entryId}',
        english: (entry) => 'en:${entry.word.toLowerCase()}',
      );

  String get entryKey => map(
        japanese: (entry) => entry.entryId,
        english: (entry) => entry.word.toLowerCase(),
      );

  String get title => map(
        japanese: (entry) => entry.primaryForm.text,
        english: (entry) => entry.word,
      );

  String? get subtitle => map(
        japanese: (entry) {
          final reading = entry.primaryForm.reading;
          if (reading.isEmpty || reading == entry.primaryForm.text) {
            return null;
          }
          return reading;
        },
        english: (entry) => entry.phonetic,
      );

  String get previewText => map(
        japanese: (entry) => entry.senses
            .expand((sense) => sense.glosses)
            .take(3)
            .join(', '),
        english: (entry) => entry.meanings
            .expand((meaning) => meaning.definitions)
            .map((definition) => definition.definition)
            .take(2)
            .join(' | '),
      );
}

@Freezed(fromJson: true, toJson: true)
class DictionaryJapaneseForm with _$DictionaryJapaneseForm {
  const factory DictionaryJapaneseForm({
    required String text,
    required String reading,
    required String romaji,
    @Default(false) bool isPrimary,
    @Default(false) bool isCommon,
    @Default(false) bool isKanji,
  }) = _DictionaryJapaneseForm;

  factory DictionaryJapaneseForm.fromJson(Map<String, Object?> json) =>
      _$DictionaryJapaneseFormFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class DictionaryJapaneseSense with _$DictionaryJapaneseSense {
  const factory DictionaryJapaneseSense({
    @Default(<String>[]) List<String> partsOfSpeech,
    @Default(<String>[]) List<String> glosses,
  }) = _DictionaryJapaneseSense;

  factory DictionaryJapaneseSense.fromJson(Map<String, Object?> json) =>
      _$DictionaryJapaneseSenseFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class DictionaryEnglishPhonetic with _$DictionaryEnglishPhonetic {
  const factory DictionaryEnglishPhonetic({
    String? text,
    String? audioUrl,
  }) = _DictionaryEnglishPhonetic;

  factory DictionaryEnglishPhonetic.fromJson(Map<String, Object?> json) =>
      _$DictionaryEnglishPhoneticFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class DictionaryEnglishMeaning with _$DictionaryEnglishMeaning {
  const factory DictionaryEnglishMeaning({
    required String partOfSpeech,
    @Default(<DictionaryEnglishDefinition>[]) List<DictionaryEnglishDefinition> definitions,
  }) = _DictionaryEnglishMeaning;

  factory DictionaryEnglishMeaning.fromJson(Map<String, Object?> json) =>
      _$DictionaryEnglishMeaningFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class DictionaryEnglishDefinition with _$DictionaryEnglishDefinition {
  const factory DictionaryEnglishDefinition({
    required String definition,
    String? example,
    @Default(<String>[]) List<String> synonyms,
  }) = _DictionaryEnglishDefinition;

  factory DictionaryEnglishDefinition.fromJson(Map<String, Object?> json) =>
      _$DictionaryEnglishDefinitionFromJson(json);
}

extension DictionaryJapaneseEntryX on DictionaryJapaneseEntry {
  DictionaryJapaneseForm get primaryForm {
    if (forms.isEmpty) {
      return const DictionaryJapaneseForm(text: '', reading: '', romaji: '');
    }
    return forms.firstWhere(
      (form) => form.isPrimary,
      orElse: () => forms.first,
    );
  }
}
