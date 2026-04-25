import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../notifiers/deck_editor_notifier.dart';

class DeckEditorScreen extends ConsumerStatefulWidget {
  const DeckEditorScreen({this.deckId, super.key});

  final String? deckId;

  @override
  ConsumerState<DeckEditorScreen> createState() => _DeckEditorScreenState();
}

class _DeckEditorScreenState extends ConsumerState<DeckEditorScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  bool _prefilled = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(deckEditorNotifierProvider(widget.deckId));
    final deck = state.valueOrNull;
    if (!_prefilled && deck != null) {
      _prefilled = true;
      _nameController.text = deck.name;
      _descriptionController.text = deck.description ?? '';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.deckId == null ? 'New deck' : 'Edit deck'),
        actions: [
          if (widget.deckId != null)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: state.isLoading ? null : () => _confirmDelete(context),
            ),
        ],
      ),
      body: state.when(
        data: (_) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Deck name',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              minLines: 3,
              maxLines: 5,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: _save,
              icon: const Icon(Icons.save_outlined),
              label: const Text('Save deck'),
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Failed to load deck: $error')),
      ),
    );
  }

  Future<void> _save() async {
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Deck name is required')),
      );
      return;
    }

    final deck = await ref.read(deckEditorNotifierProvider(widget.deckId).notifier).saveDeck(
          name: name,
          description: _descriptionController.text.trim(),
        );
    if (!mounted) {
      return;
    }
    context.go('/app/practice/decks/${deck.id}');
  }

  Future<void> _confirmDelete(BuildContext context) async {
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

    await ref.read(deckEditorNotifierProvider(widget.deckId).notifier).deleteDeck();
    if (!mounted) {
      return;
    }
    context.go('/app/practice');
  }
}
