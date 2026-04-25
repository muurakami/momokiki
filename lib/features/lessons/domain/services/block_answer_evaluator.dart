import '../models/lesson.dart';

class BlockAnswerEvaluator {
  const BlockAnswerEvaluator();

  bool evaluate({
    required LessonBlock block,
    String? submittedAnswer,
    List<String> selectedOptionIds = const <String>[],
  }) {
    return switch (block) {
      TextBlock() => true,
      QuizBlock(:final correctAnswer) => _normalize(submittedAnswer) == _normalize(correctAnswer),
      VideoBlock() => true,
      CodeBlock(:final expectedAnswer) => expectedAnswer == null || expectedAnswer.isEmpty
          ? true
          : _normalize(submittedAnswer) == _normalize(expectedAnswer),
      ChoiceBlock(:final correctOptionId) =>
        selectedOptionIds.length == 1 && selectedOptionIds.first == correctOptionId,
      SentenceBuilderBlock(:final correctTokenIds) => _matchesOrderedTokens(
          selectedOptionIds: selectedOptionIds,
          correctTokenIds: correctTokenIds,
        ),
      UnknownLessonBlock() => false,
    };
  }

  String _normalize(String? value) => value?.trim().toLowerCase() ?? '';

  bool _matchesOrderedTokens({
    required List<String> selectedOptionIds,
    required List<String> correctTokenIds,
  }) {
    if (selectedOptionIds.length != correctTokenIds.length) {
      return false;
    }

    for (var index = 0; index < correctTokenIds.length; index += 1) {
      if (selectedOptionIds[index] != correctTokenIds[index]) {
        return false;
      }
    }

    return true;
  }
}
