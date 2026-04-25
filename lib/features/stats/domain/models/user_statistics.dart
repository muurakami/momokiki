import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_statistics.freezed.dart';

enum StatsPeriod {
  last24Hours,
  today,
  week,
  month,
  year,
  allTime,
}

extension StatsPeriodX on StatsPeriod {
  String get chipLabel => switch (this) {
        StatsPeriod.last24Hours => '24H',
        StatsPeriod.today => 'Day',
        StatsPeriod.week => 'Week',
        StatsPeriod.month => 'Month',
        StatsPeriod.year => 'Year',
        StatsPeriod.allTime => 'All',
      };

  String get title => switch (this) {
        StatsPeriod.last24Hours => 'Last 24 hours',
        StatsPeriod.today => 'Today',
        StatsPeriod.week => 'Last 7 days',
        StatsPeriod.month => 'Last 30 days',
        StatsPeriod.year => 'Last 12 months',
        StatsPeriod.allTime => 'All time',
      };
}

enum StatsActivitySource {
  lesson,
  review,
}

@freezed
class StatsProfileSnapshot with _$StatsProfileSnapshot {
  const factory StatsProfileSnapshot({
    required String userId,
    required DateTime registeredAt,
    @Default('Learner') String displayName,
    @Default(0) int currentStreak,
    @Default(0) int longestStreak,
    @Default(0) int fallbackTotalXp,
  }) = _StatsProfileSnapshot;
}

@freezed
class StatsOverview with _$StatsOverview {
  const factory StatsOverview({
    required DateTime registeredAt,
    @Default('Learner') String displayName,
    @Default(0) int lessonsCompleted,
    @Default(0) int cardsLearned,
    @Default(0) int totalXp,
    @Default(0) int currentStreak,
    @Default(0) int longestStreak,
  }) = _StatsOverview;
}

@freezed
class StatsActivityEvent with _$StatsActivityEvent {
  const factory StatsActivityEvent({
    required DateTime occurredAt,
    required StatsActivitySource source,
    @Default(1) int count,
  }) = _StatsActivityEvent;
}

@freezed
class StatsDashboard with _$StatsDashboard {
  const factory StatsDashboard({
    required StatsOverview overview,
    @Default(<StatsActivityEvent>[]) List<StatsActivityEvent> activityEvents,
  }) = _StatsDashboard;

  factory StatsDashboard.empty({DateTime? registeredAt}) => StatsDashboard(
        overview: StatsOverview(registeredAt: registeredAt ?? DateTime.now()),
      );
}

@freezed
class StatsChartBucket with _$StatsChartBucket {
  const factory StatsChartBucket({
    required DateTime start,
    required DateTime end,
    required String label,
    required String shortLabel,
    @Default(0) int count,
  }) = _StatsChartBucket;
}

@freezed
class StatsHeatmapCell with _$StatsHeatmapCell {
  const factory StatsHeatmapCell({
    required DateTime day,
    @Default(0) int count,
    @Default(0) int intensity,
  }) = _StatsHeatmapCell;
}

@freezed
class StatsScreenState with _$StatsScreenState {
  const StatsScreenState._();

  const factory StatsScreenState({
    required StatsOverview overview,
    required StatsPeriod period,
    @Default(<StatsChartBucket>[]) List<StatsChartBucket> chartBuckets,
    @Default(<StatsHeatmapCell>[]) List<StatsHeatmapCell> heatmapCells,
    @Default(0) int totalActivity,
    @Default(0) int peakBucketValue,
    @Default(0) int heatmapMaxCount,
    @Default(0) int activeDays,
  }) = _StatsScreenState;

  double get averageActivityPerBucket {
    if (chartBuckets.isEmpty) {
      return 0;
    }

    return totalActivity / chartBuckets.length;
  }
}
