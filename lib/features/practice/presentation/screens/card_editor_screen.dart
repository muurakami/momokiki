import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../notifiers/card_editor_notifier.dart';
import '../widgets/card_form.dart';

class CardEditorScreen extends ConsumerStatefulWidget {
  const CardEditorScreen({
    this.deckId,
    this.cardId,
    super.key,
  });

  final String? deckId;
  final String? cardId;

  @override
  ConsumerState<CardEditorScreen> createState() => _CardEditorScreenState();
}

class _CardEditorScreenState extends ConsumerState<CardEditorScreen> {
  final TextEditingController _frontController = TextEditingController();
  final TextEditingController _backController = TextEditingController();
  bool _loadedExistingCard = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_loadedExistingCard || widget.cardId == null) {
      return;
    }
    _loadedExistingCard = true;
    _loadExistingCard(widget.cardId!);
  }

  @override
  void dispose() {
    _frontController.dispose();
    _backController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final saveState = ref.watch(cardEditorNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text(widget.cardId == null ? 'New Card' : 'Edit Card')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: CardForm(
                frontController: _frontController,
                backController: _backController,
                onSave: saveState.isLoading ? null : _save,
              ),
            ),
            if (saveState.isLoading) const LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }

  Future<void> _loadExistingCard(String cardId) async {
    final card = await ref.read(cardEditorNotifierProvider.notifier).loadCard(cardId);
    if (!mounted || card == null) {
      return;
    }
    _frontController.text = card.frontPlain;
    _backController.text = card.backPlain;
  }

  Future<void> _save() async {
    final savedCard = await ref.read(cardEditorNotifierProvider.notifier).saveCard(
          id: widget.cardId,
          deckId: widget.deckId,
          front: _frontController.text,
          back: _backController.text,
        );
    if (!mounted) {
      return;
    }
    context.go('/app/practice/decks/${savedCard.deckId}');
  }
}
