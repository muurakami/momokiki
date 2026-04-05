import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/di/injection.dart';
import '../../domain/models/lesson.dart';
import '../../domain/models/lesson_progress.dart';
import '../../domain/repositories/lesson_repository.dart';
import '../../domain/services/block_answer_evaluator.dart';
import '../../domain/services/xp_calculator.dart';
import 'lesson_session_state.dart';

part 'lesson_session_notifier.g.dart';

@Riverpod(keepAlive: true)
class LessonSessionNotifier extends _$LessonSessionNotifier {
  LessonRepository get _repository => getIt<LessonRepository>();
  BlockAnswerEvaluator get _evaluator => const BlockAnswerEvaluator();
  XpCalculator get _xpCalculator => const XpCalculator();

  @override
  LessonSessionState build() => const LessonSessionState(isLoading: false);

  Future<void> loadLesson(String lessonId) async {
    state = state.copyWith(isLoading: true, errorMessage: null, summary: null);

    try {
      final lesson = await _repository.getLesson(lessonId);
      final userId = Supabase.instance.client.auth.currentUser?.id ?? 'guest-user';
      await _repository.syncPendingProgress(userId);

      final savedProgress = await _repository.getProgress(
        userId: userId,
        lessonId: lessonId,
      );
      final stats = await _repository.getUserStats(userId);
      final attempts = await _repository.getAttempts(userId: userId, lessonId: lessonId);

      state = state.copyWith(
        isLoading: false,
        lesson: lesson,
        stats: stats,
        progress: (savedProgress ?? LessonProgress(lessonId: lessonId, userId: userId)).copyWith(
          attemptCount: attempts.length,
          incorrectAnswers: attempts.where((attempt) => !attempt.isCorrect).length,
          completedBlockIds: attempts
              .where((attempt) => attempt.isCorrect)
              .map((attempt) => attempt.blockId)
              .toSet()
              .toList(),
          lastAttemptAt: attempts.isEmpty ? null : attempts.last.createdAt,
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

      final correctAnswerLabel = switch (block) {
        QuizBlock(:final correctAnswer) => correctAnswer,
        ChoiceBlock(:final options, :final correctOptionId) => options
                .firstWhere(
                  (option) => option.id == correctOptionId,
                  orElse: () => const ChoiceOption(id: 'unknown', label: 'Unknown'),
                )
                .label,
        CodeBlock(:final expectedAnswer) => expectedAnswer,
        _ => null,
      };

      final feedbackMessage = isCorrect
          ? 'Correct. Nice work.'
          : switch (block) {
              QuizBlock(:final explanation) => explanation ?? 'That answer is not correct.',
              ChoiceBlock() => 'Review the prompt and choose the correct option.',
              CodeBlock() => 'Check the expected phrasing and try again.',
              _ => 'Try again.',
            };

      final attempt = LessonAttempt(
        userId: progress.userId,
        lessonId: lesson.id,
        blockId: block.id,
        attemptNumber: attemptNumber,
        submittedAnswer: submittedAnswer,
        selectedOptionIds: selectedOptionIds,
        isCorrect: isCorrect,
        feedbackMessage: feedbackMessage,
        earnedXp: earnedXp,
        createdAt: DateTime.now(),
      );
      await _repository.saveAttempt(attempt);

      if (!isCorrect) {
        final failedProgress = progress.copyWith(
          attemptCount: progress.attemptCount + 1,
          incorrectAnswers: progress.incorrectAnswers + 1,
          lastAttemptAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );

        state = state.copyWith(
          progress: failedProgress,
          submitting: false,
          currentAttemptCount: attemptNumber,
          feedbackMessage: feedbackMessage,
          correctAnswerLabel: correctAnswerLabel,
          showRetryPrompt: true,
          currentBlockEarnedXp: 0,
          lastResult: LessonBlockResult(
            lessonId: lesson.id,
            blockId: block.id,
            blockType: block.blockType,
            isCorrect: false,
            earnedXp: 0,
            attemptNumber: attemptNumber,
            submittedAnswer: submittedAnswer,
            correctAnswerLabel: correctAnswerLabel,
            feedbackMessage: feedbackMessage,
            shouldRetry: true,
            selectedOptionIds: selectedOptionIds,
          ),
        );
        return;
      }

      final updatedProgress = progress.copyWith(
        currentBlockIndex: progress.currentBlockIndex + 1,
        answeredBlocks: progress.answeredBlocks + 1,
        attemptCount: progress.attemptCount + 1,
        correctAnswers: progress.correctAnswers + (isCorrect ? 1 : 0),
        earnedXp: progress.earnedXp + earnedXp,
        lastBlockId: block.id,
        completedBlockIds: [...progress.completedBlockIds, block.id],
        isCompleted: progress.currentBlockIndex + 1 >= lesson.blocks.length,
        lastAttemptAt: DateTime.now(),
        updatedAt: DateTime.now(),
        completedAt: progress.currentBlockIndex + 1 >= lesson.blocks.length
            ? DateTime.now()
            : progress.completedAt,
      );

      final updatedStats = _xpCalculator.applyEarnedXp(
        stats: stats,
        earnedXp: earnedXp,
        lessonCompleted: updatedProgress.isCompleted,
        isCorrect: isCorrect,
      );

      final result = LessonBlockResult(
        lessonId: lesson.id,
        blockId: block.id,
        blockType: block.blockType,
        isCorrect: isCorrect,
        earnedXp: earnedXp,
        attemptNumber: attemptNumber,
        submittedAnswer: submittedAnswer,
        correctAnswerLabel: correctAnswerLabel,
        feedbackMessage: feedbackMessage,
        selectedOptionIds: selectedOptionIds,
      );

      await _repository.saveProgress(
        progress: updatedProgress,
        stats: updatedStats,
        result: result,
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
      }

      state = state.copyWith(
        progress: updatedProgress,
        stats: updatedStats,
        summary: summary,
        lastResult: result,
        currentAttemptCount: attemptNumber,
        feedbackMessage: feedbackMessage,
        correctAnswerLabel: correctAnswerLabel,
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
