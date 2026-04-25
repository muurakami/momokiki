import 'dart:math' as math;

import '../models/user_statistics.dart';

class StatsAnalyticsService {
  const StatsAnalyticsService();

  StatsScreenState build({
    required StatsDashboard dashboard,
    required StatsPeriod period,
    DateTime? now,
  }) {
    final reference = now ?? DateTime.now();
    final chartBuckets = _buildChartBuckets(
      events: dashboard.activityEvents,
      period: period,
      now: reference,
      registeredAt: dashboard.overview.registeredAt,
    );
    final heatmapCells = _buildHeatmap(
      events: dashboard.activityEvents,
      registeredAt: dashboard.overview.registeredAt,
      now: reference,
    );

    final totalActivity = chartBuckets.fold<int>(
      0,
      (sum, bucket) => sum + bucket.count,
    );
    final peakBucketValue = chartBuckets.fold<int>(
      0,
      (peak, bucket) => math.max(peak, bucket.count),
    );
    final heatmapMaxCount = heatmapCells.fold<int>(
      0,
      (peak, cell) => math.max(peak, cell.count),
    );
    final activeDays = heatmapCells.where((cell) => cell.count > 0).length;

    return StatsScreenState(
      overview: dashboard.overview,
      period: period,
      chartBuckets: chartBuckets,
      heatmapCells: heatmapCells,
      totalActivity: totalActivity,
      peakBucketValue: peakBucketValue,
      heatmapMaxCount: heatmapMaxCount,
      activeDays: activeDays,
    );
  }

  List<StatsChartBucket> _buildChartBuckets({
    required List<StatsActivityEvent> events,
    required StatsPeriod period,
    required DateTime now,
    required DateTime registeredAt,
  }) {
    final specs = switch (period) {
      StatsPeriod.last24Hours => _last24HourSpecs(now),
      StatsPeriod.today => _todaySpecs(now),
      StatsPeriod.week => _last7DaySpecs(now),
      StatsPeriod.month => _last30DaySpecs(now),
      StatsPeriod.year => _last12MonthSpecs(now),
      StatsPeriod.allTime => _allTimeSpecs(registeredAt, now),
    };

    return specs
        .map(
          (spec) => StatsChartBucket(
            start: spec.start,
            end: spec.end,
            label: spec.label,
            shortLabel: spec.shortLabel,
            count: _countEvents(events, spec.start, spec.end),
          ),
        )
        .toList(growable: false);
  }

  List<StatsHeatmapCell> _buildHeatmap({
    required List<StatsActivityEvent> events,
    required DateTime registeredAt,
    required DateTime now,
  }) {
    final today = _startOfDay(now);
    final firstTrackedDay = _startOfDay(registeredAt);
    final heatmapStart = _startOfWeek(firstTrackedDay);
    final heatmapEnd = _endOfWeek(today);

    final countsByDay = <DateTime, int>{};
    for (final event in events) {
      final day = _startOfDay(event.occurredAt);
      countsByDay[day] = (countsByDay[day] ?? 0) + event.count;
    }

    final dayCounts = <int>[];
    for (var day = heatmapStart;
        !day.isAfter(heatmapEnd);
        day = day.add(const Duration(days: 1))) {
      if (day.isBefore(firstTrackedDay) || day.isAfter(today)) {
        dayCounts.add(0);
        continue;
      }

      dayCounts.add(countsByDay[day] ?? 0);
    }

    final maxCount = dayCounts.fold<int>(0, math.max);
    final cells = <StatsHeatmapCell>[];
    var index = 0;
    for (var day = heatmapStart;
        !day.isAfter(heatmapEnd);
        day = day.add(const Duration(days: 1))) {
      final count = dayCounts[index];
      cells.add(
        StatsHeatmapCell(
          day: day,
          count: count,
          intensity: _heatmapIntensity(count: count, maxCount: maxCount),
        ),
      );
      index += 1;
    }

    return cells;
  }

  int _countEvents(
    List<StatsActivityEvent> events,
    DateTime start,
    DateTime end,
  ) {
    var total = 0;
    for (final event in events) {
      if (event.occurredAt.isBefore(start) || !event.occurredAt.isBefore(end)) {
        continue;
      }

      total += event.count;
    }

    return total;
  }

  int _heatmapIntensity({required int count, required int maxCount}) {
    if (count <= 0 || maxCount <= 0) {
      return 0;
    }

    final ratio = count / maxCount;
    if (ratio >= 0.75) {
      return 4;
    }
    if (ratio >= 0.5) {
      return 3;
    }
    if (ratio >= 0.25) {
      return 2;
    }
    return 1;
  }

  List<_BucketSpec> _last24HourSpecs(DateTime now) {
    final currentHour = _startOfHour(now);
    final start = currentHour.subtract(const Duration(hours: 23));
    return List<_BucketSpec>.generate(24, (index) {
      final bucketStart = start.add(Duration(hours: index));
      final bucketEnd = bucketStart.add(const Duration(hours: 1));
      final hour = bucketStart.hour.toString().padLeft(2, '0');
      return _BucketSpec(
        start: bucketStart,
        end: bucketEnd,
        label: '${_formatMonthDay(bucketStart)} $hour:00',
        shortLabel: hour,
      );
    });
  }

  List<_BucketSpec> _todaySpecs(DateTime now) {
    final start = _startOfDay(now);
    return List<_BucketSpec>.generate(24, (index) {
      final bucketStart = start.add(Duration(hours: index));
      final bucketEnd = bucketStart.add(const Duration(hours: 1));
      final hour = bucketStart.hour.toString().padLeft(2, '0');
      return _BucketSpec(
        start: bucketStart,
        end: bucketEnd,
        label: '${_formatMonthDay(bucketStart)} $hour:00',
        shortLabel: hour,
      );
    });
  }

  List<_BucketSpec> _last7DaySpecs(DateTime now) {
    final today = _startOfDay(now);
    final start = today.subtract(const Duration(days: 6));
    return List<_BucketSpec>.generate(7, (index) {
      final bucketStart = start.add(Duration(days: index));
      final bucketEnd = bucketStart.add(const Duration(days: 1));
      return _BucketSpec(
        start: bucketStart,
        end: bucketEnd,
        label: _formatFullDate(bucketStart),
        shortLabel: _weekdayShort(bucketStart.weekday),
      );
    });
  }

  List<_BucketSpec> _last30DaySpecs(DateTime now) {
    final today = _startOfDay(now);
    final start = today.subtract(const Duration(days: 29));
    return List<_BucketSpec>.generate(30, (index) {
      final bucketStart = start.add(Duration(days: index));
      final bucketEnd = bucketStart.add(const Duration(days: 1));
      return _BucketSpec(
        start: bucketStart,
        end: bucketEnd,
        label: _formatFullDate(bucketStart),
        shortLabel: bucketStart.day.toString(),
      );
    });
  }

  List<_BucketSpec> _last12MonthSpecs(DateTime now) {
    final currentMonth = _startOfMonth(now);
    final startMonth = _addMonths(currentMonth, -11);
    return List<_BucketSpec>.generate(12, (index) {
      final bucketStart = _addMonths(startMonth, index);
      final bucketEnd = _addMonths(bucketStart, 1);
      return _BucketSpec(
        start: bucketStart,
        end: bucketEnd,
        label: _formatMonthYear(bucketStart),
        shortLabel: _monthShort(bucketStart.month),
      );
    });
  }

  List<_BucketSpec> _allTimeSpecs(DateTime registeredAt, DateTime now) {
    final registeredMonth = _startOfMonth(registeredAt);
    final currentMonth = _startOfMonth(now);
    final monthCount = ((currentMonth.year - registeredMonth.year) * 12) +
        currentMonth.month -
        registeredMonth.month +
        1;

    return List<_BucketSpec>.generate(monthCount, (index) {
      final bucketStart = _addMonths(registeredMonth, index);
      final bucketEnd = _addMonths(bucketStart, 1);
      return _BucketSpec(
        start: bucketStart,
        end: bucketEnd,
        label: _formatMonthYear(bucketStart),
        shortLabel: _monthShort(bucketStart.month),
      );
    });
  }

  DateTime _startOfDay(DateTime value) =>
      DateTime(value.year, value.month, value.day);

  DateTime _startOfHour(DateTime value) =>
      DateTime(value.year, value.month, value.day, value.hour);

  DateTime _startOfMonth(DateTime value) => DateTime(value.year, value.month);

  DateTime _startOfWeek(DateTime value) =>
      value.subtract(Duration(days: value.weekday - DateTime.monday));

  DateTime _endOfWeek(DateTime value) => value.add(
        Duration(days: DateTime.daysPerWeek - value.weekday),
      );

  DateTime _addMonths(DateTime value, int months) {
    final monthIndex = value.month - 1 + months;
    final year = value.year + monthIndex ~/ 12;
    final month = monthIndex % 12 + 1;
    return DateTime(year, month);
  }

  String _weekdayShort(int weekday) {
    const weekdays = <String>['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return weekdays[weekday - 1];
  }

  String _monthShort(int month) {
    const months = <String>[
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }

  String _formatMonthDay(DateTime value) =>
      '${_monthShort(value.month)} ${value.day}';

  String _formatMonthYear(DateTime value) =>
      '${_monthShort(value.month)} ${value.year}';

  String _formatFullDate(DateTime value) =>
      '${_monthShort(value.month)} ${value.day}, ${value.year}';
}

class _BucketSpec {
  const _BucketSpec({
    required this.start,
    required this.end,
    required this.label,
    required this.shortLabel,
  });

  final DateTime start;
  final DateTime end;
  final String label;
  final String shortLabel;
}
