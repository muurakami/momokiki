import 'package:flutter/material.dart';

import '../../domain/models/flashcard_deck.dart';

class DeckListTile extends StatelessWidget {
  const DeckListTile({
    required this.deck,
    required this.onTap,
    super.key,
  });

  final FlashcardDeck deck;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.style_outlined),
        title: Text(deck.name),
        subtitle: Text(deck.description ?? '${deck.newCount} new • ${deck.reviewCount} review'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Due ${deck.dueCount}'),
            Text('${deck.newCount} new'),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
