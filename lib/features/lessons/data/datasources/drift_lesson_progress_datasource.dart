import 'dart:convert';

import 'package:drift/drift.dart' as drift;
import 'package:injectable/injectable.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/models/lesson_progress.dart';

@lazySingleton
class DriftLessonProgressDataSource {
  DriftLessonProgressDataSource(this._database);

  final AppDatabase _database;

  Future<LessonProgress?> getProgress({
    required String userId,
    required String lessonId,
  }) async {
    final row = await (_database.select(_database.lessonProgressTable)
          ..where((tbl) => tbl.userId.equals(userId) & tbl.lessonId.equals(lessonId)))
        .getSingleOrNull();

    if (row == null) {
      return null;
    }

    return LessonProgress(
      lessonId: row.lessonId,
      userId: row.userId,
      currentBlockIndex: row.currentBlockIndex,
      correctAnswers: row.correctAnswers,
      answeredBlocks: row.answeredBlocks,
      earnedXp: row.earnedXp,
      isCompleted: row.isCompleted,
      lastBlockId: row.lastBlockId,
      updatedAt: row.updatedAt,
      completedAt: row.completedAt,
    );
  }

  Future<void> upsertProgress(LessonProgress progress) async {
    await _database.into(_database.lessonProgressTable).insertOnConflictUpdate(
          LessonProgressTableCompanion.insert(
            userId: progress.userId,
            lessonId: progress.lessonId,
            currentBlockIndex: drift.Value(progress.currentBlockIndex),
            answeredBlocks: drift.Value(progress.answeredBlocks),
            correctAnswers: drift.Value(progress.correctAnswers),
            earnedXp: drift.Value(progress.earnedXp),
            isCompleted: drift.Value(progress.isCompleted),
            lastBlockId: drift.Value(progress.lastBlockId),
            updatedAt: drift.Value(progress.updatedAt),
            completedAt: drift.Value(progress.completedAt),
          ),
        );
  }

  Future<UserStats> getUserStats(String userId) async {
    final row = await (_database.select(_database.userStatsTable)
          ..where((tbl) => tbl.userId.equals(userId)))
        .getSingleOrNull();

    if (row == null) {
      return UserStats(userId: userId);
    }

    return UserStats(
      userId: row.userId,
      totalXp: row.totalXp,
      level: row.level,
      totalLessonsCompleted: row.totalLessonsCompleted,
      totalBlocksAnswered: row.totalBlocksAnswered,
      totalCorrectBlocks: row.totalCorrectBlocks,
      updatedAt: row.updatedAt,
    );
  }

  Future<void> upsertUserStats(UserStats stats) async {
    await _database.into(_database.userStatsTable).insertOnConflictUpdate(
          UserStatsTableCompanion.insert(
            userId: stats.userId,
            totalXp: drift.Value(stats.totalXp),
            level: drift.Value(stats.level),
            totalLessonsCompleted: drift.Value(stats.totalLessonsCompleted),
            totalBlocksAnswered: drift.Value(stats.totalBlocksAnswered),
            totalCorrectBlocks: drift.Value(stats.totalCorrectBlocks),
            updatedAt: drift.Value(stats.updatedAt),
          ),
        );
  }

  Future<void> enqueueSync(ProgressSyncPayload payload) async {
    await _database.into(_database.lessonSyncQueueTable).insert(
          LessonSyncQueueTableCompanion.insert(
            userId: payload.progress.userId,
            lessonId: payload.progress.lessonId,
            payloadJson: jsonEncode(payload.toJson()),
          ),
        );
  }

  Future<List<(int, ProgressSyncPayload)>> getPendingSync(String userId) async {
    final rows = await (_database.select(_database.lessonSyncQueueTable)
          ..where((tbl) => tbl.userId.equals(userId))
          ..orderBy([(tbl) => drift.OrderingTerm.asc(tbl.createdAt)]))
        .get();

    return rows
        .map(
          (row) => (
            row.id,
            ProgressSyncPayload.fromJson(
              jsonDecode(row.payloadJson) as Map<String, Object?>,
            ),
          ),
        )
        .toList();
  }

  Future<void> deleteSyncQueueItem(int id) async {
    await (_database.delete(_database.lessonSyncQueueTable)
          ..where((tbl) => tbl.id.equals(id)))
        .go();
  }
}
