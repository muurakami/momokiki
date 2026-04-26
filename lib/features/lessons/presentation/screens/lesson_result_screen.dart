import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/models/lesson_progress.dart';
import '../../../stats/presentation/providers/stats_providers.dart';
import '../notifiers/learning_catalog_notifier.dart';

class LessonResultScreen extends ConsumerWidget {
  const LessonResultScreen({required this.summary, super.key});

  final LessonSummary summary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson Result')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.accent.withValues(alpha: 0.25),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  '+${summary.earnedXp} XP',
                  style: AppTypography.displayMedium,
                ),
              ),
              const SizedBox(height: 12),
              Text('Accuracy: ${(summary.accuracy * 100).round()}%'),
              const SizedBox(height: 8),
              Text(
                  'Correct answers: ${summary.correctAnswers}/${summary.totalBlocks}'),
              const SizedBox(height: 8),
              Text('Attempts: ${summary.totalAttempts}'),
              const SizedBox(height: 8),
              Text('Level ${summary.levelBefore} -> ${summary.levelAfter}'),
              const SizedBox(height: 8),
              Text('Total XP: ${summary.totalXpAfter}'),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  ref.invalidate(learningCatalogNotifierProvider);
                  ref.invalidate(statsDashboardProvider);
                  if (summary.nextLessonId != null) {
                    context.go('/app/lesson/${summary.nextLessonId}');
                    return;
                  }

                  context.go('/app/learn');
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
