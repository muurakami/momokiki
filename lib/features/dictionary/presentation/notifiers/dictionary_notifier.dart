import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../../auth/presentation/notifiers/auth_notifier.dart';
import '../../domain/models/dictionary_entry.dart';
import '../../domain/models/dictionary_language.dart';
import '../../domain/models/dictionary_search_result.dart';
import '../../domain/repositories/dictionary_repository.dart';
import '../../domain/usecases/ensure_japanese_dictionary_ready.dart';
import '../../domain/usecases/export_dictionary_entry_to_practice_deck.dart';
import '../../domain/usecases/search_dictionary.dart';
import '../../domain/usecases/toggle_dictionary_favorite.dart';
import '../../../practice/domain/models/flashcard_deck.dart';
import '../../../settings/presentation/notifiers/app_preferences_notifier.dart';
import 'dictionary_state.dart';

part 'dictionary_notifier.g.dart';

@riverpod
class DictionaryNotifier extends _$DictionaryNotifier {
  static const Set<DictionaryLanguage> _allLanguages = {
    DictionaryLanguage.japanese,
    DictionaryLanguage.english,
  };

  DictionaryRepository get _repository => getIt<DictionaryRepository>();
  EnsureJapaneseDictionaryReady get _ensureReady =>
      getIt<EnsureJapaneseDictionaryReady>();
  SearchDictionary get _searchDictionary => getIt<SearchDictionary>();
  ToggleDictionaryFavorite get _toggleFavorite =>
      getIt<ToggleDictionaryFavorite>();
  ExportDictionaryEntryToPracticeDeck get _exportEntry =>
      getIt<ExportDictionaryEntryToPracticeDeck>();

  @override
  Future<DictionaryState> build() async {
    if (kDebugMode) {
      debugPrint('DictionaryNotifier build: start');
    }
    final favoriteIds = await _repository.getFavoriteIds();
    try {
      await _ensureReady();
      if (kDebugMode) {
        debugPrint(
            'DictionaryNotifier build: ready, favoriteIds=${favoriteIds.length}');
      }
      return DictionaryState(favoriteIds: favoriteIds);
    } catch (error) {
      if (kDebugMode) {
        debugPrint('DictionaryNotifier build: failed, error=$error');
      }
      return DictionaryState(
        favoriteIds: favoriteIds,
        errorMessage: error.toString(),
      );
    }
  }

  Future<void> retryBootstrap() async {
    final current = state.valueOrNull ?? const DictionaryState();
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final favoriteIds = await _repository.getFavoriteIds();
      await _ensureReady();
      return current.copyWith(
        favoriteIds: favoriteIds,
        errorMessage: null,
      );
    });
  }

  Future<void> search(String query) async {
    final current = state.valueOrNull ?? const DictionaryState();
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty) {
      state = AsyncData(
        current.copyWith(
          query: '',
          isSearching: false,
          searchResult: null,
          errorMessage: current.errorMessage,
        ),
      );
      return;
    }

    state = AsyncData(
      current.copyWith(
        query: trimmedQuery,
        isSearching: true,
        errorMessage: current.errorMessage,
      ),
    );

    try {
      final activeLanguages = await _resolveActiveLanguages();
      final result = await _searchDictionary(
        trimmedQuery,
        activeLanguages: activeLanguages,
      );
      final latest = state.valueOrNull ?? current;
      state = AsyncData(
        latest.copyWith(
          query: trimmedQuery,
          isSearching: false,
          searchResult: result,
        ),
      );
    } catch (error, stackTrace) {
      final latest = state.valueOrNull ?? current;
      state = AsyncError(error, stackTrace);
      state = AsyncData(
        latest.copyWith(
          query: trimmedQuery,
          isSearching: false,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<Set<DictionaryLanguage>> _resolveActiveLanguages() async {
    try {
      final profile = await ref.read(authNotifierProvider.future);
      if (profile != null) {
        return _languagesFromCode(profile.targetLanguage);
      }
    } catch (_) {
      return _resolvePreferredLanguages();
    }

    return _resolvePreferredLanguages();
  }

  Future<Set<DictionaryLanguage>> _resolvePreferredLanguages() async {
    try {
      final languageCode =
          await ref.read(appPreferencesNotifierProvider.future);
      return _languagesFromCode(languageCode);
    } catch (_) {
      return _allLanguages;
    }
  }

  Set<DictionaryLanguage> _languagesFromCode(String? languageCode) {
    final normalized = languageCode?.toLowerCase().trim();
    if (normalized == null || normalized.isEmpty) {
      return _allLanguages;
    }

    final tokens = normalized
        .split(RegExp(r'[\s,]+'))
        .where((token) => token.isNotEmpty)
        .toSet();
    if (tokens.contains('both') || tokens.contains('all')) {
      return _allLanguages;
    }

    final languages = <DictionaryLanguage>{};
    for (final token in tokens) {
      if (token == 'ja' || token == 'japanese') {
        languages.add(DictionaryLanguage.japanese);
        continue;
      }
      if (token == 'en' || token == 'english') {
        languages.add(DictionaryLanguage.english);
      }
    }

    if (languages.length == _allLanguages.length) {
      return _allLanguages;
    }
    if (languages.isNotEmpty) {
      return languages;
    }
    return _allLanguages;
  }

  Future<bool> toggleFavorite(DictionaryEntry entry) async {
    final current = state.valueOrNull ?? const DictionaryState();
    final isFavorite = await _toggleFavorite(entry);
    final nextFavorites = <String>{...current.favoriteIds};
    if (isFavorite) {
      nextFavorites.add(entry.favoriteId);
    } else {
      nextFavorites.remove(entry.favoriteId);
    }
    state = AsyncData(current.copyWith(favoriteIds: nextFavorites));
    return isFavorite;
  }

  Future<FlashcardDeck> exportToPracticeDeck(DictionaryEntry entry) async {
    final current = state.valueOrNull ?? const DictionaryState();
    state = AsyncData(current.copyWith(isExporting: true));
    try {
      final deck = await _exportEntry(entry);
      final latest = state.valueOrNull ?? current;
      state = AsyncData(latest.copyWith(isExporting: false));
      return deck;
    } catch (error, stackTrace) {
      final latest = state.valueOrNull ?? current;
      state = AsyncError(error, stackTrace);
      state = AsyncData(
        latest.copyWith(
          isExporting: false,
          errorMessage: error.toString(),
        ),
      );
      rethrow;
    }
  }

  void hydrateResult(DictionarySearchResult result) {
    final current = state.valueOrNull ?? const DictionaryState();
    state = AsyncData(current.copyWith(searchResult: result));
  }
}
