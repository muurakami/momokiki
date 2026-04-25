import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/models/user_statistics.dart';

class StatsActivityHeatmap extends StatelessWidget {
  const StatsActivityHeatmap({
    super.key,
    required this.cells,
  });

  final List<StatsHeatmapCell> cells;

  @override
  Widget build(BuildContext context) {
    if (cells.isEmpty) {
      return const SizedBox.shrink();
    }

    final weeks = <List<StatsHeatmapCell>>[];
    for (var index = 0; index < cells.length; index += 7) {
      weeks.add(cells.sublist(index, math.min(index + 7, cells.length)));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Column(
                  children: [
                    for (var row = 0; row < 7; row += 1)
                      SizedBox(
                        height: 16,
                        width: 22,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            switch (row) {
                              0 => 'M',
                              2 => 'W',
                              4 => 'F',
                              _ => '',
                            },
                            style: AppTypography.labelSmall,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (final week in weeks)
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Column(
                        children: [
                          for (final cell in week)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Tooltip(
                                message:
                                    '${_formatDate(cell.day)}\n${cell.count} activities',
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    color: _colorForIntensity(cell.intensity),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          children: [
            Text('Less', style: AppTypography.labelSmall),
            const SizedBox(width: AppSpacing.sm),
            for (var level = 0; level <= 4; level += 1)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: _colorForIntensity(level),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            Text('More', style: AppTypography.labelSmall),
          ],
        ),
      ],
    );
  }

  Color _colorForIntensity(int intensity) {
    return switch (intensity) {
      0 => const Color(0xFFF1EEF8),
      1 => const Color(0xFFDAD6FF),
      2 => const Color(0xFFA9C4FF),
      3 => const Color(0xFF62B8F6),
      _ => const Color(0xFF32D1B2),
    };
  }

  String _formatDate(DateTime value) {
    const months = <String>[
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${months[value.month - 1]} ${value.day}, ${value.year}';
  }
}
