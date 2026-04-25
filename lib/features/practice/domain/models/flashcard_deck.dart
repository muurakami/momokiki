import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_deck.freezed.dart';
part 'flashcard_deck.g.dart';

@Freezed(fromJson: true, toJson: true)
class FlashcardDeck with _$FlashcardDeck {
  const factory FlashcardDeck({
    required String id,
    required String name,
    String? description,
    @Default('manual') String sourceType,
    int? ankiDeckId,
    @Default(20) int maxNewPerDay,
    @Default(200) int maxReviewsPerDay,
    @Default(0) int dueCount,
    @Default(0) int newCount,
    @Default(0) int reviewCount,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _FlashcardDeck;

  factory FlashcardDeck.fromJson(Map<String, Object?> json) =>
      _$FlashcardDeckFromJson(json);
}
