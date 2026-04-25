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
    final cachedResult = await _readLessonSafely(
      source: _LessonSource.cache,
      loader: () => _cache.getLesson(lessonId),
    );
    final remoteResult = await _readLessonSafely(
      source: _LessonSource.remote,
      loader: () => _remote.getLesson(lessonId),
    );
    final assetResult = await _readLessonSafely(
      source: _LessonSource.asset,
      loader: () => _asset.getLesson(lessonId),
    );

    final candidates = [
      if (remoteResult.lesson != null) remoteResult,
      if (assetResult.lesson != null) assetResult,
      if (cachedResult.lesson != null) cachedResult,
    ];

    if (candidates.isEmpty) {
      final failure = remoteResult.error ?? assetResult.error ?? cachedResult.error;
      throw Exception('Lesson $lessonId is unavailable: ${failure ?? 'no source available'}');
    }

    final selected = candidates.reduce(_pickPreferredLesson).lesson!;
    final cachedLesson = cachedResult.lesson;

    if (_shouldRefreshCache(cachedLesson: cachedLesson, selectedLesson: selected)) {
      await _cache.saveLesson(selected);
    }

    return selected;
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

  Future<_ResolvedLesson> _readLessonSafely({
    required _LessonSource source,
    required Future<Lesson?> Function() loader,
  }) async {
    try {
      return _ResolvedLesson(source: source, lesson: await loader());
    } catch (error, stackTrace) {
      debugPrint('Failed to load lesson from ${source.name}: $error');
      debugPrintStack(stackTrace: stackTrace);
      return _ResolvedLesson(source: source, error: error);
    }
  }

  _ResolvedLesson _pickPreferredLesson(_ResolvedLesson left, _ResolvedLesson right) {
    final leftLesson = left.lesson;
    final rightLesson = right.lesson;
    if (leftLesson == null) {
      return right;
    }
    if (rightLesson == null) {
      return left;
    }

    if (leftLesson.version != rightLesson.version) {
      return leftLesson.version > rightLesson.version ? left : right;
    }

    return left.source.priority >= right.source.priority ? left : right;
  }

  bool _shouldRefreshCache({
    required Lesson? cachedLesson,
    required Lesson selectedLesson,
  }) {
    if (cachedLesson == null) {
      return true;
    }

    if (selectedLesson.version > cachedLesson.version) {
      return true;
    }

    return selectedLesson != cachedLesson;
  }
}

class _ResolvedLesson {
  const _ResolvedLesson({
    required this.source,
    this.lesson,
    this.error,
  });

  final _LessonSource source;
  final Lesson? lesson;
  final Object? error;
}

enum _LessonSource {
  remote(3),
  asset(2),
  cache(1);

  const _LessonSource(this.priority);

  final int priority;
}
