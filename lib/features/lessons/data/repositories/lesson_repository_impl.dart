import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

import '../../domain/models/lesson.dart';
import '../../domain/models/lesson_progress.dart';
import '../../domain/repositories/lesson_repository.dart';
import '../datasources/asset_lesson_datasource.dart';
import '../datasources/drift_lesson_cache.dart';
import '../datasources/drift_lesson_progress_datasource.dart';
import '../datasources/supabase_lesson_datasource.dart';

@LazySingleton(as: LessonRepository)
class LessonRepositoryImpl implements LessonRepository {
  LessonRepositoryImpl(
    this._remote,
    this._cache,
    this._asset,
    this._progressLocal,
  );

  final SupabaseLessonDataSource _remote;
  final DriftLessonCache _cache;
  final AssetLessonDataSource _asset;
  final DriftLessonProgressDataSource _progressLocal;

  @override
  Future<Lesson> getLesson(String lessonId) async {
    final cached = await _cache.getLesson(lessonId);
    if (cached != null) {
      return cached;
    }

    try {
      final remote = await _remote.getLesson(lessonId);
      await _cache.saveLesson(remote);
      return remote;
    } catch (_) {
      final assetLesson = await _asset.getLesson(lessonId);
      await _cache.saveLesson(assetLesson);
      return assetLesson;
    }
  }

  @override
  Future<LessonProgress?> getProgress({
    required String userId,
    required String lessonId,
  }) {
    return _progressLocal.getProgress(userId: userId, lessonId: lessonId);
  }

  @override
  Future<UserStats> getUserStats(String userId) {
    return _progressLocal.getUserStats(userId);
  }

  @override
  Future<void> cacheLesson(Lesson lesson) => _cache.saveLesson(lesson);

  @override
  Future<void> saveProgress({
    required LessonProgress progress,
    required UserStats stats,
    required LessonBlockResult result,
  }) async {
    await _progressLocal.upsertProgress(progress);
    await _progressLocal.upsertUserStats(stats);

    final payload = ProgressSyncPayload(
      progress: progress,
      stats: stats,
      result: result,
    );

    try {
      await _remote.upsertProgress(progress: progress, result: result);
      await _remote.upsertUserStats(stats);
    } catch (_) {
      await _progressLocal.enqueueSync(payload);
    }
  }

  @override
  Future<void> saveAttempt(LessonAttempt attempt) {
    return _progressLocal.saveAttempt(attempt);
  }

  @override
  Future<List<LessonAttempt>> getAttempts({
    required String userId,
    required String lessonId,
  }) {
    return _progressLocal.getAttempts(userId: userId, lessonId: lessonId);
  }

  @override
  Future<void> completeLesson({
    required LessonSummary summary,
    required LessonProgress progress,
    required UserStats stats,
  }) async {
    await _progressLocal.upsertProgress(progress);
    await _progressLocal.upsertUserStats(stats);

    try {
      await _remote.completeLesson(
        summary: summary,
        progress: progress,
        stats: stats,
      );
    } catch (_) {
      await _progressLocal.enqueueSync(
        ProgressSyncPayload(
          progress: progress,
          stats: stats,
          result: LessonBlockResult(
            lessonId: summary.lessonId,
            blockId: progress.lastBlockId ?? 'lesson-complete',
            blockType: 'complete',
            isCorrect: true,
            earnedXp: 0,
          ),
        ),
      );
    }
  }

  @override
  Future<void> syncPendingProgress(String userId) async {
    final pending = await _progressLocal.getPendingSync(userId);
    for (final entry in pending) {
      final queueId = entry.$1;
      final payload = entry.$2;
      try {
        await _remote.upsertProgress(
          progress: payload.progress,
          result: payload.result,
        );
        await _remote.upsertUserStats(payload.stats);
        await _progressLocal.deleteSyncQueueItem(queueId);
      } catch (_) {
        break;
      }
    }
  }

  @override
  String toString() {
    debugPrint('LessonRepositoryImpl active: remote+local cache enabled');
    return super.toString();
  }
}
