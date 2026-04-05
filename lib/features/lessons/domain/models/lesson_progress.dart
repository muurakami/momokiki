import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_progress.freezed.dart';
part 'lesson_progress.g.dart';

@Freezed(fromJson: true, toJson: true)
class LessonProgress with _$LessonProgress {
  const LessonProgress._();

  const factory LessonProgress({
    required String lessonId,
    required String userId,
    @Default(0) int currentBlockIndex,
    @Default(0) int correctAnswers,
    @Default(0) int answeredBlocks,
    @Default(0) int attemptCount,
    @Default(0) int incorrectAnswers,
    @Default(0) int earnedXp,
    @Default(false) bool isCompleted,
    String? lastBlockId,
    @Default(<String>[]) List<String> completedBlockIds,
    DateTime? lastAttemptAt,
    DateTime? updatedAt,
    DateTime? completedAt,
  }) = _LessonProgress;

  double get accuracy {
    if (answeredBlocks == 0) {
      return 0;
    }

    return correctAnswers / answeredBlocks;
  }

  factory LessonProgress.fromJson(Map<String, Object?> json) =>
      _$LessonProgressFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class LessonBlockResult with _$LessonBlockResult {
  const factory LessonBlockResult({
    required String lessonId,
    required String blockId,
    required String blockType,
    required bool isCorrect,
    @Default(0) int earnedXp,
    @Default(1) int attemptNumber,
    int? timeSpentSeconds,
    String? submittedAnswer,
    String? correctAnswerLabel,
    String? feedbackMessage,
    @Default(false) bool shouldRetry,
    @Default(<String>[]) List<String> selectedOptionIds,
  }) = _LessonBlockResult;

  factory LessonBlockResult.fromJson(Map<String, Object?> json) =>
      _$LessonBlockResultFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class LessonSummary with _$LessonSummary {
  const LessonSummary._();

  const factory LessonSummary({
    required String lessonId,
    required int totalBlocks,
    required int correctAnswers,
    required int earnedXp,
    required double accuracy,
    @Default(0) int totalAttempts,
    @Default(1) int levelBefore,
    @Default(1) int levelAfter,
    @Default(0) int totalXpAfter,
    String? nextLessonId,
  }) = _LessonSummary;

  factory LessonSummary.fromJson(Map<String, Object?> json) =>
      _$LessonSummaryFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class UserStats with _$UserStats {
  const factory UserStats({
    required String userId,
    @Default(0) int totalXp,
    @Default(1) int level,
    @Default(0) int totalLessonsCompleted,
    @Default(0) int totalBlocksAnswered,
    @Default(0) int totalCorrectBlocks,
    DateTime? updatedAt,
  }) = _UserStats;

  factory UserStats.fromJson(Map<String, Object?> json) =>
      _$UserStatsFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class ProgressSyncPayload with _$ProgressSyncPayload {
  const factory ProgressSyncPayload({
    required LessonProgress progress,
    required UserStats stats,
    required LessonBlockResult result,
  }) = _ProgressSyncPayload;

  factory ProgressSyncPayload.fromJson(Map<String, Object?> json) =>
      _$ProgressSyncPayloadFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
class LessonAttempt with _$LessonAttempt {
  const factory LessonAttempt({
    required String userId,
    required String lessonId,
    required String blockId,
    required int attemptNumber,
    String? submittedAnswer,
    @Default(<String>[]) List<String> selectedOptionIds,
    required bool isCorrect,
    String? feedbackMessage,
    @Default(0) int earnedXp,
    DateTime? createdAt,
  }) = _LessonAttempt;

  factory LessonAttempt.fromJson(Map<String, Object?> json) =>
      _$LessonAttemptFromJson(json);
}
