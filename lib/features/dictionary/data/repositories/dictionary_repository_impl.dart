import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/dictionary_entry.dart';
import '../../domain/models/dictionary_favorite.dart';
import '../../domain/repositories/dictionary_repository.dart';
import '../datasources/dictionary_seed_installer.dart';
import '../datasources/drift_dictionary_datasource.dart';
import '../datasources/free_dictionary_api_datasource.dart';
import '../datasources/seed_dictionary_reader.dart';
import '../dtos/free_dictionary_api_entry_dto.dart';

@LazySingleton(as: DictionaryRepository)
class DictionaryRepositoryImpl implements DictionaryRepository {
  DictionaryRepositoryImpl(
    this._local,
    this._seedInstaller,
    this._seedReader,
    this._remote,
  );

  static const Duration _englishCacheTtl = Duration(days: 30);

  final DriftDictionaryDataSource _local;
  final DictionarySeedInstaller _seedInstaller;
  final SeedDictionaryReader _seedReader;
  final FreeDictionaryApiDataSource _remote;

  @override
  Future<bool> isJapaneseReady() async {
    if (!await _local.isJapaneseReady()) {
      return false;
    }

    return _seedInstaller.isInstalled();
  }

  @override
  Future<int> ensureJapaneseDictionaryReady() async {
    if (await isJapaneseReady()) {
      final entryCount = await _local.getJapaneseEntryCount();
      if (kDebugMode) {
        debugPrint('Dictionary seed install skipped: entries=$entryCount');
      }
      return entryCount;
    }

    try {
      final updatedAt = DateTime.now();
      final hadReadyState = await _local.isJapaneseReady();
      _seedReader.close();
      final installedFile = await _seedInstaller.ensureInstalled(overwrite: !hadReadyState);
      if (kDebugMode) {
        debugPrint('Dictionary seed install path: ${installedFile.path}');
      }

      final hasRequiredTables = await _seedReader.hasRequiredTables();
      if (!hasRequiredTables) {
        throw StateError('Dictionary seed schema is incomplete');
      }

      final entryCount = await _seedReader.getJapaneseEntryCount();
      if (entryCount <= 0) {
        throw StateError('Dictionary seed is empty');
      }

      await _local.saveJapaneseReadyState(
        entryCount: entryCount,
        updatedAt: updatedAt,
      );

      if (kDebugMode) {
        debugPrint('Dictionary seed ready: entries=$entryCount');
      }
      return entryCount;
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Dictionary seed install failed: $error');
      }
      await _local.saveJapaneseBootstrapError(error.toString());
      rethrow;
    }
  }

  @override
  Future<List<DictionaryJapaneseEntry>> searchJapaneseByText(
    String query, {
    int limit = 20,
  }) {
    return _seedReader.searchJapaneseByText(query, limit: limit);
  }

  @override
  Future<List<DictionaryJapaneseEntry>> searchJapaneseByRomaji(
    String query, {
    int limit = 20,
  }) {
    return _seedReader.searchJapaneseByRomaji(query, limit: limit);
  }

  @override
  Future<List<DictionaryEnglishEntry>> searchEnglish(
    String query, {
    int limit = 5,
  }) async {
    final normalizedWord = query.trim().toLowerCase();
    if (normalizedWord.isEmpty) {
      return const <DictionaryEnglishEntry>[];
    }

    final cached = await _local.getEnglishCache(normalizedWord);
    final now = DateTime.now();
    if (cached != null && now.difference(cached.cachedAt) <= _englishCacheTtl) {
      return <DictionaryEnglishEntry>[cached.entry];
    }

    try {
      final remoteEntries = await _remote.lookup(normalizedWord);
      if (remoteEntries.isEmpty) {
        if (cached != null) {
          return <DictionaryEnglishEntry>[cached.entry];
        }
        return const <DictionaryEnglishEntry>[];
      }

      final mappedEntry = _mapEnglishEntry(remoteEntries);
      await _local.saveEnglishCache(normalizedWord, mappedEntry);
      return <DictionaryEnglishEntry>[mappedEntry];
    } catch (_) {
      if (cached != null) {
        return <DictionaryEnglishEntry>[cached.entry];
      }
      return const <DictionaryEnglishEntry>[];
    }
  }

  @override
  Future<List<DictionaryFavorite>> getFavorites() => _local.getFavorites();

  @override
  Future<Set<String>> getFavoriteIds() => _local.getFavoriteIds();

  @override
  Future<bool> isFavorite(String favoriteId) => _local.isFavorite(favoriteId);

  @override
  Future<void> saveFavorite(DictionaryEntry entry) {
    return _local.saveFavorite(
      DictionaryFavorite(
        id: entry.favoriteId,
        entryKey: entry.entryKey,
        language: entry.language,
        title: entry.title,
        subtitle: entry.subtitle,
        entry: entry,
        createdAt: DateTime.now(),
      ),
    );
  }

  @override
  Future<void> removeFavorite(String favoriteId) => _local.removeFavorite(favoriteId);

  DictionaryEnglishEntry _mapEnglishEntry(List<FreeDictionaryApiEntryDto> entries) {
    final first = entries.first;
    final phonetics = <DictionaryEnglishPhonetic>[];
    final meanings = <DictionaryEnglishMeaning>[];

    for (final entry in entries) {
      for (final phonetic in entry.phonetics) {
        if ((phonetic.text ?? '').isEmpty && (phonetic.audioUrl ?? '').isEmpty) {
          continue;
        }
        phonetics.add(
          DictionaryEnglishPhonetic(
            text: phonetic.text,
            audioUrl: phonetic.audioUrl,
          ),
        );
      }

      for (final meaning in entry.meanings) {
        meanings.add(
          DictionaryEnglishMeaning(
            partOfSpeech: meaning.partOfSpeech,
            definitions: meaning.definitions
                .map(
                  (definition) => DictionaryEnglishDefinition(
                    definition: definition.definition,
                    example: definition.example,
                    synonyms: definition.synonyms,
                  ),
                )
                .toList(),
          ),
        );
      }
    }

    return DictionaryEnglishEntry(
      word: first.word,
      phonetic: first.phonetic ??
          phonetics.map((phonetic) => phonetic.text).firstWhere(
                (value) => value != null && value.isNotEmpty,
                orElse: () => null,
              ),
      phonetics: phonetics,
      meanings: meanings,
    );
  }
}
