import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';

part 'app_database.g.dart';

class FlashcardTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get remoteId => text().nullable()();
  TextColumn get front => text()();
  TextColumn get back => text()();
  TextColumn get exampleText => text().nullable()();
  RealColumn get easeFactor => real().withDefault(const Constant(2.5))();
  IntColumn get intervalDays => integer().withDefault(const Constant(1))();
  IntColumn get repetitions => integer().withDefault(const Constant(0))();
  DateTimeColumn get nextReviewDate => dateTime()();
  BoolColumn get isDirty => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class LessonCacheTable extends Table {
  TextColumn get lessonId => text()();
  TextColumn get lessonJson => text()();
  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {lessonId};
}

class DictionaryCacheTable extends Table {
  TextColumn get word => text()();
  TextColumn get language => text()();
  TextColumn get entryJson => text()();
  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {word, language};
}

class AnswerHistoryLocalTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get lessonId => text().nullable()();
  TextColumn get blockType => text()();
  BoolColumn get isCorrect => boolean()();
  IntColumn get timeSpentSeconds => integer().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

@singleton
@DriftDatabase(tables: [
  FlashcardTable,
  LessonCacheTable,
  DictionaryCacheTable,
  AnswerHistoryLocalTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'momokiki.db'));

  @override
  int get schemaVersion => 1;
}
