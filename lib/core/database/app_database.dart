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

class PracticeDeckTable extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get sourceType => text().withDefault(const Constant('manual'))();
  IntColumn get ankiDeckId => integer().nullable()();
  IntColumn get maxNewPerDay => integer().withDefault(const Constant(20))();
  IntColumn get maxReviewsPerDay => integer().withDefault(const Constant(200))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class PracticeCardTable extends Table {
  TextColumn get id => text()();
  TextColumn get deckId => text()();
  TextColumn get frontHtml => text()();
  TextColumn get backHtml => text()();
  TextColumn get frontPlain => text()();
  TextColumn get backPlain => text()();
  TextColumn get queue => text().withDefault(const Constant('new'))();
  DateTimeColumn get dueAt => dateTime().nullable()();
  IntColumn get dueDay => integer().nullable()();
  IntColumn get intervalDays => integer().withDefault(const Constant(0))();
  IntColumn get easeFactorMilli => integer().withDefault(const Constant(2500))();
  IntColumn get reps => integer().withDefault(const Constant(0))();
  IntColumn get lapses => integer().withDefault(const Constant(0))();
  IntColumn get remainingSteps => integer().withDefault(const Constant(0))();
  IntColumn get learningStepIndex => integer().withDefault(const Constant(0))();
  DateTimeColumn get lastReviewedAt => dateTime().nullable()();
  BoolColumn get isLeech => boolean().withDefault(const Constant(false))();
  TextColumn get tagsJson => text().withDefault(const Constant('[]'))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class PracticeReviewTable extends Table {
  TextColumn get id => text()();
  TextColumn get cardId => text()();
  DateTimeColumn get reviewedAt => dateTime()();
  TextColumn get rating => text()();
  TextColumn get queueBefore => text()();
  TextColumn get queueAfter => text()();
  IntColumn get intervalBeforeDays => integer().withDefault(const Constant(0))();
  IntColumn get intervalAfterDays => integer().withDefault(const Constant(0))();
  IntColumn get easeBeforeMilli => integer().withDefault(const Constant(2500))();
  IntColumn get easeAfterMilli => integer().withDefault(const Constant(2500))();
  IntColumn get elapsedMs => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class PracticeMediaTable extends Table {
  TextColumn get id => text()();
  TextColumn get checksumSha1 => text().unique()();
  TextColumn get originalName => text()();
  TextColumn get storedName => text()();
  TextColumn get mimeType => text()();
  TextColumn get localPath => text()();
  IntColumn get sizeBytes => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class PracticeCardMediaTable extends Table {
  TextColumn get cardId => text()();
  TextColumn get mediaId => text()();
  TextColumn get usageType => text()();
  TextColumn get originalToken => text()();

  @override
  Set<Column> get primaryKey => {cardId, mediaId, usageType};
}

class DictionaryCacheTable extends Table {
  TextColumn get word => text()();
  TextColumn get language => text()();
  TextColumn get entryJson => text()();
  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {word, language};
}

class DictionaryJapaneseEntryTable extends Table {
  TextColumn get entryId => text()();
  TextColumn get primaryKanji => text().nullable()();
  TextColumn get primaryKana => text()();
  TextColumn get primaryRomaji => text()();
  TextColumn get meaningPreview => text()();
  TextColumn get entryJson => text()();
  BoolColumn get isCommon => boolean().withDefault(const Constant(false))();
  DateTimeColumn get importedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {entryId};
}

class DictionaryFavoriteTable extends Table {
  TextColumn get id => text()();
  TextColumn get entryKey => text()();
  TextColumn get language => text()();
  TextColumn get title => text()();
  TextColumn get subtitle => text().nullable()();
  TextColumn get entryJson => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class DictionarySourceStateTable extends Table {
  TextColumn get sourceKey => text()();
  BoolColumn get isReady => boolean().withDefault(const Constant(false))();
  IntColumn get entryCount => integer().withDefault(const Constant(0))();
  DateTimeColumn get updatedAt => dateTime()();
  TextColumn get errorMessage => text().nullable()();

  @override
  Set<Column> get primaryKey => {sourceKey};
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
  PracticeDeckTable,
  PracticeCardTable,
  PracticeReviewTable,
  PracticeMediaTable,
  PracticeCardMediaTable,
  DictionaryCacheTable,
  DictionaryJapaneseEntryTable,
  DictionaryFavoriteTable,
  DictionarySourceStateTable,
  AnswerHistoryLocalTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'momokiki.db'));

  AppDatabase.test(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 5;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
          await _ensureLessonAttemptTableExists();
          await _ensureDictionaryTablesExist();
          await _ensureDictionarySearchSchemaExists();
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

          if (from < 4) {
            await migrator.createTable(practiceDeckTable);
            await migrator.createTable(practiceCardTable);
            await migrator.createTable(practiceReviewTable);
            await migrator.createTable(practiceMediaTable);
            await migrator.createTable(practiceCardMediaTable);
          }

          if (from < 5) {
            await _ensureDictionaryCacheTableExists();
            await migrator.createTable(dictionaryJapaneseEntryTable);
            await migrator.createTable(dictionaryFavoriteTable);
            await migrator.createTable(dictionarySourceStateTable);
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

  Future<void> _ensureDictionaryCacheTableExists() async {
    await customStatement('''
      CREATE TABLE IF NOT EXISTS dictionary_cache_table (
        word TEXT NOT NULL,
        language TEXT NOT NULL,
        entry_json TEXT NOT NULL,
        cached_at INTEGER NOT NULL,
        PRIMARY KEY (word, language)
      )
    ''');
  }

  Future<void> _ensureDictionaryTablesExist() async {
    await _ensureDictionaryCacheTableExists();
    await customStatement('''
      CREATE TABLE IF NOT EXISTS dictionary_japanese_entry_table (
        entry_id TEXT NOT NULL PRIMARY KEY,
        primary_kanji TEXT,
        primary_kana TEXT NOT NULL,
        primary_romaji TEXT NOT NULL,
        meaning_preview TEXT NOT NULL,
        entry_json TEXT NOT NULL,
        is_common INTEGER NOT NULL DEFAULT 0,
        imported_at INTEGER NOT NULL DEFAULT (strftime('%s','now') * 1000)
      )
    ''');
    await customStatement('''
      CREATE TABLE IF NOT EXISTS dictionary_favorite_table (
        id TEXT NOT NULL PRIMARY KEY,
        entry_key TEXT NOT NULL,
        language TEXT NOT NULL,
        title TEXT NOT NULL,
        subtitle TEXT,
        entry_json TEXT NOT NULL,
        created_at INTEGER NOT NULL DEFAULT (strftime('%s','now') * 1000)
      )
    ''');
    await customStatement('''
      CREATE TABLE IF NOT EXISTS dictionary_source_state_table (
        source_key TEXT NOT NULL PRIMARY KEY,
        is_ready INTEGER NOT NULL DEFAULT 0,
        entry_count INTEGER NOT NULL DEFAULT 0,
        updated_at INTEGER NOT NULL,
        error_message TEXT
      )
    ''');
  }

  Future<void> _ensureDictionarySearchSchemaExists() async {
    await customStatement('''
      CREATE VIRTUAL TABLE IF NOT EXISTS dictionary_japanese_fts USING fts5(
        entry_id UNINDEXED,
        kanji_terms,
        kana_terms,
        romaji_terms,
        tokenize = 'unicode61 remove_diacritics 2'
      )
    ''');
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_dictionary_japanese_primary_kanji ON dictionary_japanese_entry_table(primary_kanji)',
    );
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_dictionary_japanese_primary_kana ON dictionary_japanese_entry_table(primary_kana)',
    );
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_dictionary_japanese_primary_romaji ON dictionary_japanese_entry_table(primary_romaji)',
    );
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_dictionary_favorite_created_at ON dictionary_favorite_table(created_at)',
    );
  }

  Future<void> _logSchemaState() async {
    if (!kDebugMode) {
      return;
    }

    final rows = await customSelect(
      '''
      SELECT name
      FROM sqlite_master
      WHERE name IN (
        'lesson_attempt_table',
        'dictionary_cache_table',
        'dictionary_japanese_entry_table',
        'dictionary_favorite_table',
        'dictionary_source_state_table',
        'dictionary_japanese_fts'
      )
      ORDER BY name
      ''',
    ).get();
    final versionRows = await customSelect('PRAGMA user_version').get();
    final names = rows
        .map((row) => row.data['name'])
        .whereType<String>()
        .toSet();

    debugPrint(
      'AppDatabase schema check: user_version=${versionRows.isNotEmpty ? versionRows.first.data.values.first : 'unknown'}, lesson_attempt_table=${names.contains('lesson_attempt_table')}, dictionary_cache_table=${names.contains('dictionary_cache_table')}, dictionary_japanese_entry_table=${names.contains('dictionary_japanese_entry_table')}, dictionary_favorite_table=${names.contains('dictionary_favorite_table')}, dictionary_source_state_table=${names.contains('dictionary_source_state_table')}, dictionary_japanese_fts=${names.contains('dictionary_japanese_fts')}',
    );
  }
}
