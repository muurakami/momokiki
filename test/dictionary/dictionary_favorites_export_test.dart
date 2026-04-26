import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_entry.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_favorite.dart';
import 'package:momokiki/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:momokiki/features/dictionary/domain/services/dictionary_flashcard_builder.dart';
import 'package:momokiki/features/dictionary/domain/usecases/export_dictionary_entry_to_practice_deck.dart';
import 'package:momokiki/features/dictionary/domain/usecases/toggle_dictionary_favorite.dart';
import 'package:momokiki/features/practice/domain/models/apkg_import_preview.dart';
import 'package:momokiki/features/practice/domain/models/flashcard_card.dart';
import 'package:momokiki/features/practice/domain/models/flashcard_deck.dart';
import 'package:momokiki/features/practice/domain/models/flashcard_deck_export.dart';
import 'package:momokiki/features/practice/domain/models/review_rating.dart';
import 'package:momokiki/features/practice/domain/repositories/practice_repository.dart';

void main() {
  const entry = DictionaryEnglishEntry(
    word: 'run',
    phonetic: '/rʌn/',
    meanings: <DictionaryEnglishMeaning>[
      DictionaryEnglishMeaning(
        partOfSpeech: 'verb',
        definitions: <DictionaryEnglishDefinition>[
          DictionaryEnglishDefinition(
            definition: 'to move quickly on foot',
            example: 'I run daily.',
          ),
        ],
      ),
    ],
  );

  group('ExportDictionaryEntryToPracticeDeck', () {
    late _FakePracticeRepository practiceRepository;
    late ExportDictionaryEntryToPracticeDeck exportEntry;

    setUp(() {
      practiceRepository = _FakePracticeRepository();
      exportEntry = ExportDictionaryEntryToPracticeDeck(
        practiceRepository,
        const DictionaryFlashcardBuilder(),
      );
    });

    test('can target a custom deck name', () async {
      final deck = await exportEntry(
        entry,
        deckName: 'Избранное',
        description: 'Favorite dictionary cards',
        sourceType: 'dictionary_favorites',
      );

      expect(deck.name, 'Избранное');
      expect(deck.description, 'Favorite dictionary cards');
      expect(deck.sourceType, 'dictionary_favorites');
      expect(practiceRepository.decks, hasLength(1));
      expect(practiceRepository.cards, hasLength(1));
      expect(practiceRepository.cards.single.deckId, deck.id);
      expect(practiceRepository.cards.single.backPlain,
          contains('Example: I run daily.'));
    });

    test('reuses an existing deck by exact name', () async {
      const existingDeck = FlashcardDeck(
        id: 'existing-favorites-deck',
        name: 'Избранное',
        sourceType: 'manual',
      );
      practiceRepository.seedDeck(existingDeck);

      final deck = await exportEntry(entry, deckName: 'Избранное');

      expect(deck.id, existingDeck.id);
      expect(practiceRepository.decks, hasLength(1));
      expect(practiceRepository.cards.single.deckId, existingDeck.id);
    });

    test('skips an existing card without overwriting review state', () async {
      await exportEntry(entry, deckName: 'Избранное');
      final card = practiceRepository.cards.single;
      practiceRepository.seedCard(
        card.copyWith(
          queue: 'review',
          intervalDays: 12,
          reps: 5,
          frontPlain: 'reviewed front stays intact',
        ),
      );
      final saveCardCount = practiceRepository.saveCardCount;

      await exportEntry(entry, deckName: 'Избранное');

      expect(practiceRepository.cards, hasLength(1));
      expect(practiceRepository.saveCardCount, saveCardCount);
      expect(practiceRepository.cards.single.queue, 'review');
      expect(practiceRepository.cards.single.intervalDays, 12);
      expect(practiceRepository.cards.single.reps, 5);
      expect(practiceRepository.cards.single.frontPlain,
          'reviewed front stays intact');
    });
  });

  group('ToggleDictionaryFavorite', () {
    late _FakeDictionaryRepository dictionaryRepository;
    late _FakePracticeRepository practiceRepository;
    late ToggleDictionaryFavorite toggleFavorite;

    setUp(() {
      dictionaryRepository = _FakeDictionaryRepository();
      practiceRepository = _FakePracticeRepository();
      toggleFavorite = ToggleDictionaryFavorite(
        dictionaryRepository,
        ExportDictionaryEntryToPracticeDeck(
          practiceRepository,
          const DictionaryFlashcardBuilder(),
        ),
      );
    });

    test('favorite add saves favorite and creates favorites practice deck',
        () async {
      final added = await toggleFavorite(entry);

      expect(added, isTrue);
      expect(dictionaryRepository.favoriteIds, contains(entry.favoriteId));
      expect(practiceRepository.decks.single.name, 'Избранное');
      expect(
          practiceRepository.decks.single.sourceType, 'dictionary_favorites');
      expect(practiceRepository.cards, hasLength(1));
    });

    test('favorite remove leaves the practice card intact', () async {
      await toggleFavorite(entry);
      final cardId = practiceRepository.cards.single.id;

      final added = await toggleFavorite(entry);

      expect(added, isFalse);
      expect(dictionaryRepository.favoriteIds, isEmpty);
      expect(practiceRepository.cards.map((card) => card.id), contains(cardId));
    });

    test(
        're-adding the same word does not duplicate or overwrite reviewed card',
        () async {
      await toggleFavorite(entry);
      final card = practiceRepository.cards.single;
      practiceRepository.seedCard(
        card.copyWith(
          queue: 'review',
          intervalDays: 21,
          reps: 8,
          backPlain: 'review history content stays intact',
        ),
      );
      await toggleFavorite(entry);
      final saveCardCount = practiceRepository.saveCardCount;

      final added = await toggleFavorite(entry);

      expect(added, isTrue);
      expect(practiceRepository.cards, hasLength(1));
      expect(practiceRepository.saveCardCount, saveCardCount);
      expect(practiceRepository.cards.single.queue, 'review');
      expect(practiceRepository.cards.single.intervalDays, 21);
      expect(practiceRepository.cards.single.reps, 8);
      expect(practiceRepository.cards.single.backPlain,
          'review history content stays intact');
    });

    test('rolls back favorite when practice export fails', () async {
      practiceRepository.throwOnSaveCard = true;

      await expectLater(toggleFavorite(entry), throwsA(isA<StateError>()));

      expect(dictionaryRepository.favoriteIds, isEmpty);
      expect(practiceRepository.cards, isEmpty);
    });
  });
}

class _FakeDictionaryRepository implements DictionaryRepository {
  final Map<String, DictionaryEntry> _favoritesById =
      <String, DictionaryEntry>{};

  Set<String> get favoriteIds => _favoritesById.keys.toSet();

  @override
  Future<bool> isJapaneseReady() => throw UnimplementedError();

  @override
  Future<int> ensureJapaneseDictionaryReady() => throw UnimplementedError();

  @override
  Future<List<DictionaryJapaneseEntry>> searchJapaneseByText(
    String query, {
    int limit = 20,
  }) =>
      throw UnimplementedError();

  @override
  Future<List<DictionaryJapaneseEntry>> searchJapaneseByRomaji(
    String query, {
    int limit = 20,
  }) =>
      throw UnimplementedError();

  @override
  Future<List<DictionaryEnglishEntry>> searchEnglish(
    String query, {
    int limit = 5,
  }) =>
      throw UnimplementedError();

  @override
  Future<List<DictionaryFavorite>> getFavorites() async {
    return _favoritesById.values
        .map(
          (entry) => DictionaryFavorite(
            id: entry.favoriteId,
            entryKey: entry.entryKey,
            language: entry.language,
            title: entry.title,
            subtitle: entry.subtitle,
            entry: entry,
            createdAt: DateTime(2026, 1, 1),
          ),
        )
        .toList();
  }

  @override
  Future<Set<String>> getFavoriteIds() async => favoriteIds;

  @override
  Future<bool> isFavorite(String favoriteId) async {
    return _favoritesById.containsKey(favoriteId);
  }

  @override
  Future<void> saveFavorite(DictionaryEntry entry) async {
    _favoritesById[entry.favoriteId] = entry;
  }

  @override
  Future<void> removeFavorite(String favoriteId) async {
    _favoritesById.remove(favoriteId);
  }
}

class _FakePracticeRepository implements PracticeRepository {
  final Map<String, FlashcardDeck> _decksById = <String, FlashcardDeck>{};
  final Map<String, FlashcardCard> _cardsById = <String, FlashcardCard>{};

  bool throwOnSaveCard = false;
  int saveCardCount = 0;

  List<FlashcardDeck> get decks => _decksById.values.toList();
  List<FlashcardCard> get cards => _cardsById.values.toList();

  void seedDeck(FlashcardDeck deck) {
    _decksById[deck.id] = deck;
  }

  void seedCard(FlashcardCard card) {
    _cardsById[card.id] = card;
  }

  @override
  Future<List<FlashcardDeck>> getDecks() async => decks;

  @override
  Future<FlashcardDeck?> getDeck(String deckId) async => _decksById[deckId];

  @override
  Future<List<FlashcardCard>> getCards(String deckId) async {
    return _cardsById.values.where((card) => card.deckId == deckId).toList();
  }

  @override
  Future<FlashcardCard?> getCard(String cardId) async => _cardsById[cardId];

  @override
  Future<void> saveDeck(FlashcardDeck deck) async {
    _decksById[deck.id] = deck;
  }

  @override
  Future<void> deleteDeck(String deckId) => throw UnimplementedError();

  @override
  Future<void> saveCard(FlashcardCard card) async {
    if (throwOnSaveCard) {
      throw StateError('save card failed');
    }
    if (!_decksById.containsKey(card.deckId)) {
      throw StateError('Cannot save card into missing deck: ${card.deckId}');
    }
    saveCardCount += 1;
    _cardsById[card.id] = card;
  }

  @override
  Future<void> deleteCard(String cardId) => throw UnimplementedError();

  @override
  Future<FlashcardCard?> getNextDueCard(String deckId) =>
      throw UnimplementedError();

  @override
  Future<void> reviewCard({
    required FlashcardCard card,
    required ReviewRating rating,
    required int elapsedMs,
  }) =>
      throw UnimplementedError();

  @override
  Future<ApkgImportPreview> importApkg(String filePath) =>
      throw UnimplementedError();

  @override
  Future<String?> exportDeckToFile(String deckId) => throw UnimplementedError();

  @override
  Future<FlashcardDeckExport?> importDeckFromFile() =>
      throw UnimplementedError();

  @override
  Future<FlashcardDeckExport> importDeckJson(String jsonContent) =>
      throw UnimplementedError();
}
