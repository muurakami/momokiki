import 'package:drift/drift.dart' as drift;

import '../../../../core/database/app_database.dart';
import '../../../lessons/domain/models/lesson_progress.dart';
import '../../domain/models/user_statistics.dart';

class DriftStatsDataSource {
  DriftStatsDataSource(this._database);

  final AppDatabase _database;

  Future<UserStats> getLessonStats(String userId) async {
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

  Future<int> getCompletedLessonsCount(String userId) async {
    final rows = await (_database.select(_database.lessonProgressTable)
          ..where((tbl) =>
              tbl.userId.equals(userId) & tbl.isCompleted.equals(true)))
        .get();
    return rows.length;
  }

  Future<int> getLearnedCardsCount() async {
    final rows = await _database.select(_database.practiceCardTable).get();
    return rows.where(_isLearnedCard).length;
  }

  Future<List<StatsActivityEvent>> getActivityEvents(String userId) async {
    final lessonAttempts = await (_database.select(_database.lessonAttemptTable)
          ..where((tbl) => tbl.userId.equals(userId))
          ..orderBy([(tbl) => drift.OrderingTerm.asc(tbl.createdAt)]))
        .get();

    final practiceReviews =
        await (_database.select(_database.practiceReviewTable)
              ..orderBy([(tbl) => drift.OrderingTerm.asc(tbl.reviewedAt)]))
            .get();

    final events = <StatsActivityEvent>[
      ...lessonAttempts.map(
        (attempt) => StatsActivityEvent(
          occurredAt: attempt.createdAt,
          source: StatsActivitySource.lesson,
        ),
      ),
      ...practiceReviews.map(
        (review) => StatsActivityEvent(
          occurredAt: review.reviewedAt,
          source: StatsActivitySource.review,
        ),
      ),
    ];

    events.sort((left, right) => left.occurredAt.compareTo(right.occurredAt));
    return events;
  }

  bool _isLearnedCard(PracticeCardTableData card) {
    return card.lastReviewedAt != null || card.reps > 0 || card.queue != 'new';
  }
}
