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
    final progress = currentBlock / safeTotal;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LinearProgressIndicator(value: progress.clamp(0, 1)),
        const SizedBox(height: 8),
        Text('Block $currentBlock / $totalBlocks'),
      ],
    );
  }
}
