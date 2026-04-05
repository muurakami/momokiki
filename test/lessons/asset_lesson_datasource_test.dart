import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/data/datasources/asset_lesson_datasource.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('daily routines lesson JSON parses without format error', () async {
    final datasource = AssetLessonDataSource();

    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler('flutter/assets', (message) async {
      final key = utf8.decode(message!.buffer.asUint8List());
      if (key != 'assets/lessons/en_present_simple_2.json') {
        return null;
      }

      const json = '''
      {
        "id": "en_present_simple_2",
        "title": "Daily Routines",
        "language": "english",
        "meta": {"title": "Daily Routines", "difficulty": 1, "language": "en"},
        "blocks": [
          {"id": "b1", "type": "text", "title": "Routine verbs", "content": "Common routine verbs include wake up, work, eat, and study."}
        ]
      }
      ''';

      return ByteData.view(Uint8List.fromList(utf8.encode(json)).buffer);
    });

    final lesson = await datasource.getLesson('en_present_simple_2');
    expect(lesson.id, 'en_present_simple_2');
  });
}
