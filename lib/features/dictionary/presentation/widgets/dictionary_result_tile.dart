import 'package:flutter/material.dart';

import '../../domain/models/dictionary_entry.dart';
import 'furigana_text.dart';

class DictionaryResultTile extends StatelessWidget {
  const DictionaryResultTile({
    required this.entry,
    required this.isFavorite,
    required this.isExporting,
    required this.onToggleFavorite,
    required this.onExport,
    super.key,
  });

  final DictionaryEntry entry;
  final bool isFavorite;
  final bool isExporting;
  final VoidCallback onToggleFavorite;
  final VoidCallback onExport;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final subtitleStyle = Theme.of(context).textTheme.bodyMedium;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (entry is DictionaryJapaneseEntry)
              FuriganaText(
                text: entry.title,
                reading: entry.subtitle,
                style: titleStyle,
                rubyStyle: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              )
            else
              Text(entry.title, style: titleStyle),
            if ((entry.subtitle ?? '').isNotEmpty && entry is DictionaryEnglishEntry) ...[
              const SizedBox(height: 4),
              Text(entry.subtitle!, style: subtitleStyle),
            ],
            const SizedBox(height: 8),
            Text(entry.previewText, style: subtitleStyle),
            const SizedBox(height: 12),
            Row(
              children: [
                IconButton(
                  onPressed: onToggleFavorite,
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Theme.of(context).colorScheme.error : null,
                  ),
                  tooltip: isFavorite ? 'Remove favorite' : 'Add favorite',
                ),
                const SizedBox(width: 8),
                FilledButton.icon(
                  onPressed: isExporting ? null : onExport,
                  icon: isExporting
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.upload_outlined),
                  label: const Text('Export'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
