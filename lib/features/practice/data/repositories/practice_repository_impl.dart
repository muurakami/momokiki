import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/apkg_import_preview.dart';
import '../../domain/models/flashcard_card.dart';
import '../../domain/models/flashcard_deck.dart';
import '../../domain/models/flashcard_deck_export.dart';
import '../../domain/models/flashcard_review.dart';
import '../../domain/models/review_rating.dart';
import '../../domain/repositories/practice_repository.dart';
import '../../domain/services/anki_scheduler.dart';
import '../datasources/apkg_import_datasource.dart';
import '../datasources/deck_json_file_datasource.dart';
import '../datasources/drift_practice_datasource.dart';

@LazySingleton(as: PracticeRepository)
class PracticeRepositoryImpl implements PracticeRepository {
  PracticeRepositoryImpl(
    this._local,
    this._apkgImport,
    this._scheduler,
  );

  final DriftPracticeDataSource _local;
  final ApkgImportDataSource _apkgImport;
  final AnkiScheduler _scheduler;
  final DeckJsonFileDataSource _deckJsonFiles = const DeckJsonFileDataSource();
  final Random _idRandom = Random();
  int _idCounter = 0;

  @override
  Future<List<FlashcardDeck>> getDecks() => _local.getDecks();

  @override
  Future<FlashcardDeck?> getDeck(String deckId) => _local.getDeck(deckId);

  @override
  Future<List<FlashcardCard>> getCards(String deckId) => _local.getCards(deckId);

  @override
  Future<FlashcardCard?> getCard(String cardId) => _local.getCard(cardId);

  @override
  Future<void> saveDeck(FlashcardDeck deck) {
    final now = DateTime.now();
    return _local.saveDeck(
      deck.copyWith(
        createdAt: deck.createdAt ?? now,
        updatedAt: now,
      ),
    );
  }

  @override
  Future<void> deleteDeck(String deckId) => _local.deleteDeck(deckId);

  @override
  Future<void> saveCard(FlashcardCard card) async {
    final deck = await _local.getDeck(card.deckId);
    if (deck == null) {
      throw StateError('Cannot save card into missing deck: ${card.deckId}');
    }

    final now = DateTime.now();
    final existing = await _local.getCard(card.id);
    await _local.saveCard(
      card.copyWith(
        createdAt: card.createdAt ?? existing?.createdAt ?? now,
        updatedAt: now,
      ),
    );
  }

  @override
  Future<void> deleteCard(String cardId) => _local.deleteCard(cardId);

  @override
  Future<FlashcardCard?> getNextDueCard(String deckId) => _local.getNextDueCard(deckId);

  @override
  Future<void> reviewCard({
    required FlashcardCard card,
    required ReviewRating rating,
    required int elapsedMs,
  }) async {
    final updatedCard = _scheduler.applyReview(card: card, rating: rating);
    final now = DateTime.now();
    await _local.saveReviewedCardAndReview(
      card: updatedCard,
      review: FlashcardReview(
        id: sha1.convert(utf8.encode('${card.id}${now.microsecondsSinceEpoch}')).toString(),
        cardId: card.id,
        reviewedAt: now,
        rating: rating,
        queueBefore: card.queue,
        queueAfter: updatedCard.queue,
        intervalBeforeDays: card.intervalDays,
        intervalAfterDays: updatedCard.intervalDays,
        easeBeforeMilli: card.easeFactorMilli,
        easeAfterMilli: updatedCard.easeFactorMilli,
        elapsedMs: elapsedMs,
      ),
    );
  }

  @override
  Future<ApkgImportPreview> importApkg(String filePath) async {
    final result = await _apkgImport.importApkg(filePath);
    final preview = result.$1;
    final decks = result.$2;
    final cards = result.$3;

    for (final deck in decks) {
      final deckCards = cards.where((card) => card.deckId == deck.id).toList();
      final prepared = await _prepareImportedDeck(
        deck: deck,
        cards: deckCards,
        reviews: const <FlashcardReview>[],
      );
      await _local.importDeck(
        deck: prepared.deck,
        cards: prepared.cards,
        reviews: prepared.reviews,
      );
    }

    return preview;
  }

  @override
  Future<String?> exportDeckToFile(String deckId) async {
    final deck = await _local.getDeck(deckId);
    if (deck == null) {
      return null;
    }

    final export = FlashcardDeckExport(
      schemaVersion: 1,
      deck: deck,
      cards: await _local.getCards(deckId),
      reviews: await _local.getReviewsForDeck(deckId),
      exportedAt: DateTime.now(),
    );
    const encoder = JsonEncoder.withIndent('  ');
    return _deckJsonFiles.saveDeckJson(
      suggestedFileName: '${_safeFileName(deck.name)}.json',
      content: encoder.convert(export.toJson()),
    );
  }

  @override
  Future<FlashcardDeckExport?> importDeckFromFile() async {
    final content = await _deckJsonFiles.pickDeckJson();
    if (content == null) {
      return null;
    }
    return importDeckJson(content);
  }

  @override
  Future<FlashcardDeckExport> importDeckJson(String jsonContent) async {
    final decoded = jsonDecode(jsonContent);
    if (decoded is! Map) {
      throw const FormatException('Deck export must be a JSON object');
    }

    final export = FlashcardDeckExport.fromJson(
      decoded.map((key, value) => MapEntry(key.toString(), value)),
    );
    if (export.schemaVersion != 1) {
      throw FormatException('Unsupported deck export schemaVersion: ${export.schemaVersion}');
    }

    final prepared = await _prepareImportedDeck(
      deck: export.deck,
      cards: export.cards,
      reviews: export.reviews,
    );

    await _local.importDeck(
      deck: prepared.deck,
      cards: prepared.cards,
      reviews: prepared.reviews,
    );

    return FlashcardDeckExport(
      schemaVersion: export.schemaVersion,
      deck: prepared.deck,
      cards: prepared.cards,
      reviews: prepared.reviews,
      exportedAt: export.exportedAt,
    );
  }

  Future<({FlashcardDeck deck, List<FlashcardCard> cards, List<FlashcardReview> reviews})>
      _prepareImportedDeck({
    required FlashcardDeck deck,
    required List<FlashcardCard> cards,
    required List<FlashcardReview> reviews,
  }) async {
    final now = DateTime.now();
    final existingDeck = await _local.getDeck(deck.id);
    final shouldRemapDeck = existingDeck != null;
    final importedDeckId = shouldRemapDeck ? _newId('deck') : deck.id;
    final importedDeck = deck.copyWith(
      id: importedDeckId,
      name: shouldRemapDeck ? '${deck.name} (imported)' : deck.name,
      createdAt: deck.createdAt ?? now,
      updatedAt: now,
    );

    final cardIdMap = <String, String>{};
    final usedCardIds = <String>{};
    final importedCards = <FlashcardCard>[];
    for (final card in cards) {
      final existingCard = await _local.getCard(card.id);
      final shouldRemapCard =
          shouldRemapDeck || existingCard != null || usedCardIds.contains(card.id);
      final importedCardId = shouldRemapCard ? _newId('card') : card.id;
      cardIdMap[card.id] = importedCardId;
      usedCardIds.add(importedCardId);
      importedCards.add(
        card.copyWith(
          id: importedCardId,
          deckId: importedDeckId,
          createdAt: card.createdAt ?? now,
          updatedAt: now,
        ),
      );
    }

    final importedReviews = reviews
        .where((review) => cardIdMap.containsKey(review.cardId))
        .map(
          (review) => review.copyWith(
            id: cardIdMap[review.cardId] == review.cardId ? review.id : _newId('review'),
            cardId: cardIdMap[review.cardId]!,
          ),
        )
        .toList();

    return (deck: importedDeck, cards: importedCards, reviews: importedReviews);
  }

  String _newId(String prefix) {
    _idCounter += 1;
    final source =
        '$prefix-${DateTime.now().microsecondsSinceEpoch}-$_idCounter-${_idRandom.nextInt(1 << 32)}';
    return sha1.convert(utf8.encode(source)).toString();
  }

  String _safeFileName(String name) {
    final cleaned = name.trim().replaceAll(RegExp(r'[^\p{L}\p{N}_-]+', unicode: true), '-');
    if (cleaned.isEmpty) {
      return 'flashcard-deck';
    }
    return cleaned.toLowerCase();
  }
}
