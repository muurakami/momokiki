import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/dictionary_entry.dart';
import '../notifiers/dictionary_notifier.dart';
import '../notifiers/dictionary_state.dart';
import '../widgets/dictionary_empty_state.dart';
import '../widgets/dictionary_result_tile.dart';
import '../widgets/dictionary_search_field.dart';

class DictionaryScreen extends ConsumerStatefulWidget {
  const DictionaryScreen({super.key});

  @override
  ConsumerState<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends ConsumerState<DictionaryScreen> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_scheduleSearch);
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _searchController.removeListener(_scheduleSearch);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stateAsync = ref.watch(dictionaryNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Dictionary')),
      body: stateAsync.when(
        data: (state) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: DictionarySearchField(
                controller: _searchController,
                isSearching: state.isSearching,
              ),
            ),
            Expanded(
              child: _buildBody(context, state),
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => DictionaryEmptyState(
          message: 'Failed to open dictionary: $error',
          actionLabel: 'Retry',
          onAction: () => ref.read(dictionaryNotifierProvider.notifier).retryBootstrap(),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, DictionaryState state) {
    if (state.errorMessage != null && state.searchResult == null) {
      return DictionaryEmptyState(
        message: state.errorMessage!,
        actionLabel: 'Retry dictionary setup',
        onAction: () => ref.read(dictionaryNotifierProvider.notifier).retryBootstrap(),
      );
    }

    final result = state.searchResult;
    if (_searchController.text.trim().isEmpty) {
      return const DictionaryEmptyState(
        message: 'Type a word in kana, kanji, romaji, or English.',
      );
    }

    if (result == null || result.isEmpty) {
      return const DictionaryEmptyState(
        message: 'No results found for the current query.',
      );
    }

    final items = <Widget>[];
    if (result.japaneseEntries.isNotEmpty) {
      items.add(_buildSectionHeader(context, 'Japanese'));
      items.addAll(
        result.japaneseEntries.map(
          (entry) => DictionaryResultTile(
            entry: entry,
            isFavorite: state.isFavorite(entry),
            isExporting: state.isExporting,
            onToggleFavorite: () => _toggleFavorite(entry),
            onExport: () => _exportEntry(entry),
          ),
        ),
      );
    }
    if (result.englishEntries.isNotEmpty) {
      items.add(_buildSectionHeader(context, 'English'));
      items.addAll(
        result.englishEntries.map(
          (entry) => DictionaryResultTile(
            entry: entry,
            isFavorite: state.isFavorite(entry),
            isExporting: state.isExporting,
            onToggleFavorite: () => _toggleFavorite(entry),
            onExport: () => _exportEntry(entry),
          ),
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      children: items,
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  void _scheduleSearch() {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 400), () {
      ref.read(dictionaryNotifierProvider.notifier).search(_searchController.text);
    });
    setState(() {});
  }

  Future<void> _toggleFavorite(DictionaryEntry entry) async {
    await ref.read(dictionaryNotifierProvider.notifier).toggleFavorite(entry);
    if (!mounted) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          ref.read(dictionaryNotifierProvider).valueOrNull?.isFavorite(entry) == true
              ? 'Added to favorites'
              : 'Removed from favorites',
        ),
      ),
    );
  }

  Future<void> _exportEntry(DictionaryEntry entry) async {
    final deck = await ref.read(dictionaryNotifierProvider.notifier).exportToPracticeDeck(entry);
    if (!mounted) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Exported to ${deck.name}')),
    );
  }
}
