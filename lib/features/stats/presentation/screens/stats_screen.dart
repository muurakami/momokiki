import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/models/user_statistics.dart';
import '../providers/stats_providers.dart';
import '../widgets/stats_activity_chart.dart';
import '../widgets/stats_activity_heatmap.dart';
import '../widgets/stats_metric_card.dart';

class StatsScreen extends ConsumerWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(statsScreenStateProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FF),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF1F7),
              Color(0xFFF2F6FF),
              Color(0xFFFFF7EC),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(statsDashboardProvider);
              await ref.read(statsDashboardProvider.future);
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.md,
                    AppSpacing.sm,
                    AppSpacing.md,
                    AppSpacing.xxl,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: stats.when(
                      data: (state) => _StatsContent(state: state),
                      loading: () => const _StatsLoadingView(),
                      error: (error, _) => _StatsErrorView(
                        onRetry: () => ref.invalidate(statsDashboardProvider),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StatsContent extends ConsumerWidget {
  const _StatsContent({required this.state});

  final StatsScreenState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HeroHeader(state: state),
        const SizedBox(height: AppSpacing.lg),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          childAspectRatio: 0.95,
          children: [
            StatsMetricCard(
              label: 'Lessons done',
              value: state.overview.lessonsCompleted.toString(),
              subtitle: 'Completed lessons',
              icon: Icons.school_rounded,
              gradientColors: const [Color(0xFFFFF1DB), Color(0xFFFFDFC7)],
              iconTint: const Color(0xFFB86B00),
            ),
            StatsMetricCard(
              label: 'Cards learned',
              value: state.overview.cardsLearned.toString(),
              subtitle: 'Graduated from new',
              icon: Icons.style_rounded,
              gradientColors: const [Color(0xFFEAF6FF), Color(0xFFDCEAFF)],
              iconTint: const Color(0xFF2B6DFF),
            ),
            StatsMetricCard(
              label: 'Total XP',
              value: state.overview.totalXp.toString(),
              subtitle: 'From finished blocks',
              icon: Icons.bolt_rounded,
              gradientColors: const [Color(0xFFF4EBFF), Color(0xFFE6D9FF)],
              iconTint: const Color(0xFF7C4DFF),
            ),
            StatsMetricCard(
              label: 'Current streak',
              value: '${state.overview.currentStreak}d',
              subtitle: 'Best ${state.overview.longestStreak} days',
              icon: Icons.local_fire_department_rounded,
              gradientColors: const [Color(0xFFE8FFEE), Color(0xFFD8F7DE)],
              iconTint: const Color(0xFF0E9D58),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        _SectionCard(
          title: 'Activity',
          subtitle: 'Track how often you review cards and solve lesson blocks.',
          trailing: _SummaryChip(label: '${state.activeDays} active days'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSlidingSegmentedControl<StatsPeriod>(
                groupValue: state.period,
                backgroundColor: const Color(0xFFF1EEF8),
                thumbColor: Colors.white,
                padding: const EdgeInsets.all(4),
                children: {
                  for (final period in StatsPeriod.values)
                    period: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      child: Text(
                        period.chipLabel,
                        style: AppTypography.labelSmall.copyWith(
                          color: const Color(0xFF4B3E3E),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                },
                onValueChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  ref.read(statsPeriodProvider.notifier).state = value;
                },
              ),
              const SizedBox(height: AppSpacing.md),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  _GlassDataPill(
                    icon: Icons.auto_graph_rounded,
                    label: state.period.title,
                    value: '${state.totalActivity}',
                  ),
                  _GlassDataPill(
                    icon: Icons.bubble_chart_rounded,
                    label: 'Average',
                    value: state.averageActivityPerBucket.toStringAsFixed(1),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              StatsActivityChart(
                buckets: state.chartBuckets,
                peakValue: state.peakBucketValue,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        _SectionCard(
          title: 'Activity calendar',
          subtitle: 'GitHub-style daily view since you joined MOMOKIKI.',
          trailing: _SummaryChip(
            label: _heatmapRangeLabel(
              state.overview.registeredAt,
              DateTime.now(),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StatsActivityHeatmap(cells: state.heatmapCells),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Lessons sync with your account. Flashcard activity uses local deck history on this device.',
                style: AppTypography.labelSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _heatmapRangeLabel(DateTime start, DateTime end) =>
      '${_shortDate(start)} - ${_shortDate(end)}';

  String _shortDate(DateTime value) {
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
    return '${months[value.month - 1]} ${value.day}';
  }
}

class _HeroHeader extends StatelessWidget {
  const _HeroHeader({required this.state});

  final StatsScreenState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF7C5CFF),
            Color(0xFF4EA8FF),
            Color(0xFF32D1B2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x227C5CFF),
            blurRadius: 28,
            offset: Offset(0, 16),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Statistics',
                      style: AppTypography.displayLarge.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      '${state.overview.displayName}, here is your learning pulse.',
                      style: AppTypography.bodyLarge.copyWith(
                        color: Colors.white.withValues(alpha: 0.86),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.insights_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              _GlassHeaderChip(
                icon: Icons.calendar_today_rounded,
                label: 'Joined ${_formatJoinedAt(state.overview.registeredAt)}',
              ),
              _GlassHeaderChip(
                icon: Icons.workspace_premium_rounded,
                label: 'Best streak ${state.overview.longestStreak} days',
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatJoinedAt(DateTime value) {
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
    final hour = value.hour.toString().padLeft(2, '0');
    final minute = value.minute.toString().padLeft(2, '0');
    return '${months[value.month - 1]} ${value.day}, ${value.year} at $hour:$minute';
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.subtitle,
    required this.child,
    this.trailing,
  });

  final String title;
  final String subtitle;
  final Widget child;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.74),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.76),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTypography.headlineLarge),
                    const SizedBox(height: AppSpacing.xs),
                    Text(subtitle, style: AppTypography.bodyMedium),
                  ],
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          child,
        ],
      ),
    );
  }
}

class _SummaryChip extends StatelessWidget {
  const _SummaryChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF1EEF8),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(label, style: AppTypography.labelSmall),
    );
  }
}

class _GlassHeaderChip extends StatelessWidget {
  const _GlassHeaderChip({
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 16),
          const SizedBox(width: AppSpacing.sm),
          Text(
            label,
            style: AppTypography.labelSmall.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _GlassDataPill extends StatelessWidget {
  const _GlassDataPill({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F2FF),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColors.periwinkle, size: 18),
          const SizedBox(width: AppSpacing.sm),
          Text(
            '$label: $value',
            style: AppTypography.labelSmall.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatsLoadingView extends StatelessWidget {
  const _StatsLoadingView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            gradient: const LinearGradient(
              colors: [Color(0xFFEEE8FF), Color(0xFFE4F0FF)],
            ),
          ),
          child: const Center(child: CircularProgressIndicator()),
        ),
        const SizedBox(height: AppSpacing.lg),
        const SizedBox(
          height: 400,
          child: Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }
}

class _StatsErrorView extends StatelessWidget {
  const _StatsErrorView({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Statistics are unavailable',
              style: AppTypography.headlineLarge),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Refresh the page after your profile and local learning data are loaded.',
            style: AppTypography.bodyMedium,
          ),
          const SizedBox(height: AppSpacing.md),
          FilledButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Reload statistics'),
          ),
        ],
      ),
    );
  }
}
