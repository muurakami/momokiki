import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/lesson_progress.dart';
import 'package:momokiki/features/lessons/domain/services/xp_calculator.dart';

void main() {
  const calculator = XpCalculator();

  test('getLevelProgress returns fraction within current level span', () {
    const stats = UserStats(userId: 'user', totalXp: 80, level: 1);
    final progress = calculator.getLevelProgress(stats);

    expect(progress, inInclusiveRange(0, 1));
  });
}
