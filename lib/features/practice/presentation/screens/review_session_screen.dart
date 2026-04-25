import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/review_rating.dart';
import '../notifiers/review_session_notifier.dart';
import '../widgets/review_card_view.dart';

class ReviewSessionScreen extends ConsumerWidget {
  const ReviewSessionScreen({required this.deckId, super.key});

  final String deckId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(reviewSessionNotifierProvider(deckId));

    return Scaffold(
      appBar: AppBar(title: const Text('Review Session')),
      body: state.when(
        data: (value) {
          final card = value.currentCard;
          if (card == null) {
            return Center(
              child: Text('Session complete. Reviewed ${value.reviewedCount} cards.'),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(16),
            child: ReviewCardView(
              card: card,
              showAnswer: value.showAnswer,
              onReveal: () => ref.read(reviewSessionNotifierProvider(deckId).notifier).reveal(),
              onRate: () => Wrap(
                spacing: 8,
                children: [
                  for (final rating in ReviewRating.values)
                    FilledButton.tonal(
                      onPressed: () => ref
                          .read(reviewSessionNotifierProvider(deckId).notifier)
                          .rate(deckId: deckId, rating: rating),
                      child: Text(rating.name),
                    ),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Failed to start review: $error')),
      ),
    );
  }
}
