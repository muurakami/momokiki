import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momokiki/features/lessons/domain/models/lesson.dart';
import 'package:momokiki/features/lessons/domain/models/lesson_progress.dart';
import 'package:momokiki/features/lessons/domain/services/block_answer_evaluator.dart';
import 'package:momokiki/features/lessons/domain/services/xp_calculator.dart';
import 'package:momokiki/features/lessons/presentation/widgets/block_router.dart';

import 'test_helpers/test_theme.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;

  testWidgets('lesson flow from asset JSON reaches result screen', (tester) async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler('flutter/assets', (message) async {
      final key = utf8.decode(message!.buffer.asUint8List());
      if (key != 'assets/lessons/lesson_intro_1.json') {
        return null;
      }

      const json = '''
      {
        "id": "lesson_intro_1",
        "title": "Greetings Basics",
        "meta": {"title": "Greetings Basics", "difficulty": 1, "estimated_xp": 45},
        "blocks": [
          {"id": "b1", "type": "text", "title": "Hello", "content": "Konnichiwa is a common daytime greeting."},
          {"id": "b2", "type": "quiz", "question": "What does Konnichiwa mean?", "options": ["Hello", "Good night"], "correct_answer": "Hello"},
          {"id": "b3", "type": "choice", "prompt": "Choose the polite greeting.", "correct_option_id": "o1", "options": [{"id": "o1", "label": "Konnichiwa"}, {"id": "o2", "label": "Sayonara"}]}
        ]
      }
      ''';

      return ByteData.view(Uint8List.fromList(utf8.encode(json)).buffer);
    });

    final lessonJson = await rootBundle.loadString('assets/lessons/lesson_intro_1.json');
    final lesson = Lesson.fromJson(jsonDecode(lessonJson) as Map<String, Object?>);
    final evaluator = const BlockAnswerEvaluator();
    final calculator = const XpCalculator();

    var progress = const LessonProgress(lessonId: 'lesson_intro_1', userId: 'guest-user');
    var stats = const UserStats(userId: 'guest-user');

    await tester.pumpWidget(
      MaterialApp(
        theme: buildTestTheme(),
        home: Scaffold(
          body: LessonBlockRouter(
            block: lesson.blocks[0],
            onSubmitted: ({submittedAnswer, selectedOptionIds = const <String>[]}) async {
              final isCorrect = evaluator.evaluate(
                block: lesson.blocks[0],
                submittedAnswer: submittedAnswer,
                selectedOptionIds: selectedOptionIds,
              );
              final earnedXp = calculator.calculateBlockXp(
                block: lesson.blocks[0],
                lesson: lesson,
                stats: stats,
                isCorrect: isCorrect,
              );
              progress = progress.copyWith(
                currentBlockIndex: 1,
                answeredBlocks: 1,
                correctAnswers: 1,
                earnedXp: earnedXp,
              );
              stats = calculator.applyEarnedXp(
                stats: stats,
                earnedXp: earnedXp,
                lessonCompleted: false,
                isCorrect: isCorrect,
              );
            },
          ),
        ),
      ),
    );

    expect(find.text('Continue'), findsOneWidget);
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        theme: buildTestTheme(),
        home: Scaffold(
          body: LessonBlockRouter(
            block: lesson.blocks[1],
            onSubmitted: ({submittedAnswer, selectedOptionIds = const <String>[]}) async {
              final isCorrect = evaluator.evaluate(
                block: lesson.blocks[1],
                submittedAnswer: submittedAnswer,
                selectedOptionIds: selectedOptionIds,
              );
              final earnedXp = calculator.calculateBlockXp(
                block: lesson.blocks[1],
                lesson: lesson,
                stats: stats,
                isCorrect: isCorrect,
              );
              progress = progress.copyWith(
                currentBlockIndex: 2,
                answeredBlocks: 2,
                correctAnswers: progress.correctAnswers + 1,
                earnedXp: progress.earnedXp + earnedXp,
              );
              stats = calculator.applyEarnedXp(
                stats: stats,
                earnedXp: earnedXp,
                lessonCompleted: false,
                isCorrect: isCorrect,
              );
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Hello'));
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    await tester.pumpWidget(
      MaterialApp(
        theme: buildTestTheme(),
        home: Scaffold(
          body: LessonBlockRouter(
            block: lesson.blocks[2],
            onSubmitted: ({submittedAnswer, selectedOptionIds = const <String>[]}) async {
              final isCorrect = evaluator.evaluate(
                block: lesson.blocks[2],
                submittedAnswer: submittedAnswer,
                selectedOptionIds: selectedOptionIds,
              );
              final earnedXp = calculator.calculateBlockXp(
                block: lesson.blocks[2],
                lesson: lesson,
                stats: stats,
                isCorrect: isCorrect,
              );
              progress = progress.copyWith(
                currentBlockIndex: 3,
                answeredBlocks: 3,
                correctAnswers: progress.correctAnswers + 1,
                earnedXp: progress.earnedXp + earnedXp,
                isCompleted: true,
              );
              stats = calculator.applyEarnedXp(
                stats: stats,
                earnedXp: earnedXp,
                lessonCompleted: true,
                isCorrect: isCorrect,
              );
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Konnichiwa'));
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    final summary = calculator.summarize(
      lesson: lesson,
      progress: progress,
      statsBefore: const UserStats(userId: 'guest-user'),
      statsAfter: stats,
    );

    await tester.pumpWidget(
      MaterialApp(
        theme: buildTestTheme(),
        home: Scaffold(
          body: Column(
            children: [
              const Text('Lesson Result'),
              Text('+${summary.earnedXp} XP'),
              Text('Accuracy: ${(summary.accuracy * 100).round()}%'),
              Text('Correct answers: ${summary.correctAnswers}/${summary.totalBlocks}'),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Lesson Result'), findsOneWidget);
    expect(find.textContaining('Accuracy:'), findsOneWidget);
    expect(find.textContaining('Correct answers:'), findsOneWidget);

    tester.binding.defaultBinaryMessenger.setMockMessageHandler('flutter/assets', null);
  });
}
