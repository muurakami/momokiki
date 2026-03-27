import '../models/lesson.dart';
import '../models/lesson_progress.dart';

abstract class LessonRepository {
  Future<Lesson> getLesson(String lessonId);

  Future<LessonProgress?> getProgress({
    required String userId,
    required String lessonId,
  });

  Future<UserStats> getUserStats(String userId);

  Future<void> cacheLesson(Lesson lesson);

  Future<void> saveProgress({
    required LessonProgress progress,
    required UserStats stats,
    required LessonBlockResult result,
  });

  Future<void> completeLesson({
    required LessonSummary summary,
    required LessonProgress progress,
    required UserStats stats,
  });

  Future<void> syncPendingProgress(String userId);
}
