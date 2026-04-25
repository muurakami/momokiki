import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/di/injection.dart';
import '../../../auth/presentation/notifiers/auth_notifier.dart';
import '../../data/datasources/drift_stats_datasource.dart';
import '../../data/repositories/stats_repository_impl.dart';
import '../../domain/models/user_statistics.dart';
import '../../domain/repositories/stats_repository.dart';
import '../../domain/services/stats_analytics_service.dart';

final statsPeriodProvider =
    StateProvider<StatsPeriod>((ref) => StatsPeriod.week);

final statsAnalyticsProvider = Provider<StatsAnalyticsService>(
  (ref) => const StatsAnalyticsService(),
);

final statsLocalDataSourceProvider = Provider<DriftStatsDataSource>(
  (ref) => DriftStatsDataSource(getIt<AppDatabase>()),
);

final statsRepositoryProvider = Provider<StatsRepository>(
  (ref) => StatsRepositoryImpl(ref.watch(statsLocalDataSourceProvider)),
);

final statsDashboardProvider = FutureProvider<StatsDashboard>((ref) async {
  final profile = await ref.watch(authNotifierProvider.future);
  if (profile == null) {
    return StatsDashboard.empty();
  }

  return ref.watch(statsRepositoryProvider).getDashboard(
        StatsProfileSnapshot(
          userId: profile.id,
          registeredAt: profile.createdAt,
          displayName: profile.displayName,
          currentStreak: profile.streakDays,
          longestStreak: profile.longestStreak,
          fallbackTotalXp: profile.xpTotal,
        ),
      );
});

final statsScreenStateProvider = Provider<AsyncValue<StatsScreenState>>((ref) {
  final period = ref.watch(statsPeriodProvider);
  final analytics = ref.watch(statsAnalyticsProvider);
  final dashboard = ref.watch(statsDashboardProvider);

  return dashboard.whenData(
    (value) => analytics.build(
      dashboard: value,
      period: period,
    ),
  );
});
