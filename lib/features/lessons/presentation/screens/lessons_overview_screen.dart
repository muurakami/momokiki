import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LessonsOverviewScreen extends StatelessWidget {
  const LessonsOverviewScreen({super.key});

  static const lessonIds = <String>[
    'lesson_intro_1',
    'lesson_intro_2',
    'lesson_intro_3',
    'lesson_intro_4',
    'lesson_intro_5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learn')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: lessonIds.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final lessonId = lessonIds[index];
          return Card(
            child: ListTile(
              title: Text('Lesson ${index + 1}'),
              subtitle: Text(lessonId),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.go('/app/lesson/$lessonId'),
            ),
          );
        },
      ),
    );
  }
}
