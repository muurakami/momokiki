import 'flashcard_card.dart';
import 'flashcard_deck.dart';
import 'flashcard_review.dart';

class FlashcardDeckExport {
  const FlashcardDeckExport({
    required this.schemaVersion,
    required this.deck,
    required this.cards,
    required this.reviews,
    required this.exportedAt,
  });

  final int schemaVersion;
  final FlashcardDeck deck;
  final List<FlashcardCard> cards;
  final List<FlashcardReview> reviews;
  final DateTime exportedAt;

  Map<String, Object?> toJson() => <String, Object?>{
        'schemaVersion': schemaVersion,
        'deck': deck.toJson(),
        'cards': cards.map((card) => card.toJson()).toList(),
        'reviews': reviews.map((review) => review.toJson()).toList(),
        'exportedAt': exportedAt.toIso8601String(),
      };

  factory FlashcardDeckExport.fromJson(Map<String, Object?> json) {
    final deckJson = _asMap(json['deck'], 'deck');
    final cardsJson = _asList(json['cards'], 'cards');
    final reviewsJson = json['reviews'] == null
        ? const <Object?>[]
        : _asList(json['reviews'], 'reviews');
    final exportedAtValue = json['exportedAt'];

    return FlashcardDeckExport(
      schemaVersion: _asInt(json['schemaVersion'], 'schemaVersion'),
      deck: FlashcardDeck.fromJson(deckJson),
      cards: cardsJson
          .map((item) => FlashcardCard.fromJson(_asMap(item, 'cards[]')))
          .toList(),
      reviews: reviewsJson
          .map((item) => FlashcardReview.fromJson(_asMap(item, 'reviews[]')))
          .toList(),
      exportedAt: exportedAtValue is String
          ? DateTime.parse(exportedAtValue)
          : DateTime.now(),
    );
  }
}

Map<String, Object?> _asMap(Object? value, String field) {
  if (value is Map<String, Object?>) {
    return value;
  }
  if (value is Map) {
    return value.map((key, item) => MapEntry(key.toString(), item));
  }
  throw FormatException('Invalid $field in deck export');
}

List<Object?> _asList(Object? value, String field) {
  if (value is List<Object?>) {
    return value;
  }
  if (value is List) {
    return value.cast<Object?>();
  }
  throw FormatException('Invalid $field in deck export');
}

int _asInt(Object? value, String field) {
  if (value is int) {
    return value;
  }
  throw FormatException('Invalid $field in deck export');
}
