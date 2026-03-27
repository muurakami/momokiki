import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/models/lesson.dart';

@lazySingleton
class DriftLessonCache {
  DriftLessonCache(this._database);

  final AppDatabase _database;

  Future<Lesson?> getLesson(String lessonId) async {
    final row = await (_database.select(_database.lessonCacheTable)
          ..where((tbl) => tbl.lessonId.equals(lessonId)))
        .getSingleOrNull();

    if (row == null) {
      return null;
    }

    return Lesson.fromJson(
      jsonDecode(row.lessonJson) as Map<String, Object?>,
    );
  }

  Future<void> saveLesson(Lesson lesson) async {
    await _database
        .into(_database.lessonCacheTable)
        .insertOnConflictUpdate(
          LessonCacheTableCompanion.insert(
            lessonId: lesson.id,
            lessonJson: jsonEncode(lesson.toJson()),
            cachedAt: DateTime.now(),
          ),
        );
  }
}
