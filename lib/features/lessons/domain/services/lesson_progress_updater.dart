import '../models/lesson.dart';
import '../models/lesson_progress.dart';

class LessonProgressUpdate {
  const LessonProgressUpdate({
    required this.progress,
    required this.result,
  });

  final LessonProgress progress;
  final LessonBlockResult result;
}

class LessonProgressUpdater {
  const LessonProgressUpdater();

  LessonProgressUpdate applyBlockResult({
    required Lesson lesson,
    required LessonProgress progress,
    required LessonBlock block,
    required bool isCorrect,
    required int earnedXp,
    required int attemptNumber,
    required DateTime attemptedAt,
    required String feedbackMessage,
    required String? correctAnswerLabel,
    String? submittedAnswer,
    List<String> selectedOptionIds = const <String>[],
  }) {
    if (!isCorrect) {
      final updatedProgress = progress.copyWith(
        attemptCount: progress.attemptCount + 1,
        incorrectAnswers: progress.incorrectAnswers + 1,
        lastAttemptAt: attemptedAt,
        updatedAt: attemptedAt,
      );

      return LessonProgressUpdate(
        progress: updatedProgress,
        result: _result(
          lesson: lesson,
          block: block,
          isCorrect: false,
          earnedXp: 0,
          attemptNumber: attemptNumber,
          feedbackMessage: feedbackMessage,
          correctAnswerLabel: correctAnswerLabel,
          shouldRetry: true,
          submittedAnswer: submittedAnswer,
          selectedOptionIds: selectedOptionIds,
        ),
      );
    }

    final nextBlockIndex = progress.currentBlockIndex + 1;
    final isCompleted = nextBlockIndex >= lesson.blocks.length;
    final completedBlockIds = <String>{...progress.completedBlockIds, block.id}.toList();
    final updatedProgress = progress.copyWith(
      currentBlockIndex: nextBlockIndex,
      answeredBlocks: progress.answeredBlocks + 1,
      attemptCount: progress.attemptCount + 1,
      correctAnswers: progress.correctAnswers + 1,
      earnedXp: progress.earnedXp + earnedXp,
      lastBlockId: block.id,
      completedBlockIds: completedBlockIds,
      isCompleted: isCompleted,
      lastAttemptAt: attemptedAt,
      updatedAt: attemptedAt,
      completedAt: isCompleted ? attemptedAt : progress.completedAt,
    );

    return LessonProgressUpdate(
      progress: updatedProgress,
      result: _result(
        lesson: lesson,
        block: block,
        isCorrect: true,
        earnedXp: earnedXp,
        attemptNumber: attemptNumber,
        feedbackMessage: feedbackMessage,
        correctAnswerLabel: correctAnswerLabel,
        shouldRetry: false,
        submittedAnswer: submittedAnswer,
        selectedOptionIds: selectedOptionIds,
      ),
    );
  }

  LessonBlockResult _result({
    required Lesson lesson,
    required LessonBlock block,
    required bool isCorrect,
    required int earnedXp,
    required int attemptNumber,
    required String feedbackMessage,
    required String? correctAnswerLabel,
    required bool shouldRetry,
    String? submittedAnswer,
    List<String> selectedOptionIds = const <String>[],
  }) {
    return LessonBlockResult(
      lessonId: lesson.id,
      blockId: block.id,
      blockType: block.blockType,
      isCorrect: isCorrect,
      earnedXp: earnedXp,
      attemptNumber: attemptNumber,
      submittedAnswer: submittedAnswer,
      correctAnswerLabel: correctAnswerLabel,
      feedbackMessage: feedbackMessage,
      shouldRetry: shouldRetry,
      selectedOptionIds: selectedOptionIds,
    );
  }
}
