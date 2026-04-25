import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/lesson.dart';

void main() {
  test('Lesson.fromJson parses supported block types', () {
    final lesson = Lesson.fromJson(
      jsonDecode('''
      {
        "id": "lesson_test",
        "title": "Parser Test",
        "meta": {"title": "Parser Test", "difficulty": 2},
        "blocks": [
          {"id": "1", "type": "text", "title": "T", "content": "C"},
          {"id": "2", "type": "quiz", "question": "Q", "options": ["A"], "correct_answer": "A"},
          {"id": "3", "type": "video", "title": "V", "video_url": "https://example.com"},
          {"id": "4", "type": "code", "prompt": "P", "code_snippet": "print()", "expected_answer": "ok"},
          {"id": "5", "type": "choice", "prompt": "Pick", "correct_option_id": "o1", "options": [{"id": "o1", "label": "One"}]},
          {"id": "6", "type": "sentence_builder", "prompt": "Build", "tokens": [{"id": "t1", "label": "I"}], "correct_token_ids": ["t1"], "correct_answer": "I"}
        ]
      }
      ''') as Map<String, Object?>,
    );

    expect(lesson.blocks.length, 6);
    expect(lesson.blocks.first.blockType, 'text');
    expect(lesson.blocks[1].blockType, 'quiz');
    expect(lesson.blocks[2].blockType, 'video');
    expect(lesson.blocks[3].blockType, 'code');
    expect(lesson.blocks[4].blockType, 'choice');
    expect(lesson.blocks[5].blockType, 'sentence_builder');
    expect(
      lesson.blocks[5],
      isA<SentenceBuilderBlock>()
          .having((block) => block.tokens.single.label, 'token label', 'I')
          .having((block) => block.correctTokenIds, 'correct token ids', ['t1']),
    );
  });

  test('Lesson.fromJson falls back to unknown block', () {
    final lesson = Lesson.fromJson(
      {
        'id': 'unknown_lesson',
        'title': 'Unknown',
        'meta': {'title': 'Unknown'},
        'blocks': [
          {'id': '1', 'type': 'alien'}
        ],
      },
    );

    expect(lesson.blocks.single.blockType, 'alien');
  });

  test('lesson 1 assets use the new onboarding format', () {
    final japaneseLesson = Lesson.fromJson(
      jsonDecode(
        File('assets/lessons/ja_hiragana_1.json').readAsStringSync(),
      ) as Map<String, Object?>,
    );
    final englishLesson = Lesson.fromJson(
      jsonDecode(
        File('assets/lessons/en_present_simple_1.json').readAsStringSync(),
      ) as Map<String, Object?>,
    );

    expect(japaneseLesson.version, greaterThan(1));
    expect(englishLesson.version, greaterThan(1));
    expect(japaneseLesson.blocks.length, inInclusiveRange(5, 6));
    expect(englishLesson.blocks.length, inInclusiveRange(5, 6));
    expect(
      japaneseLesson.blocks.every(
        (block) => {'text', 'quiz', 'choice', 'sentence_builder'}.contains(block.blockType),
      ),
      isTrue,
    );
    expect(
      englishLesson.blocks.every(
        (block) => {'text', 'quiz', 'choice', 'sentence_builder'}.contains(block.blockType),
      ),
      isTrue,
    );
  });
}
