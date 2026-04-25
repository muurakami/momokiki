import 'package:injectable/injectable.dart';

import '../models/dictionary_entry.dart';
import '../repositories/dictionary_repository.dart';

@lazySingleton
class ToggleDictionaryFavorite {
  const ToggleDictionaryFavorite(this._repository);

  final DictionaryRepository _repository;

  Future<bool> call(DictionaryEntry entry) async {
    final favoriteId = entry.favoriteId;
    final isFavorite = await _repository.isFavorite(favoriteId);
    if (isFavorite) {
      await _repository.removeFavorite(favoriteId);
      return false;
    }

    await _repository.saveFavorite(entry);
    return true;
  }
}
