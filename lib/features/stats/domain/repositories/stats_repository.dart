import '../models/user_statistics.dart';

abstract class StatsRepository {
  Future<StatsDashboard> getDashboard(StatsProfileSnapshot profile);
}
