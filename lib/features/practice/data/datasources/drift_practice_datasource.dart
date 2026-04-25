import 'dart:convert';

import 'package:drift/drift.dart' as drift;
import 'package:injectable/injectable.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/models/flashcard_card.dart';
import '../../domain/models/flashcard_deck.dart';
import '../../domain/models/flashcard_review.dart';
import '../../domain/models/review_rating.dart';

@lazySingleton
class DriftPracticeDataSource {
  DriftPracticeDataSource(this._database);

  final AppDatabase _database;

  Future<List<FlashcardDeck>> getDecks() async {
    final deckRows = await _database.select(_database.practiceDeckTable).get();
    final cardRows = await _database.select(_database.practiceCardTable).get();

    return deckRows
        .map(
          (deck) {
            final deckCards = cardRows.where((card) => card.deckId == deck.id).toList();
            return FlashcardDeck(
              id: deck.id,
              name: deck.name,
              description: deck.description,
              sourceType: deck.sourceType,
              ankiDeckId: deck.ankiDeckId,
              maxNewPerDay: deck.maxNewPerDay,
              maxReviewsPerDay: deck.maxReviewsPerDay,
              dueCount: deckCards.where((card) => card.queue != 'new').length,
              newCount: deckCards.where((card) => card.queue == 'new').length,
              reviewCount: deckCards.where((card) => card.queue == 'review').length,
              createdAt: deck.createdAt,
              updatedAt: deck.updatedAt,
            );
          },
        )
        .toList();
  }

  Future<FlashcardDeck?> getDeck(String deckId) async {
    final row = await (_database.select(_database.practiceDeckTable)
          ..where((tbl) => tbl.id.equals(deckId)))
        .getSingleOrNull();
    if (row == null) {
      return null;
    }

    return FlashcardDeck(
      id: row.id,
      name: row.name,
      description: row.description,
      sourceType: row.sourceType,
      ankiDeckId: row.ankiDeckId,
      maxNewPerDay: row.maxNewPerDay,
      maxReviewsPerDay: row.maxReviewsPerDay,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    );
  }

  Future<List<FlashcardCard>> getCards(String deckId) async {
    final rows = await (_database.select(_database.practiceCardTable)
          ..where((tbl) => tbl.deckId.equals(deckId))
          ..orderBy([(tbl) => drift.OrderingTerm.asc(tbl.createdAt)]))
        .get();

    return rows
        .map(_mapCard)
        .toList();
  }

  Future<FlashcardCard?> getCard(String cardId) async {
    final row = await (_database.select(_database.practiceCardTable)
          ..where((tbl) => tbl.id.equals(cardId)))
        .getSingleOrNull();
    if (row == null) {
      return null;
    }
    return _mapCard(row);
  }

  Future<void> saveDeck(FlashcardDeck deck) async {
    final now = DateTime.now();
    await _database.into(_database.practiceDeckTable).insertOnConflictUpdate(
          PracticeDeckTableCompanion.insert(
            id: deck.id,
            name: deck.name,
            description: drift.Value(deck.description),
            sourceType: drift.Value(deck.sourceType),
            ankiDeckId: drift.Value(deck.ankiDeckId),
            maxNewPerDay: drift.Value(deck.maxNewPerDay),
            maxReviewsPerDay: drift.Value(deck.maxReviewsPerDay),
            createdAt: drift.Value(deck.createdAt ?? now),
            updatedAt: drift.Value(deck.updatedAt ?? now),
          ),
        );
  }

  Future<void> deleteDeck(String deckId) async {
    await _database.transaction(() async {
      final cardRows = await (_database.select(_database.practiceCardTable)
            ..where((tbl) => tbl.deckId.equals(deckId)))
          .get();
      final cardIds = cardRows.map((card) => card.id).toList();

      if (cardIds.isNotEmpty) {
        await (_database.delete(_database.practiceCardMediaTable)
              ..where((tbl) => tbl.cardId.isIn(cardIds)))
            .go();
        await (_database.delete(_database.practiceReviewTable)
              ..where((tbl) => tbl.cardId.isIn(cardIds)))
            .go();
        await (_database.delete(_database.practiceCardTable)
              ..where((tbl) => tbl.id.isIn(cardIds)))
            .go();
      }

      await (_database.delete(_database.practiceDeckTable)
            ..where((tbl) => tbl.id.equals(deckId)))
          .go();
    });
  }

  Future<void> saveCard(FlashcardCard card) async {
    final now = DateTime.now();
    await _database.into(_database.practiceCardTable).insertOnConflictUpdate(
          PracticeCardTableCompanion.insert(
            id: card.id,
            deckId: card.deckId,
            frontHtml: card.frontHtml,
            backHtml: card.backHtml,
            frontPlain: card.frontPlain,
            backPlain: card.backPlain,
            queue: drift.Value(card.queue),
            dueAt: drift.Value(card.dueAt),
            dueDay: drift.Value(card.dueDay),
            intervalDays: drift.Value(card.intervalDays),
            easeFactorMilli: drift.Value(card.easeFactorMilli),
            reps: drift.Value(card.reps),
            lapses: drift.Value(card.lapses),
            remainingSteps: drift.Value(card.remainingSteps),
            learningStepIndex: drift.Value(card.learningStepIndex),
            lastReviewedAt: drift.Value(card.lastReviewedAt),
            isLeech: drift.Value(card.isLeech),
            tagsJson: drift.Value(jsonEncode(card.tags)),
            createdAt: drift.Value(card.createdAt ?? now),
            updatedAt: drift.Value(card.updatedAt ?? now),
          ),
        );
  }

  Future<void> deleteCard(String cardId) async {
    await (_database.delete(_database.practiceCardTable)
          ..where((tbl) => tbl.id.equals(cardId)))
        .go();
  }

  Future<FlashcardCard?> getNextDueCard(String deckId) async {
    final now = DateTime.now();
    final nowMs = now.millisecondsSinceEpoch;
    final rows = await (_database.select(_database.practiceCardTable)
          ..where((tbl) => tbl.deckId.equals(deckId))
          ..orderBy([
            (tbl) => drift.OrderingTerm.asc(tbl.dueAt),
            (tbl) => drift.OrderingTerm.asc(tbl.createdAt),
          ]))
        .get();

    final dueRows = rows.where((row) {
      if (row.queue == 'new') {
        return true;
      }
      if (row.queue != 'review' && row.queue != 'relearn') {
        return false;
      }
      if (row.dueAt != null) {
        return !row.dueAt!.isAfter(now);
      }
      if (row.dueDay != null) {
        return row.dueDay! <= nowMs;
      }
      return true;
    }).toList();

    dueRows.sort((a, b) {
      final aDue = a.queue == 'new' ? 1 : 0;
      final bDue = b.queue == 'new' ? 1 : 0;
      if (aDue != bDue) {
        return aDue.compareTo(bDue);
      }
      return a.createdAt.compareTo(b.createdAt);
    });

    final row = dueRows.isEmpty ? null : dueRows.first;

    if (row == null) {
      return null;
    }

    return _mapCard(row);
  }

  Future<void> saveReview(FlashcardReview review) async {
    await _database.into(_database.practiceReviewTable).insertOnConflictUpdate(
          PracticeReviewTableCompanion.insert(
            id: review.id,
            cardId: review.cardId,
            reviewedAt: review.reviewedAt,
            rating: review.rating.name,
            queueBefore: review.queueBefore,
            queueAfter: review.queueAfter,
            intervalBeforeDays: drift.Value(review.intervalBeforeDays),
            intervalAfterDays: drift.Value(review.intervalAfterDays),
            easeBeforeMilli: drift.Value(review.easeBeforeMilli),
            easeAfterMilli: drift.Value(review.easeAfterMilli),
            elapsedMs: drift.Value(review.elapsedMs),
          ),
        );
  }

  Future<void> saveReviewedCardAndReview({
    required FlashcardCard card,
    required FlashcardReview review,
  }) async {
    await _database.transaction(() async {
      await saveCard(card);
      await saveReview(review);
    });
  }

  Future<List<FlashcardReview>> getReviewsForDeck(String deckId) async {
    final cardRows = await (_database.select(_database.practiceCardTable)
          ..where((tbl) => tbl.deckId.equals(deckId)))
        .get();
    final cardIds = cardRows.map((card) => card.id).toList();
    if (cardIds.isEmpty) {
      return const <FlashcardReview>[];
    }

    final rows = await (_database.select(_database.practiceReviewTable)
          ..where((tbl) => tbl.cardId.isIn(cardIds))
          ..orderBy([(tbl) => drift.OrderingTerm.asc(tbl.reviewedAt)]))
        .get();

    return rows
        .map(
          (row) => FlashcardReview(
            id: row.id,
            cardId: row.cardId,
            reviewedAt: row.reviewedAt,
            rating: ReviewRating.values.firstWhere(
              (rating) => rating.name == row.rating,
              orElse: () => ReviewRating.good,
            ),
            queueBefore: row.queueBefore,
            queueAfter: row.queueAfter,
            intervalBeforeDays: row.intervalBeforeDays,
            intervalAfterDays: row.intervalAfterDays,
            easeBeforeMilli: row.easeBeforeMilli,
            easeAfterMilli: row.easeAfterMilli,
            elapsedMs: row.elapsedMs,
          ),
        )
        .toList();
  }

  Future<void> importDeck({
    required FlashcardDeck deck,
    required List<FlashcardCard> cards,
    required List<FlashcardReview> reviews,
  }) async {
    await _database.transaction(() async {
      await saveDeck(deck);
      for (final card in cards) {
        await saveCard(card);
      }
      for (final review in reviews) {
        await saveReview(review);
      }
    });
  }

  FlashcardCard _mapCard(PracticeCardTableData row) {
    final decodedTags = jsonDecode(row.tagsJson);
    final tags = decodedTags is List
        ? decodedTags.map((item) => item.toString()).toList()
        : const <String>[];

    return FlashcardCard(
      id: row.id,
      deckId: row.deckId,
      frontHtml: row.frontHtml,
      backHtml: row.backHtml,
      frontPlain: row.frontPlain,
      backPlain: row.backPlain,
      queue: row.queue,
      dueAt: row.dueAt,
      dueDay: row.dueDay,
      intervalDays: row.intervalDays,
      easeFactorMilli: row.easeFactorMilli,
      reps: row.reps,
      lapses: row.lapses,
      remainingSteps: row.remainingSteps,
      learningStepIndex: row.learningStepIndex,
      lastReviewedAt: row.lastReviewedAt,
      isLeech: row.isLeech,
      tags: tags,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    );
  }
}
