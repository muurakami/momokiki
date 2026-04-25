import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_card.freezed.dart';
part 'flashcard_card.g.dart';

@Freezed(fromJson: true, toJson: true)
class FlashcardCard with _$FlashcardCard {
  const factory FlashcardCard({
    required String id,
    required String deckId,
    required String frontHtml,
    required String backHtml,
    required String frontPlain,
    required String backPlain,
    @Default('new') String queue,
    DateTime? dueAt,
    int? dueDay,
    @Default(0) int intervalDays,
    @Default(2500) int easeFactorMilli,
    @Default(0) int reps,
    @Default(0) int lapses,
    @Default(0) int remainingSteps,
    @Default(0) int learningStepIndex,
    DateTime? lastReviewedAt,
    @Default(false) bool isLeech,
    @Default(<String>[]) List<String> tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _FlashcardCard;

  factory FlashcardCard.fromJson(Map<String, Object?> json) =>
      _$FlashcardCardFromJson(json);
}
