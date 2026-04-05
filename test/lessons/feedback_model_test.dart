import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/lesson_progress.dart';

void main() {
  test('LessonBlockResult stores retry feedback fields', () {
    const result = LessonBlockResult(
      lessonId: 'lesson',
      blockId: 'block',
      blockType: 'quiz',
      isCorrect: false,
      attemptNumber: 2,
      correctAnswerLabel: 'Hello',
      feedbackMessage: 'Try again',
      shouldRetry: true,
    );

    expect(result.attemptNumber, 2);
    expect(result.correctAnswerLabel, 'Hello');
    expect(result.shouldRetry, isTrue);
  });
}
