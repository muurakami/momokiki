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
  final FocusNode _frontFocusNode = FocusNode();
  final FocusNode _backFocusNode = FocusNode();
  bool _didHydrate = false;
  bool _isDirty = false;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _frontController.addListener(_markDirty);
    _backController.addListener(_markDirty);
    if (widget.cardId != null) {
      _loadExistingCard(widget.cardId!);
    }
  }

  @override
  void dispose() {
    _frontController.removeListener(_markDirty);
    _backController.removeListener(_markDirty);
    _frontController.dispose();
    _backController.dispose();
    _frontFocusNode.dispose();
    _backFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                frontFocusNode: _frontFocusNode,
                backFocusNode: _backFocusNode,
                isSaving: _isSaving,
                onSave: _isSaving ? null : _save,
              ),
            ),
            if (_isSaving) const LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }

  Future<void> _loadExistingCard(String cardId) async {
    final card = await ref.read(cardEditorNotifierProvider.notifier).loadCard(cardId);
    if (!mounted || card == null || _didHydrate || _isDirty) {
      return;
    }
    _frontController.removeListener(_markDirty);
    _backController.removeListener(_markDirty);
    _frontController.value = TextEditingValue(
      text: card.frontPlain,
      selection: TextSelection.collapsed(offset: card.frontPlain.length),
    );
    _backController.value = TextEditingValue(
      text: card.backPlain,
      selection: TextSelection.collapsed(offset: card.backPlain.length),
    );
    _frontController.addListener(_markDirty);
    _backController.addListener(_markDirty);
    setState(() {
      _didHydrate = true;
      _isDirty = false;
    });
  }

  Future<void> _save() async {
    if (_isSaving) {
      return;
    }

    await _commitPendingInput();

    setState(() {
      _isSaving = true;
    });

    try {
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
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  void _markDirty() {
    if (_didHydrate || _isDirty) {
      return;
    }
    setState(() {
      _isDirty = true;
    });
  }

  Future<void> _commitPendingInput() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await WidgetsBinding.instance.endOfFrame;
  }
}
