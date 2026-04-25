import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';

import '../../../practice/domain/models/flashcard_card.dart';
import '../../../practice/domain/models/flashcard_deck.dart';
import '../../../practice/domain/repositories/practice_repository.dart';
import '../models/dictionary_entry.dart';
import '../models/dictionary_language.dart';
import '../services/dictionary_flashcard_builder.dart';

@lazySingleton
class ExportDictionaryEntryToPracticeDeck {
  const ExportDictionaryEntryToPracticeDeck(
    this._practiceRepository,
    this._flashcardBuilder,
  );

  final PracticeRepository _practiceRepository;
  final DictionaryFlashcardBuilder _flashcardBuilder;

  Future<FlashcardDeck> call(DictionaryEntry entry) async {
    final now = DateTime.now();
    final draft = _flashcardBuilder.build(entry);
    final deckName = switch (entry.language) {
      DictionaryLanguage.japanese => 'Dictionary Japanese Export',
      DictionaryLanguage.english => 'Dictionary English Export',
    };

    final decks = await _practiceRepository.getDecks();
    FlashcardDeck? existingDeck;
    for (final deck in decks) {
      if (deck.name == deckName) {
        existingDeck = deck;
        break;
      }
    }
    final deck = existingDeck ??
        FlashcardDeck(
          id: _sha1('deck:$deckName'),
          name: deckName,
          description: 'Exported dictionary cards',
          sourceType: 'dictionary',
          createdAt: now,
          updatedAt: now,
        );

    await _practiceRepository.saveDeck(deck);

    final cardId = _sha1('card:${deck.id}:${entry.favoriteId}');
    final frontHtml = draft.front.replaceAll('\n', '<br/>');
    final backHtml = draft.back.replaceAll('\n', '<br/>');
    await _practiceRepository.saveCard(
      FlashcardCard(
        id: cardId,
        deckId: deck.id,
        frontHtml: frontHtml,
        backHtml: backHtml,
        frontPlain: draft.front,
        backPlain: draft.back,
        tags: draft.tags,
        createdAt: now,
        updatedAt: now,
      ),
    );

    return deck;
  }

  String _sha1(String value) {
    return sha1.convert(utf8.encode(value)).toString();
  }
}
