import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/learning_content.dart';

void main() {
  test('filters lessons by selected language', () {
    const lessons = [
      LessonIsland(
        lessonId: 'ja_1',
        title: 'Japanese 1',
        subtitle: 'JP',
        language: SupportedLanguage.japanese,
      ),
      LessonIsland(
        lessonId: 'en_1',
        title: 'English 1',
        subtitle: 'EN',
        language: SupportedLanguage.english,
      ),
    ];

    final japaneseLessons = lessons
        .where((lesson) => lesson.language == SupportedLanguage.japanese)
        .toList();

    expect(japaneseLessons, hasLength(1));
    expect(japaneseLessons.single.lessonId, 'ja_1');
  });
}
