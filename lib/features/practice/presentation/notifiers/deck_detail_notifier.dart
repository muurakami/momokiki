import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/models/flashcard_card.dart';
import '../../domain/models/flashcard_deck.dart';
import '../../domain/repositories/practice_repository.dart';

part 'deck_detail_notifier.g.dart';

class DeckDetailState {
  const DeckDetailState({
    this.deck,
    this.cards = const <FlashcardCard>[],
  });

  final FlashcardDeck? deck;
  final List<FlashcardCard> cards;
}

@riverpod
class DeckDetailNotifier extends _$DeckDetailNotifier {
  PracticeRepository get _repository => getIt<PracticeRepository>();

  @override
  Future<DeckDetailState> build(String deckId) async {
    final deck = await _repository.getDeck(deckId);
    final cards = await _repository.getCards(deckId);
    return DeckDetailState(deck: deck, cards: cards);
  }

  Future<void> refresh(String deckId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final deck = await _repository.getDeck(deckId);
      final cards = await _repository.getCards(deckId);
      return DeckDetailState(deck: deck, cards: cards);
    });
  }

  Future<String?> exportDeck(String deckId) => _repository.exportDeckToFile(deckId);

  Future<void> deleteDeck(String deckId) => _repository.deleteDeck(deckId);
}
