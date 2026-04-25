import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/models/learning_content.dart';
import '../models/lesson_map_node.dart';
import '../notifiers/learning_catalog_notifier.dart';
import '../widgets/lesson_map_view.dart';
import '../../../settings/presentation/notifiers/app_preferences_notifier.dart';

class LessonsOverviewScreen extends ConsumerStatefulWidget {
  const LessonsOverviewScreen({super.key});

  @override
  ConsumerState<LessonsOverviewScreen> createState() => _LessonsOverviewScreenState();
}

class _LessonsOverviewScreenState extends ConsumerState<LessonsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(learningCatalogNotifierProvider);
    final languageCode = ref.watch(appPreferencesNotifierProvider).valueOrNull ?? 'en';
    final selectedLanguage =
        languageCode == 'ja' ? SupportedLanguage.japanese : SupportedLanguage.english;
    final lessons = state.lessons
        .where((lesson) => lesson.language == selectedLanguage)
        .toList()
      ..sort((a, b) => a.order.compareTo(b.order));
    final mapNodes = const LessonMapLayoutBuilder().build(lessons);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Semantics(
          header: true,
          child: const Text('Lessons'),
        ),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.only(
                left: AppSpacing.md,
                top: AppSpacing.md,
                right: AppSpacing.md,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ProgressHeader(
                    totalXp: state.totalXp,
                    level: state.level,
                    levelProgress: state.levelProgress,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  _MapIntroCard(
                    selectedLanguage: selectedLanguage,
                    lessonCount: lessons.length,
                    onRoadmapTap: () => context.go('/app/roadmaps'),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Expanded(
                    child: LessonMapView(
                      nodes: mapNodes,
                      onLessonSelected: (node) {
                        context.go('/app/lesson/${node.lesson.lessonId}');
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }

}

class _ProgressHeader extends StatelessWidget {
  const _ProgressHeader({
    required this.totalXp,
    required this.level,
    required this.levelProgress,
  });

  final int totalXp;
  final int level;
  final double levelProgress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF386641), Color(0xFF6A994E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
        boxShadow: const [
          BoxShadow(
            color: Color(0x24386641),
            blurRadius: 18,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.bolt_rounded, color: AppColors.xpGold),
              const SizedBox(width: AppSpacing.sm),
              Text(
                'Level $level',
                style: AppTypography.headlineMedium.copyWith(color: AppColors.textOnPrimary),
              ),
              const Spacer(),
              Text(
                '$totalXp XP',
                style: AppTypography.labelLarge.copyWith(color: AppColors.textOnPrimary),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: levelProgress.clamp(0, 1).toDouble(),
              minHeight: 12,
              backgroundColor: Colors.white.withValues(alpha: 0.24),
              color: AppColors.xpGold,
            ),
          ),
        ],
      ),
    );
  }
}

class _MapIntroCard extends StatelessWidget {
  const _MapIntroCard({
    required this.selectedLanguage,
    required this.lessonCount,
    required this.onRoadmapTap,
  });

  final SupportedLanguage selectedLanguage;
  final int lessonCount;
  final VoidCallback onRoadmapTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.82),
        borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
        border: Border.all(color: AppColors.camel.withValues(alpha: 0.18)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lesson path', style: AppTypography.headlineMedium),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  selectedLanguage == SupportedLanguage.english
                      ? '$lessonCount English lessons ready. Change language in Settings.'
                      : '$lessonCount Japanese lessons ready. Start with Hiragana and Katakana.',
                  style: AppTypography.bodyMedium,
                ),
              ],
            ),
          ),
          TextButton.icon(
            onPressed: onRoadmapTap,
            icon: const Icon(Icons.map_outlined),
            label: const Text('Roadmap'),
          ),
        ],
      ),
    );
  }
}
