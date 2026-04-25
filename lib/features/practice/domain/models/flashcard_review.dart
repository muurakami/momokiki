import 'package:freezed_annotation/freezed_annotation.dart';

import 'review_rating.dart';

part 'flashcard_review.freezed.dart';
part 'flashcard_review.g.dart';

@Freezed(fromJson: true, toJson: true)
class FlashcardReview with _$FlashcardReview {
  const factory FlashcardReview({
    required String id,
    required String cardId,
    required DateTime reviewedAt,
    required ReviewRating rating,
    required String queueBefore,
    required String queueAfter,
    @Default(0) int intervalBeforeDays,
    @Default(0) int intervalAfterDays,
    @Default(2500) int easeBeforeMilli,
    @Default(2500) int easeAfterMilli,
    int? elapsedMs,
  }) = _FlashcardReview;

  factory FlashcardReview.fromJson(Map<String, Object?> json) =>
      _$FlashcardReviewFromJson(json);
}
