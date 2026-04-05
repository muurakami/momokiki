import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/lesson.dart';
import '../../domain/models/lesson_progress.dart';

part 'lesson_session_state.freezed.dart';

@freezed
class LessonSessionState with _$LessonSessionState {
  const LessonSessionState._();

  const factory LessonSessionState({
    @Default(false) bool isLoading,
    Lesson? lesson,
    LessonProgress? progress,
    UserStats? stats,
    LessonSummary? summary,
    LessonBlockResult? lastResult,
    String? feedbackMessage,
    String? correctAnswerLabel,
    String? errorMessage,
    @Default(0) int currentAttemptCount,
    @Default(false) bool showRetryPrompt,
    @Default(0) int currentBlockEarnedXp,
    @Default(0) int totalXpPreview,
    @Default(false) bool submitting,
  }) = _LessonSessionState;

  LessonBlock? get currentBlock {
    final currentLesson = lesson;
    final currentProgress = progress;
    if (currentLesson == null || currentProgress == null) {
      return null;
    }

    if (currentProgress.currentBlockIndex >= currentLesson.blocks.length) {
      return null;
    }

    return currentLesson.blocks[currentProgress.currentBlockIndex];
  }
}
