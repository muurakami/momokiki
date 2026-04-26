import 'package:injectable/injectable.dart';

import '../models/dictionary_entry.dart';
import '../repositories/dictionary_repository.dart';
import 'export_dictionary_entry_to_practice_deck.dart';

@lazySingleton
class ToggleDictionaryFavorite {
  const ToggleDictionaryFavorite(this._repository, this._exportEntry);

  static const String _favoritesDeckName = 'Избранное';
  static const String _favoritesSourceType = 'dictionary_favorites';

  final DictionaryRepository _repository;
  final ExportDictionaryEntryToPracticeDeck _exportEntry;

  Future<bool> call(DictionaryEntry entry) async {
    final favoriteId = entry.favoriteId;
    final isFavorite = await _repository.isFavorite(favoriteId);
    if (isFavorite) {
      await _repository.removeFavorite(favoriteId);
      return false;
    }

    await _repository.saveFavorite(entry);
    try {
      await _exportEntry(
        entry,
        deckName: _favoritesDeckName,
        description: 'Favorite dictionary cards',
        sourceType: _favoritesSourceType,
      );
    } catch (_) {
      await _repository.removeFavorite(favoriteId);
      rethrow;
    }

    return true;
  }
}
