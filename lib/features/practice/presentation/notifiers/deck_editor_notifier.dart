import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/injection.dart';
import '../../domain/models/flashcard_deck.dart';
import '../../domain/repositories/practice_repository.dart';

final deckEditorNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<DeckEditorNotifier, FlashcardDeck?, String?>(DeckEditorNotifier.new);

class DeckEditorNotifier extends AutoDisposeFamilyAsyncNotifier<FlashcardDeck?, String?> {
  PracticeRepository get _repository => getIt<PracticeRepository>();

  @override
  Future<FlashcardDeck?> build(String? deckId) async {
    if (deckId == null) {
      return null;
    }
    return _repository.getDeck(deckId);
  }

  Future<FlashcardDeck> saveDeck({
    required String name,
    required String description,
  }) async {
    final now = DateTime.now();
    final existing = state.valueOrNull;
    final deck = (existing ??
            FlashcardDeck(
              id: _newDeckId(name, now),
              name: name,
              description: description.isEmpty ? null : description,
              createdAt: now,
              updatedAt: now,
            ))
        .copyWith(
      name: name,
      description: description.isEmpty ? null : description,
      updatedAt: now,
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _repository.saveDeck(deck);
      return deck;
    });
    return deck;
  }

  Future<void> deleteDeck() async {
    final deck = state.valueOrNull;
    if (deck == null) {
      return;
    }
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _repository.deleteDeck(deck.id);
      return null;
    });
  }

  String _newDeckId(String name, DateTime now) {
    return sha1.convert(utf8.encode('$name${now.microsecondsSinceEpoch}')).toString();
  }
}
