import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../notifiers/apkg_import_notifier.dart';
import '../notifiers/practice_home_notifier.dart';
import '../widgets/deck_list_tile.dart';

class PracticeHomeScreen extends ConsumerWidget {
  const PracticeHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final decksState = ref.watch(practiceHomeNotifierProvider);
    final importState = ref.watch(apkgImportNotifierProvider);

    ref.listen(apkgImportNotifierProvider, (_, next) {
      next.whenOrNull(
        data: (preview) async {
          if (preview == null) {
            return;
          }
          await ref.read(practiceHomeNotifierProvider.notifier).refresh();
          if (!context.mounted) {
            return;
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Imported ${preview.cardCount} cards from .apkg')),
          );
        },
      );
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Flashcards')),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            heroTag: 'import_json',
            onPressed: decksState.isLoading
                ? null
                : () async {
                    final imported = await ref.read(practiceHomeNotifierProvider.notifier).importDeckJson();
                    if (!context.mounted) {
                      return;
                    }
                    if (!imported) {
                      return;
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Deck JSON imported')),
                    );
                  },
            child: const Icon(Icons.upload_file_outlined),
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            heroTag: 'import_apkg',
            onPressed: () => ref.read(apkgImportNotifierProvider.notifier).importFile(),
            icon: const Icon(Icons.file_open_outlined),
            label: const Text('Import .apkg'),
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            heroTag: 'new_deck',
            onPressed: () => context.go('/app/practice/decks/new'),
            icon: const Icon(Icons.add_box_outlined),
            label: const Text('New deck'),
          ),
        ],
      ),
      body: decksState.when(
        data: (decks) => ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: decks.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                child: ListTile(
                  leading: const Icon(Icons.style),
                  title: const Text('Flashcards'),
                  subtitle: const Text('Create decks, import APKG/JSON, and review due cards'),
                  trailing: importState.isLoading ? const CircularProgressIndicator() : null,
                ),
              );
            }
            if (decks.isEmpty) {
              return const Padding(
                padding: EdgeInsets.all(24),
                child: Text('No decks yet. Import a file or create your first deck.'),
              );
            }
            if (index == 1) {
              return const SizedBox(height: 8);
            }
            final deck = decks[index - 2];
            return DeckListTile(
              deck: deck,
              onTap: () => context.go('/app/practice/decks/${deck.id}'),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Failed to load flashcards: $error')),
      ),
    );
  }
}
