import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../../auth/presentation/notifiers/auth_notifier.dart';
import '../../../stats/presentation/providers/stats_providers.dart';
import '../../domain/models/lesson.dart';
import '../../domain/models/lesson_progress.dart';
import '../../domain/repositories/lesson_repository.dart';
import '../../domain/services/block_answer_evaluator.dart';
import '../../domain/services/lesson_feedback_builder.dart';
import '../../domain/services/lesson_progress_updater.dart';
import '../../domain/services/xp_calculator.dart';
import 'lesson_session_state.dart';

part 'lesson_session_notifier.g.dart';

bool _hasCompatibleProgress({
  required Lesson lesson,
  required LessonProgress savedProgress,
  required Set<String> currentBlockIds,
  required bool hasIncompatibleAttempts,
}) {
  if (savedProgress.currentBlockIndex >= lesson.blocks.length) {
    return false;
  }

  final lastBlockId = savedProgress.lastBlockId;
  if (lastBlockId != null && !currentBlockIds.contains(lastBlockId)) {
    return false;
  }

  final hasUnknownCompletedBlock = savedProgress.completedBlockIds.any(
    (blockId) => !currentBlockIds.contains(blockId),
  );
  if (hasUnknownCompletedBlock) {
    return false;
  }

  if (hasIncompatibleAttempts) {
    return false;
  }

  return true;
}

LessonProgress _freshProgress({
  required String lessonId,
  required String userId,
}) {
  return LessonProgress(lessonId: lessonId, userId: userId);
}

@Riverpod(keepAlive: true)
class LessonSessionNotifier extends _$LessonSessionNotifier {
  LessonRepository get _repository => getIt<LessonRepository>();
  BlockAnswerEvaluator get _evaluator => const BlockAnswerEvaluator();
  LessonFeedbackBuilder get _feedbackBuilder => const LessonFeedbackBuilder();
  LessonProgressUpdater get _progressUpdater => const LessonProgressUpdater();
  XpCalculator get _xpCalculator => const XpCalculator();

  @override
  LessonSessionState build() => const LessonSessionState(isLoading: false);

  Future<void> loadLesson(String lessonId) async {
    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      summary: null,
      lastResult: null,
      feedbackMessage: null,
      correctAnswerLabel: null,
      showRetryPrompt: false,
      currentBlockEarnedXp: 0,
      currentAttemptCount: 0,
      submitting: false,
    );

    try {
      final lesson = await _repository.getLesson(lessonId);
      final profile = await ref.read(authNotifierProvider.future);
      final userId = profile?.id ?? 'guest-user';
      await _repository.syncPendingProgress(userId);

      final savedProgress = await _repository.getProgress(
        userId: userId,
        lessonId: lessonId,
      );
      final stats = await _repository.getUserStats(userId);
      final attempts =
          await _repository.getAttempts(userId: userId, lessonId: lessonId);
      final currentBlockIds = lesson.blocks.map((block) => block.id).toSet();
      final filteredAttempts = attempts
          .where((attempt) => currentBlockIds.contains(attempt.blockId))
          .toList();
      final hasIncompatibleAttempts =
          filteredAttempts.length != attempts.length;
      final freshProgress = _freshProgress(lessonId: lessonId, userId: userId);
      final shouldResetProgress = savedProgress != null &&
          !_hasCompatibleProgress(
            lesson: lesson,
            savedProgress: savedProgress,
            currentBlockIds: currentBlockIds,
            hasIncompatibleAttempts: hasIncompatibleAttempts,
          );
      final baseProgress = shouldResetProgress
          ? freshProgress
          : (savedProgress ?? freshProgress);
      final completedBlockIds = filteredAttempts
          .where((attempt) => attempt.isCorrect)
          .map((attempt) => attempt.blockId)
          .toSet()
          .toList();

      state = state.copyWith(
        isLoading: false,
        lesson: lesson,
        stats: stats,
        progress: baseProgress.copyWith(
          attemptCount: filteredAttempts.length,
          incorrectAnswers:
              filteredAttempts.where((attempt) => !attempt.isCorrect).length,
          completedBlockIds: completedBlockIds,
          lastAttemptAt:
              filteredAttempts.isEmpty ? null : filteredAttempts.last.createdAt,
        ),
        totalXpPreview: stats.totalXp,
      );
    } catch (error) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: error.toString(),
      );
    }
  }

  Future<void> submitBlock({
    String? submittedAnswer,
    List<String> selectedOptionIds = const <String>[],
  }) async {
    final lesson = state.lesson;
    final progress = state.progress;
    final stats = state.stats;
    final block = state.currentBlock;

    if (lesson == null || progress == null || stats == null || block == null) {
      return;
    }

    state = state.copyWith(submitting: true, errorMessage: null);

    try {
      final attemptNumber = state.currentAttemptCount + 1;
      final isCorrect = _evaluator.evaluate(
        block: block,
        submittedAnswer: submittedAnswer,
        selectedOptionIds: selectedOptionIds,
      );
      final earnedXp = _xpCalculator.calculateBlockXp(
        block: block,
        lesson: lesson,
        stats: stats,
        isCorrect: isCorrect,
      );
      final feedback =
          _feedbackBuilder.build(block: block, isCorrect: isCorrect);
      final attemptedAt = DateTime.now();

      final attempt = LessonAttempt(
        userId: progress.userId,
        lessonId: lesson.id,
        blockId: block.id,
        attemptNumber: attemptNumber,
        submittedAnswer: submittedAnswer,
        selectedOptionIds: selectedOptionIds,
        isCorrect: isCorrect,
        feedbackMessage: feedback.message,
        earnedXp: earnedXp,
        createdAt: attemptedAt,
      );
      await _repository.saveAttempt(attempt);

      final progressUpdate = _progressUpdater.applyBlockResult(
        lesson: lesson,
        progress: progress,
        block: block,
        isCorrect: isCorrect,
        earnedXp: earnedXp,
        attemptNumber: attemptNumber,
        attemptedAt: attemptedAt,
        feedbackMessage: feedback.message,
        correctAnswerLabel: feedback.correctAnswerLabel,
        submittedAnswer: submittedAnswer,
        selectedOptionIds: selectedOptionIds,
      );

      if (!isCorrect) {
        state = state.copyWith(
          progress: progressUpdate.progress,
          submitting: false,
          currentAttemptCount: attemptNumber,
          feedbackMessage: feedback.message,
          correctAnswerLabel: feedback.correctAnswerLabel,
          showRetryPrompt: true,
          currentBlockEarnedXp: 0,
          lastResult: progressUpdate.result,
        );
        return;
      }

      final updatedProgress = progressUpdate.progress;

      final updatedStats = _xpCalculator.applyEarnedXp(
        stats: stats,
        earnedXp: earnedXp,
        lessonCompleted: updatedProgress.isCompleted && !progress.isCompleted,
        isCorrect: isCorrect,
      );

      await _repository.saveProgress(
        progress: updatedProgress,
        stats: updatedStats,
        result: progressUpdate.result,
      );

      LessonSummary? summary;
      if (updatedProgress.isCompleted) {
        summary = _xpCalculator.summarize(
          lesson: lesson,
          progress: updatedProgress,
          statsBefore: stats,
          statsAfter: updatedStats,
        );
        await _repository.completeLesson(
          summary: summary,
          progress: updatedProgress,
          stats: updatedStats,
        );
        ref.invalidate(statsDashboardProvider);
      }

      state = state.copyWith(
        progress: updatedProgress,
        stats: updatedStats,
        summary: summary,
        lastResult: progressUpdate.result,
        currentAttemptCount: attemptNumber,
        feedbackMessage: feedback.message,
        correctAnswerLabel: feedback.correctAnswerLabel,
        showRetryPrompt: false,
        currentBlockEarnedXp: earnedXp,
        totalXpPreview: updatedStats.totalXp,
        submitting: false,
      );
    } catch (error) {
      state = state.copyWith(submitting: false, errorMessage: error.toString());
    }
  }
}
