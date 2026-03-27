import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/lesson.dart';
import 'package:momokiki/features/lessons/domain/models/lesson_progress.dart';
import 'package:momokiki/features/lessons/domain/services/xp_calculator.dart';

void main() {
  const calculator = XpCalculator();

  test('getRequiredXP uses specified formula', () {
    expect(calculator.getRequiredXP(1), 50);
    expect(calculator.getRequiredXP(2), 141);
    expect(calculator.getRequiredXP(3), 260);
  });

  test('calculateBlockXp returns positive XP for correct code block', () {
    const lesson = Lesson(
      id: 'lesson',
      title: 'Lesson',
      meta: LessonMeta(title: 'Lesson', difficulty: 2),
      blocks: <LessonBlock>[],
    );
    const stats = UserStats(userId: 'user', level: 2, totalBlocksAnswered: 10, totalCorrectBlocks: 8);
    const block = LessonBlock.code(
      id: 'code',
      prompt: 'Solve',
      codeSnippet: 'print()',
      expectedAnswer: 'ok',
    );

    final xp = calculator.calculateBlockXp(
      block: block,
      lesson: lesson,
      stats: stats,
      isCorrect: true,
    );

    expect(xp, greaterThan(18));
  });
}
