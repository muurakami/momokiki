import '../models/lesson.dart';

class BlockAnswerEvaluator {
  const BlockAnswerEvaluator();

  bool evaluate({
    required LessonBlock block,
    String? submittedAnswer,
    List<String> selectedOptionIds = const <String>[],
  }) {
    return block.when(
      text: (_, __, ___, ____, _____, ______, _______) => true,
      quiz: (_, __, ___, ____, correctAnswer, _____, ______) =>
          _normalize(submittedAnswer) == _normalize(correctAnswer),
      video: (_, __, ___, ____, _____, ______, _______) => true,
      code: (_, __, ___, ____, _____, expectedAnswer, ______, _______) =>
          expectedAnswer == null || expectedAnswer.isEmpty
              ? true
              : _normalize(submittedAnswer) == _normalize(expectedAnswer),
      choice: (_, __, ___, ____, correctOptionId, multiple, ______) => multiple == true
          ? selectedOptionIds.length == 1 && selectedOptionIds.first == correctOptionId
          : selectedOptionIds.length == 1 && selectedOptionIds.first == correctOptionId,
      unknown: (_, __, ___, ____, _____) => false,
    );
  }

  String _normalize(String? value) => value?.trim().toLowerCase() ?? '';
}
