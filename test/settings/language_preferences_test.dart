import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/learning_content.dart';

void main() {
  test('japanese starter lessons are hiragana and katakana first', () {
    const lessons = [
      LessonIsland(
        lessonId: 'ja_hiragana_1',
        title: 'Hiragana Harbor',
        subtitle: 'Start with the first kana sounds',
        language: SupportedLanguage.japanese,
        order: 1,
        isStarter: true,
      ),
      LessonIsland(
        lessonId: 'ja_katakana_1',
        title: 'Katakana Cliffs',
        subtitle: 'Master foreign sounds and names',
        language: SupportedLanguage.japanese,
        order: 2,
        isStarter: true,
      ),
    ];

    expect(lessons.first.lessonId, 'ja_hiragana_1');
    expect(lessons[1].lessonId, 'ja_katakana_1');
  });
}
