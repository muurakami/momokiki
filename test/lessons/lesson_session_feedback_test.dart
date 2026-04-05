import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/lesson_progress.dart';

void main() {
  test('wrong result keeps retry flag enabled', () {
    const result = LessonBlockResult(
      lessonId: 'lesson',
      blockId: 'b1',
      blockType: 'quiz',
      isCorrect: false,
      shouldRetry: true,
      feedbackMessage: 'Try again.',
    );

    expect(result.shouldRetry, isTrue);
    expect(result.feedbackMessage, 'Try again.');
  });
}
