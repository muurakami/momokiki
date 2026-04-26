import 'package:flutter/material.dart';

import '../../domain/models/flashcard_card.dart';

class ReviewCardView extends StatelessWidget {
  const ReviewCardView({
    required this.card,
    required this.showAnswer,
    required this.onReveal,
    required this.onRate,
    super.key,
  });

  final FlashcardCard card;
  final bool showAnswer;
  final VoidCallback onReveal;
  final Widget Function() onRate;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(card.frontPlain,
                  style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              if (showAnswer) ...[
                const Divider(),
                const SizedBox(height: 16),
                Text(card.backPlain,
                    style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 20),
                onRate(),
              ] else
                FilledButton(
                    onPressed: onReveal, child: const Text('Show answer')),
            ],
          ),
        ),
      ),
    );
  }
}
