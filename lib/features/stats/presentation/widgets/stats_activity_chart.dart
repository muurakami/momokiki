import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/models/user_statistics.dart';

class StatsActivityChart extends StatelessWidget {
  const StatsActivityChart({
    super.key,
    required this.buckets,
    required this.peakValue,
  });

  final List<StatsChartBucket> buckets;
  final int peakValue;

  @override
  Widget build(BuildContext context) {
    if (buckets.isEmpty) {
      return const SizedBox.shrink();
    }

    final chartWidth = math.max(
      MediaQuery.sizeOf(context).width - 72,
      buckets.length * 22.0,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 220,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: chartWidth,
              child: BarChart(
                BarChartData(
                  minY: 0,
                  maxY: math
                      .max(4, peakValue + math.max(2, peakValue ~/ 3))
                      .toDouble(),
                  alignment: BarChartAlignment.spaceAround,
                  gridData: FlGridData(
                    drawVerticalLine: false,
                    horizontalInterval: _horizontalInterval(peakValue),
                    getDrawingHorizontalLine: (_) => FlLine(
                      color: AppColors.periwinkle.withValues(alpha: 0.14),
                      strokeWidth: 1,
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                      tooltipRoundedRadius: 16,
                      tooltipPadding: const EdgeInsets.all(10),
                      getTooltipColor: (_) => const Color(0xFF2A2338),
                      getTooltipItem: (group, _, rod, __) {
                        final bucket = buckets[group.x.toInt()];
                        return BarTooltipItem(
                          '${bucket.label}\n${rod.toY.toInt()} activities',
                          AppTypography.labelSmall.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: _horizontalInterval(peakValue),
                        getTitlesWidget: (value, meta) => Padding(
                          padding: const EdgeInsets.only(right: AppSpacing.sm),
                          child: Text(
                            value.toInt().toString(),
                            style: AppTypography.labelSmall,
                          ),
                        ),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 32,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index < 0 || index >= buckets.length) {
                            return const SizedBox.shrink();
                          }

                          final interval = _labelInterval(buckets.length);
                          final isEdge =
                              index == 0 || index == buckets.length - 1;
                          if (!isEdge && index % interval != 0) {
                            return const SizedBox.shrink();
                          }

                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: Text(
                              buckets[index].shortLabel,
                              style: AppTypography.labelSmall,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  barGroups: [
                    for (var index = 0; index < buckets.length; index += 1)
                      BarChartGroupData(
                        x: index,
                        barRods: [
                          BarChartRodData(
                            toY: buckets[index].count.toDouble(),
                            width: 12,
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10)),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF7C5CFF),
                                Color(0xFF4EA8FF),
                                Color(0xFF38D5B7),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (peakValue == 0) ...[
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Finish a lesson block or review a card to light up the graph.',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ],
    );
  }

  double _horizontalInterval(int peakValue) {
    if (peakValue <= 4) {
      return 1;
    }
    if (peakValue <= 12) {
      return 2;
    }
    if (peakValue <= 30) {
      return 5;
    }
    return 10;
  }

  int _labelInterval(int count) {
    if (count <= 8) {
      return 1;
    }
    if (count <= 16) {
      return 2;
    }
    if (count <= 30) {
      return 4;
    }
    return 6;
  }
}
