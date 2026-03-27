import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../domain/models/lesson.dart';
import '../../domain/models/lesson_progress.dart';

@lazySingleton
class SupabaseLessonDataSource {
  SupabaseLessonDataSource() : _client = Supabase.instance.client;

  final SupabaseClient _client;

  Future<Lesson> getLesson(String lessonId) async {
    final data = await _client.from('lessons').select().eq('id', lessonId).single();
    return Lesson.fromJson(Map<String, Object?>.from(data));
  }

  Future<void> upsertProgress({
    required LessonProgress progress,
    required LessonBlockResult result,
  }) async {
    await _client.from('user_progress').upsert({
      'user_id': progress.userId,
      'lesson_id': progress.lessonId,
      'current_block_index': progress.currentBlockIndex,
      'answered_blocks': progress.answeredBlocks,
      'correct_answers': progress.correctAnswers,
      'earned_xp': progress.earnedXp,
      'is_completed': progress.isCompleted,
      'last_block_id': progress.lastBlockId,
      'last_block_type': result.blockType,
      'updated_at': (progress.updatedAt ?? DateTime.now()).toIso8601String(),
      'completed_at': progress.completedAt?.toIso8601String(),
    }, onConflict: 'user_id,lesson_id');
  }

  Future<void> upsertUserStats(UserStats stats) async {
    await _client.from('user_stats').upsert({
      'user_id': stats.userId,
      'total_xp': stats.totalXp,
      'level': stats.level,
      'total_lessons_completed': stats.totalLessonsCompleted,
      'total_blocks_answered': stats.totalBlocksAnswered,
      'total_correct_blocks': stats.totalCorrectBlocks,
      'updated_at': (stats.updatedAt ?? DateTime.now()).toIso8601String(),
    }, onConflict: 'user_id');
  }

  Future<void> completeLesson({
    required LessonSummary summary,
    required LessonProgress progress,
    required UserStats stats,
  }) async {
    await upsertProgress(
      progress: progress.copyWith(
        currentBlockIndex: summary.totalBlocks,
        isCompleted: true,
        completedAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      result: LessonBlockResult(
        lessonId: summary.lessonId,
        blockId: progress.lastBlockId ?? 'lesson-complete',
        blockType: 'complete',
        isCorrect: true,
        earnedXp: 0,
      ),
    );
    await upsertUserStats(stats);
  }
}
