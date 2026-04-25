import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../notifiers/deck_detail_notifier.dart';

class DeckDetailScreen extends ConsumerWidget {
  const DeckDetailScreen({required this.deckId, super.key});

  final String deckId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(deckDetailNotifierProvider(deckId));

    return Scaffold(
      appBar: AppBar(title: const Text('Deck')),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            heroTag: 'review_deck',
            onPressed: () => context.go('/app/practice/decks/$deckId/review'),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Start review'),
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            heroTag: 'add_card',
            onPressed: () => context.go('/app/practice/decks/$deckId/cards/new'),
            icon: const Icon(Icons.add),
            label: const Text('Add card'),
          ),
        ],
      ),
      body: state.when(
        data: (value) => ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: value.cards.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(value.deck?.name ?? 'Deck'),
                        subtitle: Text(value.deck?.description ?? '${value.cards.length} cards'),
                      ),
                      Wrap(
                        spacing: 8,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () => context.go('/app/practice/decks/$deckId/edit'),
                            icon: const Icon(Icons.edit_outlined),
                            label: const Text('Edit'),
                          ),
                          OutlinedButton.icon(
                            onPressed: () => _exportDeck(context, ref),
                            icon: const Icon(Icons.download_outlined),
                            label: const Text('Export JSON'),
                          ),
                          OutlinedButton.icon(
                            onPressed: () => _confirmDelete(context, ref),
                            icon: const Icon(Icons.delete_outline),
                            label: const Text('Delete'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
            if (index == 1) {
              return const SizedBox(height: 12);
            }
            final card = value.cards[index - 2];
            return Card(
              child: ListTile(
                title: Text(card.frontPlain),
                subtitle: Text(card.backPlain),
                trailing: IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => context.go('/app/practice/cards/${card.id}/edit?deckId=$deckId'),
                ),
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Failed to load deck: $error')),
      ),
    );
  }

  Future<void> _exportDeck(BuildContext context, WidgetRef ref) async {
    final path = await ref.read(deckDetailNotifierProvider(deckId).notifier).exportDeck(deckId);
    if (!context.mounted) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(path == null ? 'Deck not found' : 'Deck exported to $path')),
    );
  }

  Future<void> _confirmDelete(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete deck?'),
        content: const Text('This deletes the deck, cards, and review history.'),
        actions: [
          TextButton(onPressed: () => context.pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => context.pop(true), child: const Text('Delete')),
        ],
      ),
    );
    if (confirmed != true) {
      return;
    }

    await ref.read(deckDetailNotifierProvider(deckId).notifier).deleteDeck(deckId);
    if (!context.mounted) {
      return;
    }
    context.go('/app/practice');
  }
}
