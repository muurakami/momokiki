import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/flashcard_deck.dart';
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
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();
  late final ProviderSubscription<AsyncValue<FlashcardDeck?>> _deckSubscription;
  bool _didHydrate = false;
  bool _isDirty = false;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_markDirty);
    _descriptionController.addListener(_markDirty);
    _deckSubscription = ref.listenManual<AsyncValue<FlashcardDeck?>>(
      deckEditorNotifierProvider(widget.deckId),
      (_, next) {
        final deck = next.valueOrNull;
        if (deck == null || _didHydrate || _isDirty) {
          return;
        }
        _hydrateFromDeck(deck);
      },
      fireImmediately: true,
    );
  }

  @override
  void dispose() {
    _deckSubscription.close();
    _nameController.removeListener(_markDirty);
    _descriptionController.removeListener(_markDirty);
    _nameController.dispose();
    _descriptionController.dispose();
    _nameFocusNode.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(deckEditorNotifierProvider(widget.deckId));
    final isInitialLoading = widget.deckId != null && state.isLoading && !_didHydrate;
    final hasInitialError = widget.deckId != null && state.hasError && !_didHydrate;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.deckId == null ? 'New deck' : 'Edit deck'),
        actions: [
          if (widget.deckId != null)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: state.isLoading || _isSaving ? null : () => _confirmDelete(context),
            ),
        ],
      ),
      body: Builder(
        builder: (context) {
          if (isInitialLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (hasInitialError) {
            return Center(child: Text('Failed to load deck: ${state.error}'));
          }

          return TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: const Duration(milliseconds: 260),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, (1 - value) * 16),
                  child: child,
                ),
              );
            },
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TextField(
                  controller: _nameController,
                  focusNode: _nameFocusNode,
                  decoration: const InputDecoration(
                    labelText: 'Deck name',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onSubmitted: (_) => _descriptionFocusNode.requestFocus(),
                  onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _descriptionController,
                  focusNode: _descriptionFocusNode,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  minLines: 3,
                  maxLines: 5,
                  onSubmitted: (_) {
                    if (!_isSaving) {
                      _save();
                    }
                  },
                  onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
                const SizedBox(height: 24),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 180),
                  switchInCurve: Curves.easeOutCubic,
                  switchOutCurve: Curves.easeInCubic,
                  child: _isSaving
                      ? const SizedBox(
                          key: ValueKey('saving'),
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: null,
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          ),
                        )
                      : SizedBox(
                          key: const ValueKey('idle'),
                          width: double.infinity,
                          child: FilledButton.icon(
                            onPressed: _save,
                            icon: const Icon(Icons.save_outlined),
                            label: const Text('Save deck'),
                          ),
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _save() async {
    if (_isSaving) {
      return;
    }

    await _commitPendingInput();
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Deck name is required')),
      );
      return;
    }

    setState(() {
      _isSaving = true;
    });

    try {
      final deck = await ref.read(deckEditorNotifierProvider(widget.deckId).notifier).saveDeck(
            name: name,
            description: _descriptionController.text.trim(),
          );
      if (!mounted) {
        return;
      }
      context.go('/app/practice/decks/${deck.id}');
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
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

  void _markDirty() {
    if (_didHydrate || _isDirty) {
      return;
    }
    setState(() {
      _isDirty = true;
    });
  }

  void _hydrateFromDeck(FlashcardDeck deck) {
    _nameController.removeListener(_markDirty);
    _descriptionController.removeListener(_markDirty);
    _nameController.value = TextEditingValue(
      text: deck.name,
      selection: TextSelection.collapsed(offset: deck.name.length),
    );
    final description = deck.description ?? '';
    _descriptionController.value = TextEditingValue(
      text: description,
      selection: TextSelection.collapsed(offset: description.length),
    );
    _nameController.addListener(_markDirty);
    _descriptionController.addListener(_markDirty);
    setState(() {
      _didHydrate = true;
      _isDirty = false;
    });
  }

  Future<void> _commitPendingInput() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await WidgetsBinding.instance.endOfFrame;
  }
}
