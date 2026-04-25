import '../models/lesson.dart';

class LessonFeedback {
  const LessonFeedback({
    required this.message,
    required this.shouldRetry,
    this.correctAnswerLabel,
  });

  final String message;
  final String? correctAnswerLabel;
  final bool shouldRetry;
}

class LessonFeedbackBuilder {
  const LessonFeedbackBuilder();

  LessonFeedback build({
    required LessonBlock block,
    required bool isCorrect,
  }) {
    return LessonFeedback(
      message: _messageFor(block: block, isCorrect: isCorrect),
      correctAnswerLabel: _correctAnswerLabelFor(block),
      shouldRetry: !isCorrect,
    );
  }

  String _messageFor({
    required LessonBlock block,
    required bool isCorrect,
  }) {
    if (isCorrect) {
      return 'Correct. Nice work.';
    }

    return switch (block) {
      QuizBlock(:final explanation) => explanation ?? 'That answer is not correct.',
      ChoiceBlock() => 'Review the prompt and choose the correct option.',
      SentenceBuilderBlock(:final explanation) =>
        explanation ?? 'Check the word order and try again.',
      CodeBlock() => 'Check the expected phrasing and try again.',
      _ => 'Try again.',
    };
  }

  String? _correctAnswerLabelFor(LessonBlock block) {
    return switch (block) {
      QuizBlock(:final correctAnswer) => correctAnswer,
      ChoiceBlock(:final options, :final correctOptionId) => _choiceLabel(
          options: options,
          correctOptionId: correctOptionId,
        ),
      SentenceBuilderBlock(
        :final tokens,
        :final correctTokenIds,
        :final correctAnswer,
      ) => correctAnswer ??
          _sentenceLabel(
            tokens: tokens,
            correctTokenIds: correctTokenIds,
          ),
      CodeBlock(:final expectedAnswer) => expectedAnswer,
      _ => null,
    };
  }

  String? _choiceLabel({
    required List<ChoiceOption> options,
    required String correctOptionId,
  }) {
    for (final option in options) {
      if (option.id == correctOptionId) {
        return option.label;
      }
    }

    return null;
  }

  String? _sentenceLabel({
    required List<SentenceToken> tokens,
    required List<String> correctTokenIds,
  }) {
    final labels = <String>[];
    for (final id in correctTokenIds) {
      final token = _tokenById(tokens: tokens, id: id);
      if (token == null) {
        return null;
      }
      labels.add(token.label);
    }

    return labels.join(' ');
  }

  SentenceToken? _tokenById({
    required List<SentenceToken> tokens,
    required String id,
  }) {
    for (final token in tokens) {
      if (token.id == id) {
        return token;
      }
    }

    return null;
  }
}
