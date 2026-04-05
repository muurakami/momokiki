import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

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

class LessonProgressTable extends Table {
  TextColumn get userId => text()();
  TextColumn get lessonId => text()();
  IntColumn get currentBlockIndex => integer().withDefault(const Constant(0))();
  IntColumn get answeredBlocks => integer().withDefault(const Constant(0))();
  IntColumn get correctAnswers => integer().withDefault(const Constant(0))();
  IntColumn get earnedXp => integer().withDefault(const Constant(0))();
  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();
  TextColumn get lastBlockId => text().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get completedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {userId, lessonId};
}

class UserStatsTable extends Table {
  TextColumn get userId => text()();
  IntColumn get totalXp => integer().withDefault(const Constant(0))();
  IntColumn get level => integer().withDefault(const Constant(1))();
  IntColumn get totalLessonsCompleted => integer().withDefault(const Constant(0))();
  IntColumn get totalBlocksAnswered => integer().withDefault(const Constant(0))();
  IntColumn get totalCorrectBlocks => integer().withDefault(const Constant(0))();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {userId};
}

class LessonSyncQueueTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userId => text()();
  TextColumn get lessonId => text()();
  TextColumn get payloadJson => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class LessonAttemptTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userId => text()();
  TextColumn get lessonId => text()();
  TextColumn get blockId => text()();
  IntColumn get attemptNumber => integer()();
  TextColumn get submittedAnswer => text().nullable()();
  TextColumn get selectedOptionIdsJson => text().withDefault(const Constant('[]'))();
  BoolColumn get isCorrect => boolean()();
  TextColumn get feedbackMessage => text().nullable()();
  IntColumn get earnedXp => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
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
  LessonProgressTable,
  UserStatsTable,
  LessonSyncQueueTable,
  LessonAttemptTable,
  DictionaryCacheTable,
  AnswerHistoryLocalTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'momokiki.db'));

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
          await _ensureLessonAttemptTableExists();
          await _logSchemaState();
        },
        onUpgrade: (migrator, from, to) async {
          if (from < 2) {
            await migrator.createTable(lessonProgressTable);
            await migrator.createTable(userStatsTable);
            await migrator.createTable(lessonSyncQueueTable);
            await migrator.createTable(lessonAttemptTable);
          }

          if (from < 3) {
            await _ensureLessonAttemptTableExists();
          }
        },
      );

  Future<void> _ensureLessonAttemptTableExists() async {
    await customStatement('''
      CREATE TABLE IF NOT EXISTS lesson_attempt_table (
        id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        user_id TEXT NOT NULL,
        lesson_id TEXT NOT NULL,
        block_id TEXT NOT NULL,
        attempt_number INTEGER NOT NULL,
        submitted_answer TEXT,
        selected_option_ids_json TEXT NOT NULL DEFAULT '[]',
        is_correct INTEGER NOT NULL,
        feedback_message TEXT,
        earned_xp INTEGER NOT NULL DEFAULT 0,
        created_at INTEGER NOT NULL DEFAULT (strftime('%s','now') * 1000)
      )
    ''');

    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_lesson_attempt_user_lesson_created_at ON lesson_attempt_table(user_id, lesson_id, created_at)',
    );
  }

  Future<void> _logSchemaState() async {
    if (!kDebugMode) {
      return;
    }

    final tableRows = await customSelect(
      "SELECT name FROM sqlite_master WHERE type='table' AND name='lesson_attempt_table'",
    ).get();
    final versionRows = await customSelect('PRAGMA user_version').get();

    debugPrint(
      'AppDatabase schema check: lesson_attempt_table=${tableRows.isNotEmpty}, user_version=${versionRows.isNotEmpty ? versionRows.first.data.values.first : 'unknown'}',
    );
  }
}
