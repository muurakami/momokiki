import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/models/learning_content.dart';
import '../notifiers/learning_catalog_notifier.dart';
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

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Learn'),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Lessons', style: AppTypography.headlineMedium),
                              const SizedBox(height: AppSpacing.xs),
                              Text(
                                selectedLanguage == SupportedLanguage.english
                                    ? 'English mode is active. Change it in Settings.'
                                    : 'Japanese mode is active. Start with Hiragana and Katakana.',
                                style: AppTypography.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () => context.go('/app/roadmaps'),
                          icon: const Icon(Icons.map_outlined),
                          label: const Text('Roadmap'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Expanded(
                    child: ListView(
                      children: [
                        Text('Lesson Islands', style: AppTypography.headlineMedium),
                        const SizedBox(height: AppSpacing.md),
                        Wrap(
                          spacing: AppSpacing.md,
                          runSpacing: AppSpacing.md,
                          children: lessons
                              .map(
                                (lesson) => _LessonIslandCard(
                                  lesson: lesson,
                                  onTap: () => context.go('/app/lesson/${lesson.lessonId}'),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

}

class _LessonIslandCard extends StatelessWidget {
  const _LessonIslandCard({required this.lesson, required this.onTap});

  final LessonIsland lesson;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 220,
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFE8F0E0), Color(0xFFF8F2E3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1A432818),
              blurRadius: 10,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(lesson.emoji ?? '📘', style: const TextStyle(fontSize: 24)),
                  ),
                ),
                const Spacer(),
                if (lesson.progress > 0)
                  Text(
                    '${(lesson.progress * 100).round()}%',
                    style: AppTypography.labelSmall.copyWith(color: AppColors.primary),
                  ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Text(lesson.title, style: AppTypography.headlineMedium),
            const SizedBox(height: AppSpacing.xs),
            Text(lesson.subtitle, style: AppTypography.bodyMedium),
            const SizedBox(height: AppSpacing.md),
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: LinearProgressIndicator(
                value: lesson.progress,
                minHeight: 10,
                backgroundColor: AppColors.camel.withValues(alpha: 0.25),
                color: AppColors.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
