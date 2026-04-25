import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_flashcard_draft.freezed.dart';

@freezed
class DictionaryFlashcardDraft with _$DictionaryFlashcardDraft {
  const factory DictionaryFlashcardDraft({
    required String front,
    required String back,
    @Default(<String>[]) List<String> tags,
  }) = _DictionaryFlashcardDraft;
}
