import '../models/apkg_import_preview.dart';
import '../models/flashcard_card.dart';
import '../models/flashcard_deck.dart';
import '../models/flashcard_deck_export.dart';
import '../models/review_rating.dart';

abstract class PracticeRepository {
  Future<List<FlashcardDeck>> getDecks();

  Future<FlashcardDeck?> getDeck(String deckId);

  Future<List<FlashcardCard>> getCards(String deckId);

  Future<FlashcardCard?> getCard(String cardId);

  Future<void> saveDeck(FlashcardDeck deck);

  Future<void> deleteDeck(String deckId);

  Future<void> saveCard(FlashcardCard card);

  Future<void> deleteCard(String cardId);

  Future<FlashcardCard?> getNextDueCard(String deckId);

  Future<void> reviewCard({
    required FlashcardCard card,
    required ReviewRating rating,
    required int elapsedMs,
  });

  Future<ApkgImportPreview> importApkg(String filePath);

  Future<String?> exportDeckToFile(String deckId);

  Future<FlashcardDeckExport?> importDeckFromFile();

  Future<FlashcardDeckExport> importDeckJson(String jsonContent);
}
