import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/models/flashcard_card.dart';
import '../../domain/models/review_rating.dart';
import '../../domain/repositories/practice_repository.dart';

part 'review_session_notifier.g.dart';

class ReviewSessionState {
  const ReviewSessionState({
    this.currentCard,
    this.showAnswer = false,
    this.reviewedCount = 0,
  });

  final FlashcardCard? currentCard;
  final bool showAnswer;
  final int reviewedCount;
}

@riverpod
class ReviewSessionNotifier extends _$ReviewSessionNotifier {
  PracticeRepository get _repository => getIt<PracticeRepository>();

  @override
  Future<ReviewSessionState> build(String deckId) async {
    final card = await _repository.getNextDueCard(deckId);
    return ReviewSessionState(currentCard: card);
  }

  Future<void> reveal() async {
    final value = state.valueOrNull;
    if (value == null) {
      return;
    }
    state = AsyncData(ReviewSessionState(
      currentCard: value.currentCard,
      showAnswer: true,
      reviewedCount: value.reviewedCount,
    ));
  }

  Future<void> rate({
    required String deckId,
    required ReviewRating rating,
  }) async {
    final value = state.valueOrNull;
    final card = value?.currentCard;
    if (value == null || card == null) {
      return;
    }

    await _repository.reviewCard(card: card, rating: rating, elapsedMs: 0);
    final nextCard = await _repository.getNextDueCard(deckId);
    state = AsyncData(ReviewSessionState(
      currentCard: nextCard,
      reviewedCount: value.reviewedCount + 1,
    ));
  }
}
