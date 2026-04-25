import 'package:injectable/injectable.dart';

import '../models/flashcard_card.dart';
import '../models/review_rating.dart';

@lazySingleton
class AnkiScheduler {
  const AnkiScheduler();

  FlashcardCard applyReview({
    required FlashcardCard card,
    required ReviewRating rating,
  }) {
    final now = DateTime.now();

    return switch (rating) {
      ReviewRating.again => card.copyWith(
          queue: 'relearn',
          remainingSteps: 1,
          learningStepIndex: 0,
          dueAt: now.add(const Duration(minutes: 1)),
          lapses: card.lapses + 1,
          updatedAt: now,
          lastReviewedAt: now,
        ),
      ReviewRating.hard => card.copyWith(
          queue: 'review',
          intervalDays: (card.intervalDays <= 1 ? 2 : card.intervalDays + 1),
          dueDay: _dueDay(now, card.intervalDays <= 1 ? 2 : card.intervalDays + 1),
          reps: card.reps + 1,
          updatedAt: now,
          lastReviewedAt: now,
        ),
      ReviewRating.good => card.copyWith(
          queue: 'review',
          intervalDays: (card.intervalDays <= 1 ? 3 : card.intervalDays * 2),
          dueDay: _dueDay(now, card.intervalDays <= 1 ? 3 : card.intervalDays * 2),
          reps: card.reps + 1,
          updatedAt: now,
          lastReviewedAt: now,
        ),
      ReviewRating.easy => card.copyWith(
          queue: 'review',
          intervalDays: (card.intervalDays <= 1 ? 5 : card.intervalDays * 3),
          dueDay: _dueDay(now, card.intervalDays <= 1 ? 5 : card.intervalDays * 3),
          reps: card.reps + 1,
          easeFactorMilli: card.easeFactorMilli + 150,
          updatedAt: now,
          lastReviewedAt: now,
        ),
    };
  }

  int _dueDay(DateTime now, int intervalDays) {
    return now.add(Duration(days: intervalDays)).millisecondsSinceEpoch;
  }
}
