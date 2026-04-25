import '../../domain/models/user_statistics.dart';
import '../../domain/repositories/stats_repository.dart';
import '../datasources/drift_stats_datasource.dart';

class StatsRepositoryImpl implements StatsRepository {
  StatsRepositoryImpl(this._local);

  final DriftStatsDataSource _local;

  @override
  Future<StatsDashboard> getDashboard(StatsProfileSnapshot profile) async {
    final lessonStats = await _local.getLessonStats(profile.userId);
    final completedLessons =
        await _local.getCompletedLessonsCount(profile.userId);
    final cardsLearned = await _local.getLearnedCardsCount();
    final activityEvents = await _local.getActivityEvents(profile.userId);

    return StatsDashboard(
      overview: StatsOverview(
        registeredAt: profile.registeredAt,
        displayName: profile.displayName,
        lessonsCompleted: lessonStats.totalLessonsCompleted > completedLessons
            ? lessonStats.totalLessonsCompleted
            : completedLessons,
        cardsLearned: cardsLearned,
        totalXp: lessonStats.totalXp > 0
            ? lessonStats.totalXp
            : profile.fallbackTotalXp,
        currentStreak: profile.currentStreak,
        longestStreak: profile.longestStreak,
      ),
      activityEvents: activityEvents,
    );
  }
}
