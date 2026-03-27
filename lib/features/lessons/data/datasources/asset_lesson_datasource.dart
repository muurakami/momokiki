import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/lesson.dart';

@lazySingleton
class AssetLessonDataSource {
  Future<Lesson> getLesson(String lessonId) async {
    final rawJson = await rootBundle.loadString('assets/lessons/$lessonId.json');
    final json = jsonDecode(rawJson) as Map<String, Object?>;
    return Lesson.fromJson(json);
  }
}
