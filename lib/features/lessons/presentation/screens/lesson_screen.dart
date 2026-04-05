import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../notifiers/lesson_session_notifier.dart';
import '../notifiers/lesson_session_state.dart';
import '../widgets/block_router.dart';
import '../widgets/lesson_progress_bar.dart';

class LessonScreen extends ConsumerStatefulWidget {
  const LessonScreen({required this.lessonId, super.key});

  final String lessonId;

  @override
  ConsumerState<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends ConsumerState<LessonScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(lessonSessionNotifierProvider.notifier).loadLesson(widget.lessonId),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<LessonSessionState>(lessonSessionNotifierProvider, (previous, next) {
      final summary = next.summary;
      if (summary != null && previous?.summary != summary) {
        context.go('/app/lesson/${widget.lessonId}/result', extra: summary);
      }
    });

    final state = ref.watch(lessonSessionNotifierProvider);
    final lesson = state.lesson;
    final progress = state.progress;
    final currentBlock = state.currentBlock;

    return Scaffold(
      appBar: AppBar(
        title: Text(lesson?.title ?? 'Lesson ${widget.lessonId}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Builder(
          builder: (context) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.errorMessage != null) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Lesson temporarily unavailable', style: AppTypography.headlineMedium),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        state.errorMessage!,
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyMedium,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      FilledButton(
                        onPressed: () => ref
                            .read(lessonSessionNotifierProvider.notifier)
                            .loadLesson(widget.lessonId),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              );
            }

            if (lesson == null || progress == null) {
              return const Center(child: Text('Lesson data is empty'));
            }

            if (lesson.blocks.isEmpty) {
              return const Center(child: Text('This lesson has no blocks'));
            }

            if (currentBlock == null) {
              return const Center(child: Text('Lesson completed'));
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _LessonXpHeader(state: state),
                const SizedBox(height: AppSpacing.md),
                LessonProgressBar(
                  currentBlock: progress.currentBlockIndex + 1,
                  totalBlocks: lesson.blocks.length,
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: SingleChildScrollView(
                    child: LessonBlockRouter(
                      block: currentBlock,
                      result: state.lastResult,
                      feedbackMessage: state.feedbackMessage,
                      correctAnswerLabel: state.correctAnswerLabel,
                      showRetryPrompt: state.showRetryPrompt,
                      currentAttemptCount: state.currentAttemptCount,
                      onSubmitted: ({submittedAnswer, selectedOptionIds = const <String>[]}) {
                        return ref.read(lessonSessionNotifierProvider.notifier).submitBlock(
                              submittedAnswer: submittedAnswer,
                              selectedOptionIds: selectedOptionIds,
                            );
                      },
                    ),
                  ),
                ),
                if (state.submitting) ...[
                  const SizedBox(height: 12),
                  const LinearProgressIndicator(),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _LessonXpHeader extends StatelessWidget {
  const _LessonXpHeader({required this.state});

  final LessonSessionState state;

  @override
  Widget build(BuildContext context) {
    final stats = state.stats;
    final earnedXp = state.currentBlockEarnedXp;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total XP', style: AppTypography.labelSmall),
                Text(
                  '${stats?.totalXp ?? state.totalXpPreview} XP',
                  style: AppTypography.headlineMedium,
                ),
                Text(
                  'Level ${stats?.level ?? 1}',
                  style: AppTypography.bodyMedium,
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: earnedXp > 0
                  ? AppColors.accent.withValues(alpha: 0.25)
                  : AppColors.camel.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(999),
            ),
            child: Text(
              earnedXp > 0 ? '+$earnedXp XP' : 'Try for XP',
              style: AppTypography.labelLarge.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
