import 'dart:math';

import '../models/lesson.dart';
import '../models/lesson_progress.dart';

class XpCalculator {
  const XpCalculator();

  int getRequiredXP(int level) => (50 * pow(level, 1.5)).round();

  int calculateBlockXp({
    required LessonBlock block,
    required Lesson lesson,
    required UserStats stats,
    required bool isCorrect,
  }) {
    if (!isCorrect) {
      return 0;
    }

    final baseXp = switch (block.blockType) {
      'text' => 5,
      'video' => 6,
      'quiz' => 12,
      'choice' => 14,
      'code' => 18,
      _ => 0,
    };

    final difficultyBonus = max(0, lesson.meta.difficulty - 1) * 3;
    final levelBonus = min(6, max(0, stats.level - 1));
    final accuracyBoost = stats.totalBlocksAnswered == 0
        ? 0
        : ((stats.totalCorrectBlocks / stats.totalBlocksAnswered) * 4).round();

    return baseXp + difficultyBonus + levelBonus + accuracyBoost;
  }

  UserStats applyEarnedXp({
    required UserStats stats,
    required int earnedXp,
    required bool lessonCompleted,
    required bool isCorrect,
  }) {
    var totalXp = stats.totalXp + earnedXp;
    var level = stats.level;

    while (totalXp >= getRequiredXP(level + 1)) {
      level += 1;
    }

    return stats.copyWith(
      totalXp: totalXp,
      level: level,
      totalLessonsCompleted:
          stats.totalLessonsCompleted + (lessonCompleted ? 1 : 0),
      totalBlocksAnswered: stats.totalBlocksAnswered + 1,
      totalCorrectBlocks: stats.totalCorrectBlocks + (isCorrect ? 1 : 0),
      updatedAt: DateTime.now(),
    );
  }

  LessonSummary summarize({
    required Lesson lesson,
    required LessonProgress progress,
  }) {
    return LessonSummary(
      lessonId: lesson.id,
      totalBlocks: lesson.blocks.length,
      correctAnswers: progress.correctAnswers,
      earnedXp: progress.earnedXp,
      accuracy: progress.accuracy,
      nextLessonId: lesson.nextLessonId,
    );
  }
}
