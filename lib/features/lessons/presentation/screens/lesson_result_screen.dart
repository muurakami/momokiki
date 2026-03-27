import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/lesson_progress.dart';

class LessonResultScreen extends StatelessWidget {
  const LessonResultScreen({required this.summary, super.key});

  final LessonSummary summary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson Result')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '+${summary.earnedXp} XP',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 12),
              Text('Accuracy: ${(summary.accuracy * 100).round()}%'),
              const SizedBox(height: 8),
              Text('Correct answers: ${summary.correctAnswers}/${summary.totalBlocks}'),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  if (summary.nextLessonId != null) {
                    context.go('/app/lesson/${summary.nextLessonId}');
                    return;
                  }

                  context.go('/app/learn');
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
