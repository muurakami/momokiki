import '../models/dictionary_entry.dart';
import '../models/dictionary_favorite.dart';

abstract class DictionaryRepository {
  Future<bool> isJapaneseReady();

  Future<int> ensureJapaneseDictionaryReady();

  Future<List<DictionaryJapaneseEntry>> searchJapaneseByText(
    String query, {
    int limit = 20,
  });

  Future<List<DictionaryJapaneseEntry>> searchJapaneseByRomaji(
    String query, {
    int limit = 20,
  });

  Future<List<DictionaryEnglishEntry>> searchEnglish(
    String query, {
    int limit = 5,
  });

  Future<List<DictionaryFavorite>> getFavorites();

  Future<Set<String>> getFavoriteIds();

  Future<bool> isFavorite(String favoriteId);

  Future<void> saveFavorite(DictionaryEntry entry);

  Future<void> removeFavorite(String favoriteId);
}
