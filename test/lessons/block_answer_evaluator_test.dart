import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/lesson.dart';
import 'package:momokiki/features/lessons/domain/services/block_answer_evaluator.dart';

void main() {
  const evaluator = BlockAnswerEvaluator();

  test('quiz block validates answer', () {
    const block = LessonBlock.quiz(
      id: 'quiz',
      question: 'What?',
      options: ['A', 'B'],
      correctAnswer: 'A',
    );

    expect(evaluator.evaluate(block: block, submittedAnswer: 'A'), isTrue);
    expect(evaluator.evaluate(block: block, submittedAnswer: 'B'), isFalse);
  });

  test('choice block validates selected option id', () {
    const block = LessonBlock.choice(
      id: 'choice',
      prompt: 'Pick',
      correctOptionId: 'o2',
      options: [
        ChoiceOption(id: 'o1', label: 'One'),
        ChoiceOption(id: 'o2', label: 'Two'),
      ],
    );

    expect(evaluator.evaluate(block: block, selectedOptionIds: ['o2']), isTrue);
    expect(evaluator.evaluate(block: block, selectedOptionIds: ['o1']), isFalse);
  });
}
