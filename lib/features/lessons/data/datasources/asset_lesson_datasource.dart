import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/lesson.dart';

@lazySingleton
class AssetLessonDataSource {
  Future<Lesson> getLesson(String lessonId) async {
    final assetPath = 'assets/lessons/$lessonId.json';

    try {
      final rawJson = await rootBundle.loadString(assetPath);
      final json = jsonDecode(rawJson) as Map<String, Object?>;
      return Lesson.fromJson(json);
    } on FormatException catch (error) {
      throw FormatException('Invalid lesson JSON for $lessonId at $assetPath: ${error.message}');
    } on Exception catch (error) {
      throw Exception('Lesson asset missing: $assetPath ($error)');
    }
  }
}
