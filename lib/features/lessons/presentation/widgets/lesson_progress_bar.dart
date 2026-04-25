import 'package:flutter/material.dart';

class LessonProgressBar extends StatelessWidget {
  const LessonProgressBar({
    required this.currentBlock,
    required this.totalBlocks,
    super.key,
  });

  final int currentBlock;
  final int totalBlocks;

  @override
  Widget build(BuildContext context) {
    final safeTotal = totalBlocks == 0 ? 1 : totalBlocks;
    final progress = (currentBlock / safeTotal).clamp(0.0, 1.0);
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(end: progress),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
            builder: (context, value, _) {
              return LinearProgressIndicator(
                value: value,
                minHeight: 10,
                backgroundColor: colorScheme.surfaceContainerHighest,
                valueColor: AlwaysStoppedAnimation<Color>(colorScheme.primary),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 220),
          child: Text(
            'Block $currentBlock / $totalBlocks',
            key: ValueKey<String>('progress-$currentBlock-$totalBlocks'),
          ),
        ),
      ],
    );
  }
}
