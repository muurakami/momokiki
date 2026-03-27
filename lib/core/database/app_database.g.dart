// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $FlashcardTableTable extends FlashcardTable
    with TableInfo<$FlashcardTableTable, FlashcardTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FlashcardTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  @override
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _frontMeta = const VerificationMeta('front');
  @override
  late final GeneratedColumn<String> front = GeneratedColumn<String>(
      'front', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _backMeta = const VerificationMeta('back');
  @override
  late final GeneratedColumn<String> back = GeneratedColumn<String>(
      'back', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _exampleTextMeta =
      const VerificationMeta('exampleText');
  @override
  late final GeneratedColumn<String> exampleText = GeneratedColumn<String>(
      'example_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _easeFactorMeta =
      const VerificationMeta('easeFactor');
  @override
  late final GeneratedColumn<double> easeFactor = GeneratedColumn<double>(
      'ease_factor', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(2.5));
  static const VerificationMeta _intervalDaysMeta =
      const VerificationMeta('intervalDays');
  @override
  late final GeneratedColumn<int> intervalDays = GeneratedColumn<int>(
      'interval_days', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _repetitionsMeta =
      const VerificationMeta('repetitions');
  @override
  late final GeneratedColumn<int> repetitions = GeneratedColumn<int>(
      'repetitions', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _nextReviewDateMeta =
      const VerificationMeta('nextReviewDate');
  @override
  late final GeneratedColumn<DateTime> nextReviewDate =
      GeneratedColumn<DateTime>('next_review_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isDirtyMeta =
      const VerificationMeta('isDirty');
  @override
  late final GeneratedColumn<bool> isDirty = GeneratedColumn<bool>(
      'is_dirty', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_dirty" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        remoteId,
        front,
        back,
        exampleText,
        easeFactor,
        intervalDays,
        repetitions,
        nextReviewDate,
        isDirty,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'flashcard_table';
  @override
  VerificationContext validateIntegrity(Insertable<FlashcardTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('front')) {
      context.handle(
          _frontMeta, front.isAcceptableOrUnknown(data['front']!, _frontMeta));
    } else if (isInserting) {
      context.missing(_frontMeta);
    }
    if (data.containsKey('back')) {
      context.handle(
          _backMeta, back.isAcceptableOrUnknown(data['back']!, _backMeta));
    } else if (isInserting) {
      context.missing(_backMeta);
    }
    if (data.containsKey('example_text')) {
      context.handle(
          _exampleTextMeta,
          exampleText.isAcceptableOrUnknown(
              data['example_text']!, _exampleTextMeta));
    }
    if (data.containsKey('ease_factor')) {
      context.handle(
          _easeFactorMeta,
          easeFactor.isAcceptableOrUnknown(
              data['ease_factor']!, _easeFactorMeta));
    }
    if (data.containsKey('interval_days')) {
      context.handle(
          _intervalDaysMeta,
          intervalDays.isAcceptableOrUnknown(
              data['interval_days']!, _intervalDaysMeta));
    }
    if (data.containsKey('repetitions')) {
      context.handle(
          _repetitionsMeta,
          repetitions.isAcceptableOrUnknown(
              data['repetitions']!, _repetitionsMeta));
    }
    if (data.containsKey('next_review_date')) {
      context.handle(
          _nextReviewDateMeta,
          nextReviewDate.isAcceptableOrUnknown(
              data['next_review_date']!, _nextReviewDateMeta));
    } else if (isInserting) {
      context.missing(_nextReviewDateMeta);
    }
    if (data.containsKey('is_dirty')) {
      context.handle(_isDirtyMeta,
          isDirty.isAcceptableOrUnknown(data['is_dirty']!, _isDirtyMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FlashcardTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FlashcardTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      front: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front'])!,
      back: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back'])!,
      exampleText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}example_text']),
      easeFactor: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ease_factor'])!,
      intervalDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}interval_days'])!,
      repetitions: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}repetitions'])!,
      nextReviewDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}next_review_date'])!,
      isDirty: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_dirty'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $FlashcardTableTable createAlias(String alias) {
    return $FlashcardTableTable(attachedDatabase, alias);
  }
}

class FlashcardTableData extends DataClass
    implements Insertable<FlashcardTableData> {
  final int id;
  final String? remoteId;
  final String front;
  final String back;
  final String? exampleText;
  final double easeFactor;
  final int intervalDays;
  final int repetitions;
  final DateTime nextReviewDate;
  final bool isDirty;
  final DateTime createdAt;
  const FlashcardTableData(
      {required this.id,
      this.remoteId,
      required this.front,
      required this.back,
      this.exampleText,
      required this.easeFactor,
      required this.intervalDays,
      required this.repetitions,
      required this.nextReviewDate,
      required this.isDirty,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['front'] = Variable<String>(front);
    map['back'] = Variable<String>(back);
    if (!nullToAbsent || exampleText != null) {
      map['example_text'] = Variable<String>(exampleText);
    }
    map['ease_factor'] = Variable<double>(easeFactor);
    map['interval_days'] = Variable<int>(intervalDays);
    map['repetitions'] = Variable<int>(repetitions);
    map['next_review_date'] = Variable<DateTime>(nextReviewDate);
    map['is_dirty'] = Variable<bool>(isDirty);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FlashcardTableCompanion toCompanion(bool nullToAbsent) {
    return FlashcardTableCompanion(
      id: Value(id),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      front: Value(front),
      back: Value(back),
      exampleText: exampleText == null && nullToAbsent
          ? const Value.absent()
          : Value(exampleText),
      easeFactor: Value(easeFactor),
      intervalDays: Value(intervalDays),
      repetitions: Value(repetitions),
      nextReviewDate: Value(nextReviewDate),
      isDirty: Value(isDirty),
      createdAt: Value(createdAt),
    );
  }

  factory FlashcardTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FlashcardTableData(
      id: serializer.fromJson<int>(json['id']),
      remoteId: serializer.fromJson<String?>(json['remoteId']),
      front: serializer.fromJson<String>(json['front']),
      back: serializer.fromJson<String>(json['back']),
      exampleText: serializer.fromJson<String?>(json['exampleText']),
      easeFactor: serializer.fromJson<double>(json['easeFactor']),
      intervalDays: serializer.fromJson<int>(json['intervalDays']),
      repetitions: serializer.fromJson<int>(json['repetitions']),
      nextReviewDate: serializer.fromJson<DateTime>(json['nextReviewDate']),
      isDirty: serializer.fromJson<bool>(json['isDirty']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'remoteId': serializer.toJson<String?>(remoteId),
      'front': serializer.toJson<String>(front),
      'back': serializer.toJson<String>(back),
      'exampleText': serializer.toJson<String?>(exampleText),
      'easeFactor': serializer.toJson<double>(easeFactor),
      'intervalDays': serializer.toJson<int>(intervalDays),
      'repetitions': serializer.toJson<int>(repetitions),
      'nextReviewDate': serializer.toJson<DateTime>(nextReviewDate),
      'isDirty': serializer.toJson<bool>(isDirty),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FlashcardTableData copyWith(
          {int? id,
          Value<String?> remoteId = const Value.absent(),
          String? front,
          String? back,
          Value<String?> exampleText = const Value.absent(),
          double? easeFactor,
          int? intervalDays,
          int? repetitions,
          DateTime? nextReviewDate,
          bool? isDirty,
          DateTime? createdAt}) =>
      FlashcardTableData(
        id: id ?? this.id,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        front: front ?? this.front,
        back: back ?? this.back,
        exampleText: exampleText.present ? exampleText.value : this.exampleText,
        easeFactor: easeFactor ?? this.easeFactor,
        intervalDays: intervalDays ?? this.intervalDays,
        repetitions: repetitions ?? this.repetitions,
        nextReviewDate: nextReviewDate ?? this.nextReviewDate,
        isDirty: isDirty ?? this.isDirty,
        createdAt: createdAt ?? this.createdAt,
      );
  FlashcardTableData copyWithCompanion(FlashcardTableCompanion data) {
    return FlashcardTableData(
      id: data.id.present ? data.id.value : this.id,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      front: data.front.present ? data.front.value : this.front,
      back: data.back.present ? data.back.value : this.back,
      exampleText:
          data.exampleText.present ? data.exampleText.value : this.exampleText,
      easeFactor:
          data.easeFactor.present ? data.easeFactor.value : this.easeFactor,
      intervalDays: data.intervalDays.present
          ? data.intervalDays.value
          : this.intervalDays,
      repetitions:
          data.repetitions.present ? data.repetitions.value : this.repetitions,
      nextReviewDate: data.nextReviewDate.present
          ? data.nextReviewDate.value
          : this.nextReviewDate,
      isDirty: data.isDirty.present ? data.isDirty.value : this.isDirty,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FlashcardTableData(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('front: $front, ')
          ..write('back: $back, ')
          ..write('exampleText: $exampleText, ')
          ..write('easeFactor: $easeFactor, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('repetitions: $repetitions, ')
          ..write('nextReviewDate: $nextReviewDate, ')
          ..write('isDirty: $isDirty, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      remoteId,
      front,
      back,
      exampleText,
      easeFactor,
      intervalDays,
      repetitions,
      nextReviewDate,
      isDirty,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FlashcardTableData &&
          other.id == this.id &&
          other.remoteId == this.remoteId &&
          other.front == this.front &&
          other.back == this.back &&
          other.exampleText == this.exampleText &&
          other.easeFactor == this.easeFactor &&
          other.intervalDays == this.intervalDays &&
          other.repetitions == this.repetitions &&
          other.nextReviewDate == this.nextReviewDate &&
          other.isDirty == this.isDirty &&
          other.createdAt == this.createdAt);
}

class FlashcardTableCompanion extends UpdateCompanion<FlashcardTableData> {
  final Value<int> id;
  final Value<String?> remoteId;
  final Value<String> front;
  final Value<String> back;
  final Value<String?> exampleText;
  final Value<double> easeFactor;
  final Value<int> intervalDays;
  final Value<int> repetitions;
  final Value<DateTime> nextReviewDate;
  final Value<bool> isDirty;
  final Value<DateTime> createdAt;
  const FlashcardTableCompanion({
    this.id = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.front = const Value.absent(),
    this.back = const Value.absent(),
    this.exampleText = const Value.absent(),
    this.easeFactor = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.repetitions = const Value.absent(),
    this.nextReviewDate = const Value.absent(),
    this.isDirty = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FlashcardTableCompanion.insert({
    this.id = const Value.absent(),
    this.remoteId = const Value.absent(),
    required String front,
    required String back,
    this.exampleText = const Value.absent(),
    this.easeFactor = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.repetitions = const Value.absent(),
    required DateTime nextReviewDate,
    this.isDirty = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : front = Value(front),
        back = Value(back),
        nextReviewDate = Value(nextReviewDate);
  static Insertable<FlashcardTableData> custom({
    Expression<int>? id,
    Expression<String>? remoteId,
    Expression<String>? front,
    Expression<String>? back,
    Expression<String>? exampleText,
    Expression<double>? easeFactor,
    Expression<int>? intervalDays,
    Expression<int>? repetitions,
    Expression<DateTime>? nextReviewDate,
    Expression<bool>? isDirty,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (remoteId != null) 'remote_id': remoteId,
      if (front != null) 'front': front,
      if (back != null) 'back': back,
      if (exampleText != null) 'example_text': exampleText,
      if (easeFactor != null) 'ease_factor': easeFactor,
      if (intervalDays != null) 'interval_days': intervalDays,
      if (repetitions != null) 'repetitions': repetitions,
      if (nextReviewDate != null) 'next_review_date': nextReviewDate,
      if (isDirty != null) 'is_dirty': isDirty,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FlashcardTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? remoteId,
      Value<String>? front,
      Value<String>? back,
      Value<String?>? exampleText,
      Value<double>? easeFactor,
      Value<int>? intervalDays,
      Value<int>? repetitions,
      Value<DateTime>? nextReviewDate,
      Value<bool>? isDirty,
      Value<DateTime>? createdAt}) {
    return FlashcardTableCompanion(
      id: id ?? this.id,
      remoteId: remoteId ?? this.remoteId,
      front: front ?? this.front,
      back: back ?? this.back,
      exampleText: exampleText ?? this.exampleText,
      easeFactor: easeFactor ?? this.easeFactor,
      intervalDays: intervalDays ?? this.intervalDays,
      repetitions: repetitions ?? this.repetitions,
      nextReviewDate: nextReviewDate ?? this.nextReviewDate,
      isDirty: isDirty ?? this.isDirty,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (front.present) {
      map['front'] = Variable<String>(front.value);
    }
    if (back.present) {
      map['back'] = Variable<String>(back.value);
    }
    if (exampleText.present) {
      map['example_text'] = Variable<String>(exampleText.value);
    }
    if (easeFactor.present) {
      map['ease_factor'] = Variable<double>(easeFactor.value);
    }
    if (intervalDays.present) {
      map['interval_days'] = Variable<int>(intervalDays.value);
    }
    if (repetitions.present) {
      map['repetitions'] = Variable<int>(repetitions.value);
    }
    if (nextReviewDate.present) {
      map['next_review_date'] = Variable<DateTime>(nextReviewDate.value);
    }
    if (isDirty.present) {
      map['is_dirty'] = Variable<bool>(isDirty.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FlashcardTableCompanion(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('front: $front, ')
          ..write('back: $back, ')
          ..write('exampleText: $exampleText, ')
          ..write('easeFactor: $easeFactor, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('repetitions: $repetitions, ')
          ..write('nextReviewDate: $nextReviewDate, ')
          ..write('isDirty: $isDirty, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $LessonCacheTableTable extends LessonCacheTable
    with TableInfo<$LessonCacheTableTable, LessonCacheTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonCacheTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _lessonIdMeta =
      const VerificationMeta('lessonId');
  @override
  late final GeneratedColumn<String> lessonId = GeneratedColumn<String>(
      'lesson_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lessonJsonMeta =
      const VerificationMeta('lessonJson');
  @override
  late final GeneratedColumn<String> lessonJson = GeneratedColumn<String>(
      'lesson_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cachedAtMeta =
      const VerificationMeta('cachedAt');
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
      'cached_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [lessonId, lessonJson, cachedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lesson_cache_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<LessonCacheTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('lesson_id')) {
      context.handle(_lessonIdMeta,
          lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta));
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('lesson_json')) {
      context.handle(
          _lessonJsonMeta,
          lessonJson.isAcceptableOrUnknown(
              data['lesson_json']!, _lessonJsonMeta));
    } else if (isInserting) {
      context.missing(_lessonJsonMeta);
    }
    if (data.containsKey('cached_at')) {
      context.handle(_cachedAtMeta,
          cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta));
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {lessonId};
  @override
  LessonCacheTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonCacheTableData(
      lessonId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lesson_id'])!,
      lessonJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lesson_json'])!,
      cachedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}cached_at'])!,
    );
  }

  @override
  $LessonCacheTableTable createAlias(String alias) {
    return $LessonCacheTableTable(attachedDatabase, alias);
  }
}

class LessonCacheTableData extends DataClass
    implements Insertable<LessonCacheTableData> {
  final String lessonId;
  final String lessonJson;
  final DateTime cachedAt;
  const LessonCacheTableData(
      {required this.lessonId,
      required this.lessonJson,
      required this.cachedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['lesson_id'] = Variable<String>(lessonId);
    map['lesson_json'] = Variable<String>(lessonJson);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  LessonCacheTableCompanion toCompanion(bool nullToAbsent) {
    return LessonCacheTableCompanion(
      lessonId: Value(lessonId),
      lessonJson: Value(lessonJson),
      cachedAt: Value(cachedAt),
    );
  }

  factory LessonCacheTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonCacheTableData(
      lessonId: serializer.fromJson<String>(json['lessonId']),
      lessonJson: serializer.fromJson<String>(json['lessonJson']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'lessonId': serializer.toJson<String>(lessonId),
      'lessonJson': serializer.toJson<String>(lessonJson),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  LessonCacheTableData copyWith(
          {String? lessonId, String? lessonJson, DateTime? cachedAt}) =>
      LessonCacheTableData(
        lessonId: lessonId ?? this.lessonId,
        lessonJson: lessonJson ?? this.lessonJson,
        cachedAt: cachedAt ?? this.cachedAt,
      );
  LessonCacheTableData copyWithCompanion(LessonCacheTableCompanion data) {
    return LessonCacheTableData(
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      lessonJson:
          data.lessonJson.present ? data.lessonJson.value : this.lessonJson,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonCacheTableData(')
          ..write('lessonId: $lessonId, ')
          ..write('lessonJson: $lessonJson, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(lessonId, lessonJson, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonCacheTableData &&
          other.lessonId == this.lessonId &&
          other.lessonJson == this.lessonJson &&
          other.cachedAt == this.cachedAt);
}

class LessonCacheTableCompanion extends UpdateCompanion<LessonCacheTableData> {
  final Value<String> lessonId;
  final Value<String> lessonJson;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const LessonCacheTableCompanion({
    this.lessonId = const Value.absent(),
    this.lessonJson = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LessonCacheTableCompanion.insert({
    required String lessonId,
    required String lessonJson,
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  })  : lessonId = Value(lessonId),
        lessonJson = Value(lessonJson),
        cachedAt = Value(cachedAt);
  static Insertable<LessonCacheTableData> custom({
    Expression<String>? lessonId,
    Expression<String>? lessonJson,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (lessonId != null) 'lesson_id': lessonId,
      if (lessonJson != null) 'lesson_json': lessonJson,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LessonCacheTableCompanion copyWith(
      {Value<String>? lessonId,
      Value<String>? lessonJson,
      Value<DateTime>? cachedAt,
      Value<int>? rowid}) {
    return LessonCacheTableCompanion(
      lessonId: lessonId ?? this.lessonId,
      lessonJson: lessonJson ?? this.lessonJson,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (lessonId.present) {
      map['lesson_id'] = Variable<String>(lessonId.value);
    }
    if (lessonJson.present) {
      map['lesson_json'] = Variable<String>(lessonJson.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonCacheTableCompanion(')
          ..write('lessonId: $lessonId, ')
          ..write('lessonJson: $lessonJson, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LessonProgressTableTable extends LessonProgressTable
    with TableInfo<$LessonProgressTableTable, LessonProgressTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonProgressTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lessonIdMeta =
      const VerificationMeta('lessonId');
  @override
  late final GeneratedColumn<String> lessonId = GeneratedColumn<String>(
      'lesson_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currentBlockIndexMeta =
      const VerificationMeta('currentBlockIndex');
  @override
  late final GeneratedColumn<int> currentBlockIndex = GeneratedColumn<int>(
      'current_block_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _answeredBlocksMeta =
      const VerificationMeta('answeredBlocks');
  @override
  late final GeneratedColumn<int> answeredBlocks = GeneratedColumn<int>(
      'answered_blocks', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _correctAnswersMeta =
      const VerificationMeta('correctAnswers');
  @override
  late final GeneratedColumn<int> correctAnswers = GeneratedColumn<int>(
      'correct_answers', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _earnedXpMeta =
      const VerificationMeta('earnedXp');
  @override
  late final GeneratedColumn<int> earnedXp = GeneratedColumn<int>(
      'earned_xp', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  @override
  late final GeneratedColumn<bool> isCompleted = GeneratedColumn<bool>(
      'is_completed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_completed" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastBlockIdMeta =
      const VerificationMeta('lastBlockId');
  @override
  late final GeneratedColumn<String> lastBlockId = GeneratedColumn<String>(
      'last_block_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _completedAtMeta =
      const VerificationMeta('completedAt');
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
      'completed_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        lessonId,
        currentBlockIndex,
        answeredBlocks,
        correctAnswers,
        earnedXp,
        isCompleted,
        lastBlockId,
        updatedAt,
        completedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lesson_progress_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<LessonProgressTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('lesson_id')) {
      context.handle(_lessonIdMeta,
          lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta));
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('current_block_index')) {
      context.handle(
          _currentBlockIndexMeta,
          currentBlockIndex.isAcceptableOrUnknown(
              data['current_block_index']!, _currentBlockIndexMeta));
    }
    if (data.containsKey('answered_blocks')) {
      context.handle(
          _answeredBlocksMeta,
          answeredBlocks.isAcceptableOrUnknown(
              data['answered_blocks']!, _answeredBlocksMeta));
    }
    if (data.containsKey('correct_answers')) {
      context.handle(
          _correctAnswersMeta,
          correctAnswers.isAcceptableOrUnknown(
              data['correct_answers']!, _correctAnswersMeta));
    }
    if (data.containsKey('earned_xp')) {
      context.handle(_earnedXpMeta,
          earnedXp.isAcceptableOrUnknown(data['earned_xp']!, _earnedXpMeta));
    }
    if (data.containsKey('is_completed')) {
      context.handle(
          _isCompletedMeta,
          isCompleted.isAcceptableOrUnknown(
              data['is_completed']!, _isCompletedMeta));
    }
    if (data.containsKey('last_block_id')) {
      context.handle(
          _lastBlockIdMeta,
          lastBlockId.isAcceptableOrUnknown(
              data['last_block_id']!, _lastBlockIdMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('completed_at')) {
      context.handle(
          _completedAtMeta,
          completedAt.isAcceptableOrUnknown(
              data['completed_at']!, _completedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, lessonId};
  @override
  LessonProgressTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonProgressTableData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      lessonId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lesson_id'])!,
      currentBlockIndex: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}current_block_index'])!,
      answeredBlocks: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}answered_blocks'])!,
      correctAnswers: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}correct_answers'])!,
      earnedXp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}earned_xp'])!,
      isCompleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_completed'])!,
      lastBlockId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_block_id']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      completedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}completed_at']),
    );
  }

  @override
  $LessonProgressTableTable createAlias(String alias) {
    return $LessonProgressTableTable(attachedDatabase, alias);
  }
}

class LessonProgressTableData extends DataClass
    implements Insertable<LessonProgressTableData> {
  final String userId;
  final String lessonId;
  final int currentBlockIndex;
  final int answeredBlocks;
  final int correctAnswers;
  final int earnedXp;
  final bool isCompleted;
  final String? lastBlockId;
  final DateTime? updatedAt;
  final DateTime? completedAt;
  const LessonProgressTableData(
      {required this.userId,
      required this.lessonId,
      required this.currentBlockIndex,
      required this.answeredBlocks,
      required this.correctAnswers,
      required this.earnedXp,
      required this.isCompleted,
      this.lastBlockId,
      this.updatedAt,
      this.completedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['lesson_id'] = Variable<String>(lessonId);
    map['current_block_index'] = Variable<int>(currentBlockIndex);
    map['answered_blocks'] = Variable<int>(answeredBlocks);
    map['correct_answers'] = Variable<int>(correctAnswers);
    map['earned_xp'] = Variable<int>(earnedXp);
    map['is_completed'] = Variable<bool>(isCompleted);
    if (!nullToAbsent || lastBlockId != null) {
      map['last_block_id'] = Variable<String>(lastBlockId);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    return map;
  }

  LessonProgressTableCompanion toCompanion(bool nullToAbsent) {
    return LessonProgressTableCompanion(
      userId: Value(userId),
      lessonId: Value(lessonId),
      currentBlockIndex: Value(currentBlockIndex),
      answeredBlocks: Value(answeredBlocks),
      correctAnswers: Value(correctAnswers),
      earnedXp: Value(earnedXp),
      isCompleted: Value(isCompleted),
      lastBlockId: lastBlockId == null && nullToAbsent
          ? const Value.absent()
          : Value(lastBlockId),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
    );
  }

  factory LessonProgressTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonProgressTableData(
      userId: serializer.fromJson<String>(json['userId']),
      lessonId: serializer.fromJson<String>(json['lessonId']),
      currentBlockIndex: serializer.fromJson<int>(json['currentBlockIndex']),
      answeredBlocks: serializer.fromJson<int>(json['answeredBlocks']),
      correctAnswers: serializer.fromJson<int>(json['correctAnswers']),
      earnedXp: serializer.fromJson<int>(json['earnedXp']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      lastBlockId: serializer.fromJson<String?>(json['lastBlockId']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'lessonId': serializer.toJson<String>(lessonId),
      'currentBlockIndex': serializer.toJson<int>(currentBlockIndex),
      'answeredBlocks': serializer.toJson<int>(answeredBlocks),
      'correctAnswers': serializer.toJson<int>(correctAnswers),
      'earnedXp': serializer.toJson<int>(earnedXp),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'lastBlockId': serializer.toJson<String?>(lastBlockId),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
    };
  }

  LessonProgressTableData copyWith(
          {String? userId,
          String? lessonId,
          int? currentBlockIndex,
          int? answeredBlocks,
          int? correctAnswers,
          int? earnedXp,
          bool? isCompleted,
          Value<String?> lastBlockId = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<DateTime?> completedAt = const Value.absent()}) =>
      LessonProgressTableData(
        userId: userId ?? this.userId,
        lessonId: lessonId ?? this.lessonId,
        currentBlockIndex: currentBlockIndex ?? this.currentBlockIndex,
        answeredBlocks: answeredBlocks ?? this.answeredBlocks,
        correctAnswers: correctAnswers ?? this.correctAnswers,
        earnedXp: earnedXp ?? this.earnedXp,
        isCompleted: isCompleted ?? this.isCompleted,
        lastBlockId: lastBlockId.present ? lastBlockId.value : this.lastBlockId,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        completedAt: completedAt.present ? completedAt.value : this.completedAt,
      );
  LessonProgressTableData copyWithCompanion(LessonProgressTableCompanion data) {
    return LessonProgressTableData(
      userId: data.userId.present ? data.userId.value : this.userId,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      currentBlockIndex: data.currentBlockIndex.present
          ? data.currentBlockIndex.value
          : this.currentBlockIndex,
      answeredBlocks: data.answeredBlocks.present
          ? data.answeredBlocks.value
          : this.answeredBlocks,
      correctAnswers: data.correctAnswers.present
          ? data.correctAnswers.value
          : this.correctAnswers,
      earnedXp: data.earnedXp.present ? data.earnedXp.value : this.earnedXp,
      isCompleted:
          data.isCompleted.present ? data.isCompleted.value : this.isCompleted,
      lastBlockId:
          data.lastBlockId.present ? data.lastBlockId.value : this.lastBlockId,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      completedAt:
          data.completedAt.present ? data.completedAt.value : this.completedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonProgressTableData(')
          ..write('userId: $userId, ')
          ..write('lessonId: $lessonId, ')
          ..write('currentBlockIndex: $currentBlockIndex, ')
          ..write('answeredBlocks: $answeredBlocks, ')
          ..write('correctAnswers: $correctAnswers, ')
          ..write('earnedXp: $earnedXp, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('lastBlockId: $lastBlockId, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('completedAt: $completedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userId,
      lessonId,
      currentBlockIndex,
      answeredBlocks,
      correctAnswers,
      earnedXp,
      isCompleted,
      lastBlockId,
      updatedAt,
      completedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonProgressTableData &&
          other.userId == this.userId &&
          other.lessonId == this.lessonId &&
          other.currentBlockIndex == this.currentBlockIndex &&
          other.answeredBlocks == this.answeredBlocks &&
          other.correctAnswers == this.correctAnswers &&
          other.earnedXp == this.earnedXp &&
          other.isCompleted == this.isCompleted &&
          other.lastBlockId == this.lastBlockId &&
          other.updatedAt == this.updatedAt &&
          other.completedAt == this.completedAt);
}

class LessonProgressTableCompanion
    extends UpdateCompanion<LessonProgressTableData> {
  final Value<String> userId;
  final Value<String> lessonId;
  final Value<int> currentBlockIndex;
  final Value<int> answeredBlocks;
  final Value<int> correctAnswers;
  final Value<int> earnedXp;
  final Value<bool> isCompleted;
  final Value<String?> lastBlockId;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> completedAt;
  final Value<int> rowid;
  const LessonProgressTableCompanion({
    this.userId = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.currentBlockIndex = const Value.absent(),
    this.answeredBlocks = const Value.absent(),
    this.correctAnswers = const Value.absent(),
    this.earnedXp = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.lastBlockId = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LessonProgressTableCompanion.insert({
    required String userId,
    required String lessonId,
    this.currentBlockIndex = const Value.absent(),
    this.answeredBlocks = const Value.absent(),
    this.correctAnswers = const Value.absent(),
    this.earnedXp = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.lastBlockId = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        lessonId = Value(lessonId);
  static Insertable<LessonProgressTableData> custom({
    Expression<String>? userId,
    Expression<String>? lessonId,
    Expression<int>? currentBlockIndex,
    Expression<int>? answeredBlocks,
    Expression<int>? correctAnswers,
    Expression<int>? earnedXp,
    Expression<bool>? isCompleted,
    Expression<String>? lastBlockId,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? completedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (lessonId != null) 'lesson_id': lessonId,
      if (currentBlockIndex != null) 'current_block_index': currentBlockIndex,
      if (answeredBlocks != null) 'answered_blocks': answeredBlocks,
      if (correctAnswers != null) 'correct_answers': correctAnswers,
      if (earnedXp != null) 'earned_xp': earnedXp,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (lastBlockId != null) 'last_block_id': lastBlockId,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (completedAt != null) 'completed_at': completedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LessonProgressTableCompanion copyWith(
      {Value<String>? userId,
      Value<String>? lessonId,
      Value<int>? currentBlockIndex,
      Value<int>? answeredBlocks,
      Value<int>? correctAnswers,
      Value<int>? earnedXp,
      Value<bool>? isCompleted,
      Value<String?>? lastBlockId,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? completedAt,
      Value<int>? rowid}) {
    return LessonProgressTableCompanion(
      userId: userId ?? this.userId,
      lessonId: lessonId ?? this.lessonId,
      currentBlockIndex: currentBlockIndex ?? this.currentBlockIndex,
      answeredBlocks: answeredBlocks ?? this.answeredBlocks,
      correctAnswers: correctAnswers ?? this.correctAnswers,
      earnedXp: earnedXp ?? this.earnedXp,
      isCompleted: isCompleted ?? this.isCompleted,
      lastBlockId: lastBlockId ?? this.lastBlockId,
      updatedAt: updatedAt ?? this.updatedAt,
      completedAt: completedAt ?? this.completedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (lessonId.present) {
      map['lesson_id'] = Variable<String>(lessonId.value);
    }
    if (currentBlockIndex.present) {
      map['current_block_index'] = Variable<int>(currentBlockIndex.value);
    }
    if (answeredBlocks.present) {
      map['answered_blocks'] = Variable<int>(answeredBlocks.value);
    }
    if (correctAnswers.present) {
      map['correct_answers'] = Variable<int>(correctAnswers.value);
    }
    if (earnedXp.present) {
      map['earned_xp'] = Variable<int>(earnedXp.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (lastBlockId.present) {
      map['last_block_id'] = Variable<String>(lastBlockId.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonProgressTableCompanion(')
          ..write('userId: $userId, ')
          ..write('lessonId: $lessonId, ')
          ..write('currentBlockIndex: $currentBlockIndex, ')
          ..write('answeredBlocks: $answeredBlocks, ')
          ..write('correctAnswers: $correctAnswers, ')
          ..write('earnedXp: $earnedXp, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('lastBlockId: $lastBlockId, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('completedAt: $completedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserStatsTableTable extends UserStatsTable
    with TableInfo<$UserStatsTableTable, UserStatsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserStatsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _totalXpMeta =
      const VerificationMeta('totalXp');
  @override
  late final GeneratedColumn<int> totalXp = GeneratedColumn<int>(
      'total_xp', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _totalLessonsCompletedMeta =
      const VerificationMeta('totalLessonsCompleted');
  @override
  late final GeneratedColumn<int> totalLessonsCompleted = GeneratedColumn<int>(
      'total_lessons_completed', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalBlocksAnsweredMeta =
      const VerificationMeta('totalBlocksAnswered');
  @override
  late final GeneratedColumn<int> totalBlocksAnswered = GeneratedColumn<int>(
      'total_blocks_answered', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalCorrectBlocksMeta =
      const VerificationMeta('totalCorrectBlocks');
  @override
  late final GeneratedColumn<int> totalCorrectBlocks = GeneratedColumn<int>(
      'total_correct_blocks', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        totalXp,
        level,
        totalLessonsCompleted,
        totalBlocksAnswered,
        totalCorrectBlocks,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_stats_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserStatsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('total_xp')) {
      context.handle(_totalXpMeta,
          totalXp.isAcceptableOrUnknown(data['total_xp']!, _totalXpMeta));
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    }
    if (data.containsKey('total_lessons_completed')) {
      context.handle(
          _totalLessonsCompletedMeta,
          totalLessonsCompleted.isAcceptableOrUnknown(
              data['total_lessons_completed']!, _totalLessonsCompletedMeta));
    }
    if (data.containsKey('total_blocks_answered')) {
      context.handle(
          _totalBlocksAnsweredMeta,
          totalBlocksAnswered.isAcceptableOrUnknown(
              data['total_blocks_answered']!, _totalBlocksAnsweredMeta));
    }
    if (data.containsKey('total_correct_blocks')) {
      context.handle(
          _totalCorrectBlocksMeta,
          totalCorrectBlocks.isAcceptableOrUnknown(
              data['total_correct_blocks']!, _totalCorrectBlocksMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UserStatsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserStatsTableData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      totalXp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_xp'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      totalLessonsCompleted: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_lessons_completed'])!,
      totalBlocksAnswered: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_blocks_answered'])!,
      totalCorrectBlocks: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_correct_blocks'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $UserStatsTableTable createAlias(String alias) {
    return $UserStatsTableTable(attachedDatabase, alias);
  }
}

class UserStatsTableData extends DataClass
    implements Insertable<UserStatsTableData> {
  final String userId;
  final int totalXp;
  final int level;
  final int totalLessonsCompleted;
  final int totalBlocksAnswered;
  final int totalCorrectBlocks;
  final DateTime? updatedAt;
  const UserStatsTableData(
      {required this.userId,
      required this.totalXp,
      required this.level,
      required this.totalLessonsCompleted,
      required this.totalBlocksAnswered,
      required this.totalCorrectBlocks,
      this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['total_xp'] = Variable<int>(totalXp);
    map['level'] = Variable<int>(level);
    map['total_lessons_completed'] = Variable<int>(totalLessonsCompleted);
    map['total_blocks_answered'] = Variable<int>(totalBlocksAnswered);
    map['total_correct_blocks'] = Variable<int>(totalCorrectBlocks);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  UserStatsTableCompanion toCompanion(bool nullToAbsent) {
    return UserStatsTableCompanion(
      userId: Value(userId),
      totalXp: Value(totalXp),
      level: Value(level),
      totalLessonsCompleted: Value(totalLessonsCompleted),
      totalBlocksAnswered: Value(totalBlocksAnswered),
      totalCorrectBlocks: Value(totalCorrectBlocks),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory UserStatsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserStatsTableData(
      userId: serializer.fromJson<String>(json['userId']),
      totalXp: serializer.fromJson<int>(json['totalXp']),
      level: serializer.fromJson<int>(json['level']),
      totalLessonsCompleted:
          serializer.fromJson<int>(json['totalLessonsCompleted']),
      totalBlocksAnswered:
          serializer.fromJson<int>(json['totalBlocksAnswered']),
      totalCorrectBlocks: serializer.fromJson<int>(json['totalCorrectBlocks']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'totalXp': serializer.toJson<int>(totalXp),
      'level': serializer.toJson<int>(level),
      'totalLessonsCompleted': serializer.toJson<int>(totalLessonsCompleted),
      'totalBlocksAnswered': serializer.toJson<int>(totalBlocksAnswered),
      'totalCorrectBlocks': serializer.toJson<int>(totalCorrectBlocks),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  UserStatsTableData copyWith(
          {String? userId,
          int? totalXp,
          int? level,
          int? totalLessonsCompleted,
          int? totalBlocksAnswered,
          int? totalCorrectBlocks,
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      UserStatsTableData(
        userId: userId ?? this.userId,
        totalXp: totalXp ?? this.totalXp,
        level: level ?? this.level,
        totalLessonsCompleted:
            totalLessonsCompleted ?? this.totalLessonsCompleted,
        totalBlocksAnswered: totalBlocksAnswered ?? this.totalBlocksAnswered,
        totalCorrectBlocks: totalCorrectBlocks ?? this.totalCorrectBlocks,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  UserStatsTableData copyWithCompanion(UserStatsTableCompanion data) {
    return UserStatsTableData(
      userId: data.userId.present ? data.userId.value : this.userId,
      totalXp: data.totalXp.present ? data.totalXp.value : this.totalXp,
      level: data.level.present ? data.level.value : this.level,
      totalLessonsCompleted: data.totalLessonsCompleted.present
          ? data.totalLessonsCompleted.value
          : this.totalLessonsCompleted,
      totalBlocksAnswered: data.totalBlocksAnswered.present
          ? data.totalBlocksAnswered.value
          : this.totalBlocksAnswered,
      totalCorrectBlocks: data.totalCorrectBlocks.present
          ? data.totalCorrectBlocks.value
          : this.totalCorrectBlocks,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserStatsTableData(')
          ..write('userId: $userId, ')
          ..write('totalXp: $totalXp, ')
          ..write('level: $level, ')
          ..write('totalLessonsCompleted: $totalLessonsCompleted, ')
          ..write('totalBlocksAnswered: $totalBlocksAnswered, ')
          ..write('totalCorrectBlocks: $totalCorrectBlocks, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, totalXp, level, totalLessonsCompleted,
      totalBlocksAnswered, totalCorrectBlocks, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserStatsTableData &&
          other.userId == this.userId &&
          other.totalXp == this.totalXp &&
          other.level == this.level &&
          other.totalLessonsCompleted == this.totalLessonsCompleted &&
          other.totalBlocksAnswered == this.totalBlocksAnswered &&
          other.totalCorrectBlocks == this.totalCorrectBlocks &&
          other.updatedAt == this.updatedAt);
}

class UserStatsTableCompanion extends UpdateCompanion<UserStatsTableData> {
  final Value<String> userId;
  final Value<int> totalXp;
  final Value<int> level;
  final Value<int> totalLessonsCompleted;
  final Value<int> totalBlocksAnswered;
  final Value<int> totalCorrectBlocks;
  final Value<DateTime?> updatedAt;
  final Value<int> rowid;
  const UserStatsTableCompanion({
    this.userId = const Value.absent(),
    this.totalXp = const Value.absent(),
    this.level = const Value.absent(),
    this.totalLessonsCompleted = const Value.absent(),
    this.totalBlocksAnswered = const Value.absent(),
    this.totalCorrectBlocks = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserStatsTableCompanion.insert({
    required String userId,
    this.totalXp = const Value.absent(),
    this.level = const Value.absent(),
    this.totalLessonsCompleted = const Value.absent(),
    this.totalBlocksAnswered = const Value.absent(),
    this.totalCorrectBlocks = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : userId = Value(userId);
  static Insertable<UserStatsTableData> custom({
    Expression<String>? userId,
    Expression<int>? totalXp,
    Expression<int>? level,
    Expression<int>? totalLessonsCompleted,
    Expression<int>? totalBlocksAnswered,
    Expression<int>? totalCorrectBlocks,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (totalXp != null) 'total_xp': totalXp,
      if (level != null) 'level': level,
      if (totalLessonsCompleted != null)
        'total_lessons_completed': totalLessonsCompleted,
      if (totalBlocksAnswered != null)
        'total_blocks_answered': totalBlocksAnswered,
      if (totalCorrectBlocks != null)
        'total_correct_blocks': totalCorrectBlocks,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserStatsTableCompanion copyWith(
      {Value<String>? userId,
      Value<int>? totalXp,
      Value<int>? level,
      Value<int>? totalLessonsCompleted,
      Value<int>? totalBlocksAnswered,
      Value<int>? totalCorrectBlocks,
      Value<DateTime?>? updatedAt,
      Value<int>? rowid}) {
    return UserStatsTableCompanion(
      userId: userId ?? this.userId,
      totalXp: totalXp ?? this.totalXp,
      level: level ?? this.level,
      totalLessonsCompleted:
          totalLessonsCompleted ?? this.totalLessonsCompleted,
      totalBlocksAnswered: totalBlocksAnswered ?? this.totalBlocksAnswered,
      totalCorrectBlocks: totalCorrectBlocks ?? this.totalCorrectBlocks,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (totalXp.present) {
      map['total_xp'] = Variable<int>(totalXp.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (totalLessonsCompleted.present) {
      map['total_lessons_completed'] =
          Variable<int>(totalLessonsCompleted.value);
    }
    if (totalBlocksAnswered.present) {
      map['total_blocks_answered'] = Variable<int>(totalBlocksAnswered.value);
    }
    if (totalCorrectBlocks.present) {
      map['total_correct_blocks'] = Variable<int>(totalCorrectBlocks.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserStatsTableCompanion(')
          ..write('userId: $userId, ')
          ..write('totalXp: $totalXp, ')
          ..write('level: $level, ')
          ..write('totalLessonsCompleted: $totalLessonsCompleted, ')
          ..write('totalBlocksAnswered: $totalBlocksAnswered, ')
          ..write('totalCorrectBlocks: $totalCorrectBlocks, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LessonSyncQueueTableTable extends LessonSyncQueueTable
    with TableInfo<$LessonSyncQueueTableTable, LessonSyncQueueTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonSyncQueueTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lessonIdMeta =
      const VerificationMeta('lessonId');
  @override
  late final GeneratedColumn<String> lessonId = GeneratedColumn<String>(
      'lesson_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _payloadJsonMeta =
      const VerificationMeta('payloadJson');
  @override
  late final GeneratedColumn<String> payloadJson = GeneratedColumn<String>(
      'payload_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, lessonId, payloadJson, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lesson_sync_queue_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<LessonSyncQueueTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('lesson_id')) {
      context.handle(_lessonIdMeta,
          lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta));
    } else if (isInserting) {
      context.missing(_lessonIdMeta);
    }
    if (data.containsKey('payload_json')) {
      context.handle(
          _payloadJsonMeta,
          payloadJson.isAcceptableOrUnknown(
              data['payload_json']!, _payloadJsonMeta));
    } else if (isInserting) {
      context.missing(_payloadJsonMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LessonSyncQueueTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonSyncQueueTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      lessonId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lesson_id'])!,
      payloadJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payload_json'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $LessonSyncQueueTableTable createAlias(String alias) {
    return $LessonSyncQueueTableTable(attachedDatabase, alias);
  }
}

class LessonSyncQueueTableData extends DataClass
    implements Insertable<LessonSyncQueueTableData> {
  final int id;
  final String userId;
  final String lessonId;
  final String payloadJson;
  final DateTime createdAt;
  const LessonSyncQueueTableData(
      {required this.id,
      required this.userId,
      required this.lessonId,
      required this.payloadJson,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<String>(userId);
    map['lesson_id'] = Variable<String>(lessonId);
    map['payload_json'] = Variable<String>(payloadJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  LessonSyncQueueTableCompanion toCompanion(bool nullToAbsent) {
    return LessonSyncQueueTableCompanion(
      id: Value(id),
      userId: Value(userId),
      lessonId: Value(lessonId),
      payloadJson: Value(payloadJson),
      createdAt: Value(createdAt),
    );
  }

  factory LessonSyncQueueTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonSyncQueueTableData(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      lessonId: serializer.fromJson<String>(json['lessonId']),
      payloadJson: serializer.fromJson<String>(json['payloadJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<String>(userId),
      'lessonId': serializer.toJson<String>(lessonId),
      'payloadJson': serializer.toJson<String>(payloadJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  LessonSyncQueueTableData copyWith(
          {int? id,
          String? userId,
          String? lessonId,
          String? payloadJson,
          DateTime? createdAt}) =>
      LessonSyncQueueTableData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        lessonId: lessonId ?? this.lessonId,
        payloadJson: payloadJson ?? this.payloadJson,
        createdAt: createdAt ?? this.createdAt,
      );
  LessonSyncQueueTableData copyWithCompanion(
      LessonSyncQueueTableCompanion data) {
    return LessonSyncQueueTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      payloadJson:
          data.payloadJson.present ? data.payloadJson.value : this.payloadJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonSyncQueueTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lessonId: $lessonId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, lessonId, payloadJson, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonSyncQueueTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.lessonId == this.lessonId &&
          other.payloadJson == this.payloadJson &&
          other.createdAt == this.createdAt);
}

class LessonSyncQueueTableCompanion
    extends UpdateCompanion<LessonSyncQueueTableData> {
  final Value<int> id;
  final Value<String> userId;
  final Value<String> lessonId;
  final Value<String> payloadJson;
  final Value<DateTime> createdAt;
  const LessonSyncQueueTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  LessonSyncQueueTableCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    required String lessonId,
    required String payloadJson,
    this.createdAt = const Value.absent(),
  })  : userId = Value(userId),
        lessonId = Value(lessonId),
        payloadJson = Value(payloadJson);
  static Insertable<LessonSyncQueueTableData> custom({
    Expression<int>? id,
    Expression<String>? userId,
    Expression<String>? lessonId,
    Expression<String>? payloadJson,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (lessonId != null) 'lesson_id': lessonId,
      if (payloadJson != null) 'payload_json': payloadJson,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  LessonSyncQueueTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? userId,
      Value<String>? lessonId,
      Value<String>? payloadJson,
      Value<DateTime>? createdAt}) {
    return LessonSyncQueueTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      lessonId: lessonId ?? this.lessonId,
      payloadJson: payloadJson ?? this.payloadJson,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (lessonId.present) {
      map['lesson_id'] = Variable<String>(lessonId.value);
    }
    if (payloadJson.present) {
      map['payload_json'] = Variable<String>(payloadJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonSyncQueueTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lessonId: $lessonId, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $DictionaryCacheTableTable extends DictionaryCacheTable
    with TableInfo<$DictionaryCacheTableTable, DictionaryCacheTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DictionaryCacheTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _wordMeta = const VerificationMeta('word');
  @override
  late final GeneratedColumn<String> word = GeneratedColumn<String>(
      'word', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _entryJsonMeta =
      const VerificationMeta('entryJson');
  @override
  late final GeneratedColumn<String> entryJson = GeneratedColumn<String>(
      'entry_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cachedAtMeta =
      const VerificationMeta('cachedAt');
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
      'cached_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [word, language, entryJson, cachedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dictionary_cache_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DictionaryCacheTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('word')) {
      context.handle(
          _wordMeta, word.isAcceptableOrUnknown(data['word']!, _wordMeta));
    } else if (isInserting) {
      context.missing(_wordMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('entry_json')) {
      context.handle(_entryJsonMeta,
          entryJson.isAcceptableOrUnknown(data['entry_json']!, _entryJsonMeta));
    } else if (isInserting) {
      context.missing(_entryJsonMeta);
    }
    if (data.containsKey('cached_at')) {
      context.handle(_cachedAtMeta,
          cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta));
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {word, language};
  @override
  DictionaryCacheTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DictionaryCacheTableData(
      word: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}word'])!,
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      entryJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entry_json'])!,
      cachedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}cached_at'])!,
    );
  }

  @override
  $DictionaryCacheTableTable createAlias(String alias) {
    return $DictionaryCacheTableTable(attachedDatabase, alias);
  }
}

class DictionaryCacheTableData extends DataClass
    implements Insertable<DictionaryCacheTableData> {
  final String word;
  final String language;
  final String entryJson;
  final DateTime cachedAt;
  const DictionaryCacheTableData(
      {required this.word,
      required this.language,
      required this.entryJson,
      required this.cachedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['word'] = Variable<String>(word);
    map['language'] = Variable<String>(language);
    map['entry_json'] = Variable<String>(entryJson);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  DictionaryCacheTableCompanion toCompanion(bool nullToAbsent) {
    return DictionaryCacheTableCompanion(
      word: Value(word),
      language: Value(language),
      entryJson: Value(entryJson),
      cachedAt: Value(cachedAt),
    );
  }

  factory DictionaryCacheTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DictionaryCacheTableData(
      word: serializer.fromJson<String>(json['word']),
      language: serializer.fromJson<String>(json['language']),
      entryJson: serializer.fromJson<String>(json['entryJson']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'word': serializer.toJson<String>(word),
      'language': serializer.toJson<String>(language),
      'entryJson': serializer.toJson<String>(entryJson),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  DictionaryCacheTableData copyWith(
          {String? word,
          String? language,
          String? entryJson,
          DateTime? cachedAt}) =>
      DictionaryCacheTableData(
        word: word ?? this.word,
        language: language ?? this.language,
        entryJson: entryJson ?? this.entryJson,
        cachedAt: cachedAt ?? this.cachedAt,
      );
  DictionaryCacheTableData copyWithCompanion(
      DictionaryCacheTableCompanion data) {
    return DictionaryCacheTableData(
      word: data.word.present ? data.word.value : this.word,
      language: data.language.present ? data.language.value : this.language,
      entryJson: data.entryJson.present ? data.entryJson.value : this.entryJson,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryCacheTableData(')
          ..write('word: $word, ')
          ..write('language: $language, ')
          ..write('entryJson: $entryJson, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(word, language, entryJson, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DictionaryCacheTableData &&
          other.word == this.word &&
          other.language == this.language &&
          other.entryJson == this.entryJson &&
          other.cachedAt == this.cachedAt);
}

class DictionaryCacheTableCompanion
    extends UpdateCompanion<DictionaryCacheTableData> {
  final Value<String> word;
  final Value<String> language;
  final Value<String> entryJson;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const DictionaryCacheTableCompanion({
    this.word = const Value.absent(),
    this.language = const Value.absent(),
    this.entryJson = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DictionaryCacheTableCompanion.insert({
    required String word,
    required String language,
    required String entryJson,
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  })  : word = Value(word),
        language = Value(language),
        entryJson = Value(entryJson),
        cachedAt = Value(cachedAt);
  static Insertable<DictionaryCacheTableData> custom({
    Expression<String>? word,
    Expression<String>? language,
    Expression<String>? entryJson,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (word != null) 'word': word,
      if (language != null) 'language': language,
      if (entryJson != null) 'entry_json': entryJson,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DictionaryCacheTableCompanion copyWith(
      {Value<String>? word,
      Value<String>? language,
      Value<String>? entryJson,
      Value<DateTime>? cachedAt,
      Value<int>? rowid}) {
    return DictionaryCacheTableCompanion(
      word: word ?? this.word,
      language: language ?? this.language,
      entryJson: entryJson ?? this.entryJson,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (word.present) {
      map['word'] = Variable<String>(word.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (entryJson.present) {
      map['entry_json'] = Variable<String>(entryJson.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryCacheTableCompanion(')
          ..write('word: $word, ')
          ..write('language: $language, ')
          ..write('entryJson: $entryJson, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AnswerHistoryLocalTableTable extends AnswerHistoryLocalTable
    with TableInfo<$AnswerHistoryLocalTableTable, AnswerHistoryLocalTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnswerHistoryLocalTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _lessonIdMeta =
      const VerificationMeta('lessonId');
  @override
  late final GeneratedColumn<String> lessonId = GeneratedColumn<String>(
      'lesson_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _blockTypeMeta =
      const VerificationMeta('blockType');
  @override
  late final GeneratedColumn<String> blockType = GeneratedColumn<String>(
      'block_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isCorrectMeta =
      const VerificationMeta('isCorrect');
  @override
  late final GeneratedColumn<bool> isCorrect = GeneratedColumn<bool>(
      'is_correct', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_correct" IN (0, 1))'));
  static const VerificationMeta _timeSpentSecondsMeta =
      const VerificationMeta('timeSpentSeconds');
  @override
  late final GeneratedColumn<int> timeSpentSeconds = GeneratedColumn<int>(
      'time_spent_seconds', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, lessonId, blockType, isCorrect, timeSpentSeconds, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'answer_history_local_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AnswerHistoryLocalTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('lesson_id')) {
      context.handle(_lessonIdMeta,
          lessonId.isAcceptableOrUnknown(data['lesson_id']!, _lessonIdMeta));
    }
    if (data.containsKey('block_type')) {
      context.handle(_blockTypeMeta,
          blockType.isAcceptableOrUnknown(data['block_type']!, _blockTypeMeta));
    } else if (isInserting) {
      context.missing(_blockTypeMeta);
    }
    if (data.containsKey('is_correct')) {
      context.handle(_isCorrectMeta,
          isCorrect.isAcceptableOrUnknown(data['is_correct']!, _isCorrectMeta));
    } else if (isInserting) {
      context.missing(_isCorrectMeta);
    }
    if (data.containsKey('time_spent_seconds')) {
      context.handle(
          _timeSpentSecondsMeta,
          timeSpentSeconds.isAcceptableOrUnknown(
              data['time_spent_seconds']!, _timeSpentSecondsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnswerHistoryLocalTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnswerHistoryLocalTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      lessonId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lesson_id']),
      blockType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}block_type'])!,
      isCorrect: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_correct'])!,
      timeSpentSeconds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}time_spent_seconds']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $AnswerHistoryLocalTableTable createAlias(String alias) {
    return $AnswerHistoryLocalTableTable(attachedDatabase, alias);
  }
}

class AnswerHistoryLocalTableData extends DataClass
    implements Insertable<AnswerHistoryLocalTableData> {
  final int id;
  final String? lessonId;
  final String blockType;
  final bool isCorrect;
  final int? timeSpentSeconds;
  final DateTime createdAt;
  const AnswerHistoryLocalTableData(
      {required this.id,
      this.lessonId,
      required this.blockType,
      required this.isCorrect,
      this.timeSpentSeconds,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || lessonId != null) {
      map['lesson_id'] = Variable<String>(lessonId);
    }
    map['block_type'] = Variable<String>(blockType);
    map['is_correct'] = Variable<bool>(isCorrect);
    if (!nullToAbsent || timeSpentSeconds != null) {
      map['time_spent_seconds'] = Variable<int>(timeSpentSeconds);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  AnswerHistoryLocalTableCompanion toCompanion(bool nullToAbsent) {
    return AnswerHistoryLocalTableCompanion(
      id: Value(id),
      lessonId: lessonId == null && nullToAbsent
          ? const Value.absent()
          : Value(lessonId),
      blockType: Value(blockType),
      isCorrect: Value(isCorrect),
      timeSpentSeconds: timeSpentSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(timeSpentSeconds),
      createdAt: Value(createdAt),
    );
  }

  factory AnswerHistoryLocalTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnswerHistoryLocalTableData(
      id: serializer.fromJson<int>(json['id']),
      lessonId: serializer.fromJson<String?>(json['lessonId']),
      blockType: serializer.fromJson<String>(json['blockType']),
      isCorrect: serializer.fromJson<bool>(json['isCorrect']),
      timeSpentSeconds: serializer.fromJson<int?>(json['timeSpentSeconds']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lessonId': serializer.toJson<String?>(lessonId),
      'blockType': serializer.toJson<String>(blockType),
      'isCorrect': serializer.toJson<bool>(isCorrect),
      'timeSpentSeconds': serializer.toJson<int?>(timeSpentSeconds),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  AnswerHistoryLocalTableData copyWith(
          {int? id,
          Value<String?> lessonId = const Value.absent(),
          String? blockType,
          bool? isCorrect,
          Value<int?> timeSpentSeconds = const Value.absent(),
          DateTime? createdAt}) =>
      AnswerHistoryLocalTableData(
        id: id ?? this.id,
        lessonId: lessonId.present ? lessonId.value : this.lessonId,
        blockType: blockType ?? this.blockType,
        isCorrect: isCorrect ?? this.isCorrect,
        timeSpentSeconds: timeSpentSeconds.present
            ? timeSpentSeconds.value
            : this.timeSpentSeconds,
        createdAt: createdAt ?? this.createdAt,
      );
  AnswerHistoryLocalTableData copyWithCompanion(
      AnswerHistoryLocalTableCompanion data) {
    return AnswerHistoryLocalTableData(
      id: data.id.present ? data.id.value : this.id,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      blockType: data.blockType.present ? data.blockType.value : this.blockType,
      isCorrect: data.isCorrect.present ? data.isCorrect.value : this.isCorrect,
      timeSpentSeconds: data.timeSpentSeconds.present
          ? data.timeSpentSeconds.value
          : this.timeSpentSeconds,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnswerHistoryLocalTableData(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('blockType: $blockType, ')
          ..write('isCorrect: $isCorrect, ')
          ..write('timeSpentSeconds: $timeSpentSeconds, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, lessonId, blockType, isCorrect, timeSpentSeconds, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnswerHistoryLocalTableData &&
          other.id == this.id &&
          other.lessonId == this.lessonId &&
          other.blockType == this.blockType &&
          other.isCorrect == this.isCorrect &&
          other.timeSpentSeconds == this.timeSpentSeconds &&
          other.createdAt == this.createdAt);
}

class AnswerHistoryLocalTableCompanion
    extends UpdateCompanion<AnswerHistoryLocalTableData> {
  final Value<int> id;
  final Value<String?> lessonId;
  final Value<String> blockType;
  final Value<bool> isCorrect;
  final Value<int?> timeSpentSeconds;
  final Value<DateTime> createdAt;
  const AnswerHistoryLocalTableCompanion({
    this.id = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.blockType = const Value.absent(),
    this.isCorrect = const Value.absent(),
    this.timeSpentSeconds = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AnswerHistoryLocalTableCompanion.insert({
    this.id = const Value.absent(),
    this.lessonId = const Value.absent(),
    required String blockType,
    required bool isCorrect,
    this.timeSpentSeconds = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : blockType = Value(blockType),
        isCorrect = Value(isCorrect);
  static Insertable<AnswerHistoryLocalTableData> custom({
    Expression<int>? id,
    Expression<String>? lessonId,
    Expression<String>? blockType,
    Expression<bool>? isCorrect,
    Expression<int>? timeSpentSeconds,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lessonId != null) 'lesson_id': lessonId,
      if (blockType != null) 'block_type': blockType,
      if (isCorrect != null) 'is_correct': isCorrect,
      if (timeSpentSeconds != null) 'time_spent_seconds': timeSpentSeconds,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AnswerHistoryLocalTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? lessonId,
      Value<String>? blockType,
      Value<bool>? isCorrect,
      Value<int?>? timeSpentSeconds,
      Value<DateTime>? createdAt}) {
    return AnswerHistoryLocalTableCompanion(
      id: id ?? this.id,
      lessonId: lessonId ?? this.lessonId,
      blockType: blockType ?? this.blockType,
      isCorrect: isCorrect ?? this.isCorrect,
      timeSpentSeconds: timeSpentSeconds ?? this.timeSpentSeconds,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lessonId.present) {
      map['lesson_id'] = Variable<String>(lessonId.value);
    }
    if (blockType.present) {
      map['block_type'] = Variable<String>(blockType.value);
    }
    if (isCorrect.present) {
      map['is_correct'] = Variable<bool>(isCorrect.value);
    }
    if (timeSpentSeconds.present) {
      map['time_spent_seconds'] = Variable<int>(timeSpentSeconds.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnswerHistoryLocalTableCompanion(')
          ..write('id: $id, ')
          ..write('lessonId: $lessonId, ')
          ..write('blockType: $blockType, ')
          ..write('isCorrect: $isCorrect, ')
          ..write('timeSpentSeconds: $timeSpentSeconds, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FlashcardTableTable flashcardTable = $FlashcardTableTable(this);
  late final $LessonCacheTableTable lessonCacheTable =
      $LessonCacheTableTable(this);
  late final $LessonProgressTableTable lessonProgressTable =
      $LessonProgressTableTable(this);
  late final $UserStatsTableTable userStatsTable = $UserStatsTableTable(this);
  late final $LessonSyncQueueTableTable lessonSyncQueueTable =
      $LessonSyncQueueTableTable(this);
  late final $DictionaryCacheTableTable dictionaryCacheTable =
      $DictionaryCacheTableTable(this);
  late final $AnswerHistoryLocalTableTable answerHistoryLocalTable =
      $AnswerHistoryLocalTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        flashcardTable,
        lessonCacheTable,
        lessonProgressTable,
        userStatsTable,
        lessonSyncQueueTable,
        dictionaryCacheTable,
        answerHistoryLocalTable
      ];
}

typedef $$FlashcardTableTableCreateCompanionBuilder = FlashcardTableCompanion
    Function({
  Value<int> id,
  Value<String?> remoteId,
  required String front,
  required String back,
  Value<String?> exampleText,
  Value<double> easeFactor,
  Value<int> intervalDays,
  Value<int> repetitions,
  required DateTime nextReviewDate,
  Value<bool> isDirty,
  Value<DateTime> createdAt,
});
typedef $$FlashcardTableTableUpdateCompanionBuilder = FlashcardTableCompanion
    Function({
  Value<int> id,
  Value<String?> remoteId,
  Value<String> front,
  Value<String> back,
  Value<String?> exampleText,
  Value<double> easeFactor,
  Value<int> intervalDays,
  Value<int> repetitions,
  Value<DateTime> nextReviewDate,
  Value<bool> isDirty,
  Value<DateTime> createdAt,
});

class $$FlashcardTableTableFilterComposer
    extends Composer<_$AppDatabase, $FlashcardTableTable> {
  $$FlashcardTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get front => $composableBuilder(
      column: $table.front, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get back => $composableBuilder(
      column: $table.back, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get exampleText => $composableBuilder(
      column: $table.exampleText, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get easeFactor => $composableBuilder(
      column: $table.easeFactor, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get repetitions => $composableBuilder(
      column: $table.repetitions, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get nextReviewDate => $composableBuilder(
      column: $table.nextReviewDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDirty => $composableBuilder(
      column: $table.isDirty, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$FlashcardTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FlashcardTableTable> {
  $$FlashcardTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get front => $composableBuilder(
      column: $table.front, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get back => $composableBuilder(
      column: $table.back, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get exampleText => $composableBuilder(
      column: $table.exampleText, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get easeFactor => $composableBuilder(
      column: $table.easeFactor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get repetitions => $composableBuilder(
      column: $table.repetitions, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get nextReviewDate => $composableBuilder(
      column: $table.nextReviewDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDirty => $composableBuilder(
      column: $table.isDirty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$FlashcardTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FlashcardTableTable> {
  $$FlashcardTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get front =>
      $composableBuilder(column: $table.front, builder: (column) => column);

  GeneratedColumn<String> get back =>
      $composableBuilder(column: $table.back, builder: (column) => column);

  GeneratedColumn<String> get exampleText => $composableBuilder(
      column: $table.exampleText, builder: (column) => column);

  GeneratedColumn<double> get easeFactor => $composableBuilder(
      column: $table.easeFactor, builder: (column) => column);

  GeneratedColumn<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays, builder: (column) => column);

  GeneratedColumn<int> get repetitions => $composableBuilder(
      column: $table.repetitions, builder: (column) => column);

  GeneratedColumn<DateTime> get nextReviewDate => $composableBuilder(
      column: $table.nextReviewDate, builder: (column) => column);

  GeneratedColumn<bool> get isDirty =>
      $composableBuilder(column: $table.isDirty, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$FlashcardTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FlashcardTableTable,
    FlashcardTableData,
    $$FlashcardTableTableFilterComposer,
    $$FlashcardTableTableOrderingComposer,
    $$FlashcardTableTableAnnotationComposer,
    $$FlashcardTableTableCreateCompanionBuilder,
    $$FlashcardTableTableUpdateCompanionBuilder,
    (
      FlashcardTableData,
      BaseReferences<_$AppDatabase, $FlashcardTableTable, FlashcardTableData>
    ),
    FlashcardTableData,
    PrefetchHooks Function()> {
  $$FlashcardTableTableTableManager(
      _$AppDatabase db, $FlashcardTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FlashcardTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FlashcardTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FlashcardTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> front = const Value.absent(),
            Value<String> back = const Value.absent(),
            Value<String?> exampleText = const Value.absent(),
            Value<double> easeFactor = const Value.absent(),
            Value<int> intervalDays = const Value.absent(),
            Value<int> repetitions = const Value.absent(),
            Value<DateTime> nextReviewDate = const Value.absent(),
            Value<bool> isDirty = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              FlashcardTableCompanion(
            id: id,
            remoteId: remoteId,
            front: front,
            back: back,
            exampleText: exampleText,
            easeFactor: easeFactor,
            intervalDays: intervalDays,
            repetitions: repetitions,
            nextReviewDate: nextReviewDate,
            isDirty: isDirty,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            required String front,
            required String back,
            Value<String?> exampleText = const Value.absent(),
            Value<double> easeFactor = const Value.absent(),
            Value<int> intervalDays = const Value.absent(),
            Value<int> repetitions = const Value.absent(),
            required DateTime nextReviewDate,
            Value<bool> isDirty = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              FlashcardTableCompanion.insert(
            id: id,
            remoteId: remoteId,
            front: front,
            back: back,
            exampleText: exampleText,
            easeFactor: easeFactor,
            intervalDays: intervalDays,
            repetitions: repetitions,
            nextReviewDate: nextReviewDate,
            isDirty: isDirty,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FlashcardTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FlashcardTableTable,
    FlashcardTableData,
    $$FlashcardTableTableFilterComposer,
    $$FlashcardTableTableOrderingComposer,
    $$FlashcardTableTableAnnotationComposer,
    $$FlashcardTableTableCreateCompanionBuilder,
    $$FlashcardTableTableUpdateCompanionBuilder,
    (
      FlashcardTableData,
      BaseReferences<_$AppDatabase, $FlashcardTableTable, FlashcardTableData>
    ),
    FlashcardTableData,
    PrefetchHooks Function()>;
typedef $$LessonCacheTableTableCreateCompanionBuilder
    = LessonCacheTableCompanion Function({
  required String lessonId,
  required String lessonJson,
  required DateTime cachedAt,
  Value<int> rowid,
});
typedef $$LessonCacheTableTableUpdateCompanionBuilder
    = LessonCacheTableCompanion Function({
  Value<String> lessonId,
  Value<String> lessonJson,
  Value<DateTime> cachedAt,
  Value<int> rowid,
});

class $$LessonCacheTableTableFilterComposer
    extends Composer<_$AppDatabase, $LessonCacheTableTable> {
  $$LessonCacheTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lessonJson => $composableBuilder(
      column: $table.lessonJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnFilters(column));
}

class $$LessonCacheTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonCacheTableTable> {
  $$LessonCacheTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lessonJson => $composableBuilder(
      column: $table.lessonJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnOrderings(column));
}

class $$LessonCacheTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonCacheTableTable> {
  $$LessonCacheTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get lessonId =>
      $composableBuilder(column: $table.lessonId, builder: (column) => column);

  GeneratedColumn<String> get lessonJson => $composableBuilder(
      column: $table.lessonJson, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$LessonCacheTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LessonCacheTableTable,
    LessonCacheTableData,
    $$LessonCacheTableTableFilterComposer,
    $$LessonCacheTableTableOrderingComposer,
    $$LessonCacheTableTableAnnotationComposer,
    $$LessonCacheTableTableCreateCompanionBuilder,
    $$LessonCacheTableTableUpdateCompanionBuilder,
    (
      LessonCacheTableData,
      BaseReferences<_$AppDatabase, $LessonCacheTableTable,
          LessonCacheTableData>
    ),
    LessonCacheTableData,
    PrefetchHooks Function()> {
  $$LessonCacheTableTableTableManager(
      _$AppDatabase db, $LessonCacheTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonCacheTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonCacheTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonCacheTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> lessonId = const Value.absent(),
            Value<String> lessonJson = const Value.absent(),
            Value<DateTime> cachedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LessonCacheTableCompanion(
            lessonId: lessonId,
            lessonJson: lessonJson,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String lessonId,
            required String lessonJson,
            required DateTime cachedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              LessonCacheTableCompanion.insert(
            lessonId: lessonId,
            lessonJson: lessonJson,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LessonCacheTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LessonCacheTableTable,
    LessonCacheTableData,
    $$LessonCacheTableTableFilterComposer,
    $$LessonCacheTableTableOrderingComposer,
    $$LessonCacheTableTableAnnotationComposer,
    $$LessonCacheTableTableCreateCompanionBuilder,
    $$LessonCacheTableTableUpdateCompanionBuilder,
    (
      LessonCacheTableData,
      BaseReferences<_$AppDatabase, $LessonCacheTableTable,
          LessonCacheTableData>
    ),
    LessonCacheTableData,
    PrefetchHooks Function()>;
typedef $$LessonProgressTableTableCreateCompanionBuilder
    = LessonProgressTableCompanion Function({
  required String userId,
  required String lessonId,
  Value<int> currentBlockIndex,
  Value<int> answeredBlocks,
  Value<int> correctAnswers,
  Value<int> earnedXp,
  Value<bool> isCompleted,
  Value<String?> lastBlockId,
  Value<DateTime?> updatedAt,
  Value<DateTime?> completedAt,
  Value<int> rowid,
});
typedef $$LessonProgressTableTableUpdateCompanionBuilder
    = LessonProgressTableCompanion Function({
  Value<String> userId,
  Value<String> lessonId,
  Value<int> currentBlockIndex,
  Value<int> answeredBlocks,
  Value<int> correctAnswers,
  Value<int> earnedXp,
  Value<bool> isCompleted,
  Value<String?> lastBlockId,
  Value<DateTime?> updatedAt,
  Value<DateTime?> completedAt,
  Value<int> rowid,
});

class $$LessonProgressTableTableFilterComposer
    extends Composer<_$AppDatabase, $LessonProgressTableTable> {
  $$LessonProgressTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get currentBlockIndex => $composableBuilder(
      column: $table.currentBlockIndex,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get answeredBlocks => $composableBuilder(
      column: $table.answeredBlocks,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get correctAnswers => $composableBuilder(
      column: $table.correctAnswers,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get earnedXp => $composableBuilder(
      column: $table.earnedXp, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isCompleted => $composableBuilder(
      column: $table.isCompleted, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastBlockId => $composableBuilder(
      column: $table.lastBlockId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => ColumnFilters(column));
}

class $$LessonProgressTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonProgressTableTable> {
  $$LessonProgressTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get currentBlockIndex => $composableBuilder(
      column: $table.currentBlockIndex,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get answeredBlocks => $composableBuilder(
      column: $table.answeredBlocks,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get correctAnswers => $composableBuilder(
      column: $table.correctAnswers,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get earnedXp => $composableBuilder(
      column: $table.earnedXp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isCompleted => $composableBuilder(
      column: $table.isCompleted, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastBlockId => $composableBuilder(
      column: $table.lastBlockId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => ColumnOrderings(column));
}

class $$LessonProgressTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonProgressTableTable> {
  $$LessonProgressTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get lessonId =>
      $composableBuilder(column: $table.lessonId, builder: (column) => column);

  GeneratedColumn<int> get currentBlockIndex => $composableBuilder(
      column: $table.currentBlockIndex, builder: (column) => column);

  GeneratedColumn<int> get answeredBlocks => $composableBuilder(
      column: $table.answeredBlocks, builder: (column) => column);

  GeneratedColumn<int> get correctAnswers => $composableBuilder(
      column: $table.correctAnswers, builder: (column) => column);

  GeneratedColumn<int> get earnedXp =>
      $composableBuilder(column: $table.earnedXp, builder: (column) => column);

  GeneratedColumn<bool> get isCompleted => $composableBuilder(
      column: $table.isCompleted, builder: (column) => column);

  GeneratedColumn<String> get lastBlockId => $composableBuilder(
      column: $table.lastBlockId, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
      column: $table.completedAt, builder: (column) => column);
}

class $$LessonProgressTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LessonProgressTableTable,
    LessonProgressTableData,
    $$LessonProgressTableTableFilterComposer,
    $$LessonProgressTableTableOrderingComposer,
    $$LessonProgressTableTableAnnotationComposer,
    $$LessonProgressTableTableCreateCompanionBuilder,
    $$LessonProgressTableTableUpdateCompanionBuilder,
    (
      LessonProgressTableData,
      BaseReferences<_$AppDatabase, $LessonProgressTableTable,
          LessonProgressTableData>
    ),
    LessonProgressTableData,
    PrefetchHooks Function()> {
  $$LessonProgressTableTableTableManager(
      _$AppDatabase db, $LessonProgressTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonProgressTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonProgressTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonProgressTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> userId = const Value.absent(),
            Value<String> lessonId = const Value.absent(),
            Value<int> currentBlockIndex = const Value.absent(),
            Value<int> answeredBlocks = const Value.absent(),
            Value<int> correctAnswers = const Value.absent(),
            Value<int> earnedXp = const Value.absent(),
            Value<bool> isCompleted = const Value.absent(),
            Value<String?> lastBlockId = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> completedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LessonProgressTableCompanion(
            userId: userId,
            lessonId: lessonId,
            currentBlockIndex: currentBlockIndex,
            answeredBlocks: answeredBlocks,
            correctAnswers: correctAnswers,
            earnedXp: earnedXp,
            isCompleted: isCompleted,
            lastBlockId: lastBlockId,
            updatedAt: updatedAt,
            completedAt: completedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userId,
            required String lessonId,
            Value<int> currentBlockIndex = const Value.absent(),
            Value<int> answeredBlocks = const Value.absent(),
            Value<int> correctAnswers = const Value.absent(),
            Value<int> earnedXp = const Value.absent(),
            Value<bool> isCompleted = const Value.absent(),
            Value<String?> lastBlockId = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> completedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LessonProgressTableCompanion.insert(
            userId: userId,
            lessonId: lessonId,
            currentBlockIndex: currentBlockIndex,
            answeredBlocks: answeredBlocks,
            correctAnswers: correctAnswers,
            earnedXp: earnedXp,
            isCompleted: isCompleted,
            lastBlockId: lastBlockId,
            updatedAt: updatedAt,
            completedAt: completedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LessonProgressTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LessonProgressTableTable,
    LessonProgressTableData,
    $$LessonProgressTableTableFilterComposer,
    $$LessonProgressTableTableOrderingComposer,
    $$LessonProgressTableTableAnnotationComposer,
    $$LessonProgressTableTableCreateCompanionBuilder,
    $$LessonProgressTableTableUpdateCompanionBuilder,
    (
      LessonProgressTableData,
      BaseReferences<_$AppDatabase, $LessonProgressTableTable,
          LessonProgressTableData>
    ),
    LessonProgressTableData,
    PrefetchHooks Function()>;
typedef $$UserStatsTableTableCreateCompanionBuilder = UserStatsTableCompanion
    Function({
  required String userId,
  Value<int> totalXp,
  Value<int> level,
  Value<int> totalLessonsCompleted,
  Value<int> totalBlocksAnswered,
  Value<int> totalCorrectBlocks,
  Value<DateTime?> updatedAt,
  Value<int> rowid,
});
typedef $$UserStatsTableTableUpdateCompanionBuilder = UserStatsTableCompanion
    Function({
  Value<String> userId,
  Value<int> totalXp,
  Value<int> level,
  Value<int> totalLessonsCompleted,
  Value<int> totalBlocksAnswered,
  Value<int> totalCorrectBlocks,
  Value<DateTime?> updatedAt,
  Value<int> rowid,
});

class $$UserStatsTableTableFilterComposer
    extends Composer<_$AppDatabase, $UserStatsTableTable> {
  $$UserStatsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalXp => $composableBuilder(
      column: $table.totalXp, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalLessonsCompleted => $composableBuilder(
      column: $table.totalLessonsCompleted,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalBlocksAnswered => $composableBuilder(
      column: $table.totalBlocksAnswered,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalCorrectBlocks => $composableBuilder(
      column: $table.totalCorrectBlocks,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$UserStatsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $UserStatsTableTable> {
  $$UserStatsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalXp => $composableBuilder(
      column: $table.totalXp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalLessonsCompleted => $composableBuilder(
      column: $table.totalLessonsCompleted,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalBlocksAnswered => $composableBuilder(
      column: $table.totalBlocksAnswered,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalCorrectBlocks => $composableBuilder(
      column: $table.totalCorrectBlocks,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$UserStatsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserStatsTableTable> {
  $$UserStatsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<int> get totalXp =>
      $composableBuilder(column: $table.totalXp, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get totalLessonsCompleted => $composableBuilder(
      column: $table.totalLessonsCompleted, builder: (column) => column);

  GeneratedColumn<int> get totalBlocksAnswered => $composableBuilder(
      column: $table.totalBlocksAnswered, builder: (column) => column);

  GeneratedColumn<int> get totalCorrectBlocks => $composableBuilder(
      column: $table.totalCorrectBlocks, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$UserStatsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserStatsTableTable,
    UserStatsTableData,
    $$UserStatsTableTableFilterComposer,
    $$UserStatsTableTableOrderingComposer,
    $$UserStatsTableTableAnnotationComposer,
    $$UserStatsTableTableCreateCompanionBuilder,
    $$UserStatsTableTableUpdateCompanionBuilder,
    (
      UserStatsTableData,
      BaseReferences<_$AppDatabase, $UserStatsTableTable, UserStatsTableData>
    ),
    UserStatsTableData,
    PrefetchHooks Function()> {
  $$UserStatsTableTableTableManager(
      _$AppDatabase db, $UserStatsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserStatsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserStatsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserStatsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> userId = const Value.absent(),
            Value<int> totalXp = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<int> totalLessonsCompleted = const Value.absent(),
            Value<int> totalBlocksAnswered = const Value.absent(),
            Value<int> totalCorrectBlocks = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserStatsTableCompanion(
            userId: userId,
            totalXp: totalXp,
            level: level,
            totalLessonsCompleted: totalLessonsCompleted,
            totalBlocksAnswered: totalBlocksAnswered,
            totalCorrectBlocks: totalCorrectBlocks,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userId,
            Value<int> totalXp = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<int> totalLessonsCompleted = const Value.absent(),
            Value<int> totalBlocksAnswered = const Value.absent(),
            Value<int> totalCorrectBlocks = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserStatsTableCompanion.insert(
            userId: userId,
            totalXp: totalXp,
            level: level,
            totalLessonsCompleted: totalLessonsCompleted,
            totalBlocksAnswered: totalBlocksAnswered,
            totalCorrectBlocks: totalCorrectBlocks,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserStatsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserStatsTableTable,
    UserStatsTableData,
    $$UserStatsTableTableFilterComposer,
    $$UserStatsTableTableOrderingComposer,
    $$UserStatsTableTableAnnotationComposer,
    $$UserStatsTableTableCreateCompanionBuilder,
    $$UserStatsTableTableUpdateCompanionBuilder,
    (
      UserStatsTableData,
      BaseReferences<_$AppDatabase, $UserStatsTableTable, UserStatsTableData>
    ),
    UserStatsTableData,
    PrefetchHooks Function()>;
typedef $$LessonSyncQueueTableTableCreateCompanionBuilder
    = LessonSyncQueueTableCompanion Function({
  Value<int> id,
  required String userId,
  required String lessonId,
  required String payloadJson,
  Value<DateTime> createdAt,
});
typedef $$LessonSyncQueueTableTableUpdateCompanionBuilder
    = LessonSyncQueueTableCompanion Function({
  Value<int> id,
  Value<String> userId,
  Value<String> lessonId,
  Value<String> payloadJson,
  Value<DateTime> createdAt,
});

class $$LessonSyncQueueTableTableFilterComposer
    extends Composer<_$AppDatabase, $LessonSyncQueueTableTable> {
  $$LessonSyncQueueTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get payloadJson => $composableBuilder(
      column: $table.payloadJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$LessonSyncQueueTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonSyncQueueTableTable> {
  $$LessonSyncQueueTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get payloadJson => $composableBuilder(
      column: $table.payloadJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$LessonSyncQueueTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonSyncQueueTableTable> {
  $$LessonSyncQueueTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get lessonId =>
      $composableBuilder(column: $table.lessonId, builder: (column) => column);

  GeneratedColumn<String> get payloadJson => $composableBuilder(
      column: $table.payloadJson, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$LessonSyncQueueTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LessonSyncQueueTableTable,
    LessonSyncQueueTableData,
    $$LessonSyncQueueTableTableFilterComposer,
    $$LessonSyncQueueTableTableOrderingComposer,
    $$LessonSyncQueueTableTableAnnotationComposer,
    $$LessonSyncQueueTableTableCreateCompanionBuilder,
    $$LessonSyncQueueTableTableUpdateCompanionBuilder,
    (
      LessonSyncQueueTableData,
      BaseReferences<_$AppDatabase, $LessonSyncQueueTableTable,
          LessonSyncQueueTableData>
    ),
    LessonSyncQueueTableData,
    PrefetchHooks Function()> {
  $$LessonSyncQueueTableTableTableManager(
      _$AppDatabase db, $LessonSyncQueueTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonSyncQueueTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonSyncQueueTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonSyncQueueTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> lessonId = const Value.absent(),
            Value<String> payloadJson = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              LessonSyncQueueTableCompanion(
            id: id,
            userId: userId,
            lessonId: lessonId,
            payloadJson: payloadJson,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userId,
            required String lessonId,
            required String payloadJson,
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              LessonSyncQueueTableCompanion.insert(
            id: id,
            userId: userId,
            lessonId: lessonId,
            payloadJson: payloadJson,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LessonSyncQueueTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LessonSyncQueueTableTable,
        LessonSyncQueueTableData,
        $$LessonSyncQueueTableTableFilterComposer,
        $$LessonSyncQueueTableTableOrderingComposer,
        $$LessonSyncQueueTableTableAnnotationComposer,
        $$LessonSyncQueueTableTableCreateCompanionBuilder,
        $$LessonSyncQueueTableTableUpdateCompanionBuilder,
        (
          LessonSyncQueueTableData,
          BaseReferences<_$AppDatabase, $LessonSyncQueueTableTable,
              LessonSyncQueueTableData>
        ),
        LessonSyncQueueTableData,
        PrefetchHooks Function()>;
typedef $$DictionaryCacheTableTableCreateCompanionBuilder
    = DictionaryCacheTableCompanion Function({
  required String word,
  required String language,
  required String entryJson,
  required DateTime cachedAt,
  Value<int> rowid,
});
typedef $$DictionaryCacheTableTableUpdateCompanionBuilder
    = DictionaryCacheTableCompanion Function({
  Value<String> word,
  Value<String> language,
  Value<String> entryJson,
  Value<DateTime> cachedAt,
  Value<int> rowid,
});

class $$DictionaryCacheTableTableFilterComposer
    extends Composer<_$AppDatabase, $DictionaryCacheTableTable> {
  $$DictionaryCacheTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get word => $composableBuilder(
      column: $table.word, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get entryJson => $composableBuilder(
      column: $table.entryJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnFilters(column));
}

class $$DictionaryCacheTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DictionaryCacheTableTable> {
  $$DictionaryCacheTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get word => $composableBuilder(
      column: $table.word, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get entryJson => $composableBuilder(
      column: $table.entryJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnOrderings(column));
}

class $$DictionaryCacheTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DictionaryCacheTableTable> {
  $$DictionaryCacheTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get word =>
      $composableBuilder(column: $table.word, builder: (column) => column);

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);

  GeneratedColumn<String> get entryJson =>
      $composableBuilder(column: $table.entryJson, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$DictionaryCacheTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DictionaryCacheTableTable,
    DictionaryCacheTableData,
    $$DictionaryCacheTableTableFilterComposer,
    $$DictionaryCacheTableTableOrderingComposer,
    $$DictionaryCacheTableTableAnnotationComposer,
    $$DictionaryCacheTableTableCreateCompanionBuilder,
    $$DictionaryCacheTableTableUpdateCompanionBuilder,
    (
      DictionaryCacheTableData,
      BaseReferences<_$AppDatabase, $DictionaryCacheTableTable,
          DictionaryCacheTableData>
    ),
    DictionaryCacheTableData,
    PrefetchHooks Function()> {
  $$DictionaryCacheTableTableTableManager(
      _$AppDatabase db, $DictionaryCacheTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DictionaryCacheTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DictionaryCacheTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DictionaryCacheTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> word = const Value.absent(),
            Value<String> language = const Value.absent(),
            Value<String> entryJson = const Value.absent(),
            Value<DateTime> cachedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionaryCacheTableCompanion(
            word: word,
            language: language,
            entryJson: entryJson,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String word,
            required String language,
            required String entryJson,
            required DateTime cachedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionaryCacheTableCompanion.insert(
            word: word,
            language: language,
            entryJson: entryJson,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DictionaryCacheTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $DictionaryCacheTableTable,
        DictionaryCacheTableData,
        $$DictionaryCacheTableTableFilterComposer,
        $$DictionaryCacheTableTableOrderingComposer,
        $$DictionaryCacheTableTableAnnotationComposer,
        $$DictionaryCacheTableTableCreateCompanionBuilder,
        $$DictionaryCacheTableTableUpdateCompanionBuilder,
        (
          DictionaryCacheTableData,
          BaseReferences<_$AppDatabase, $DictionaryCacheTableTable,
              DictionaryCacheTableData>
        ),
        DictionaryCacheTableData,
        PrefetchHooks Function()>;
typedef $$AnswerHistoryLocalTableTableCreateCompanionBuilder
    = AnswerHistoryLocalTableCompanion Function({
  Value<int> id,
  Value<String?> lessonId,
  required String blockType,
  required bool isCorrect,
  Value<int?> timeSpentSeconds,
  Value<DateTime> createdAt,
});
typedef $$AnswerHistoryLocalTableTableUpdateCompanionBuilder
    = AnswerHistoryLocalTableCompanion Function({
  Value<int> id,
  Value<String?> lessonId,
  Value<String> blockType,
  Value<bool> isCorrect,
  Value<int?> timeSpentSeconds,
  Value<DateTime> createdAt,
});

class $$AnswerHistoryLocalTableTableFilterComposer
    extends Composer<_$AppDatabase, $AnswerHistoryLocalTableTable> {
  $$AnswerHistoryLocalTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get blockType => $composableBuilder(
      column: $table.blockType, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isCorrect => $composableBuilder(
      column: $table.isCorrect, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get timeSpentSeconds => $composableBuilder(
      column: $table.timeSpentSeconds,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$AnswerHistoryLocalTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AnswerHistoryLocalTableTable> {
  $$AnswerHistoryLocalTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lessonId => $composableBuilder(
      column: $table.lessonId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get blockType => $composableBuilder(
      column: $table.blockType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isCorrect => $composableBuilder(
      column: $table.isCorrect, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get timeSpentSeconds => $composableBuilder(
      column: $table.timeSpentSeconds,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$AnswerHistoryLocalTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnswerHistoryLocalTableTable> {
  $$AnswerHistoryLocalTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get lessonId =>
      $composableBuilder(column: $table.lessonId, builder: (column) => column);

  GeneratedColumn<String> get blockType =>
      $composableBuilder(column: $table.blockType, builder: (column) => column);

  GeneratedColumn<bool> get isCorrect =>
      $composableBuilder(column: $table.isCorrect, builder: (column) => column);

  GeneratedColumn<int> get timeSpentSeconds => $composableBuilder(
      column: $table.timeSpentSeconds, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$AnswerHistoryLocalTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AnswerHistoryLocalTableTable,
    AnswerHistoryLocalTableData,
    $$AnswerHistoryLocalTableTableFilterComposer,
    $$AnswerHistoryLocalTableTableOrderingComposer,
    $$AnswerHistoryLocalTableTableAnnotationComposer,
    $$AnswerHistoryLocalTableTableCreateCompanionBuilder,
    $$AnswerHistoryLocalTableTableUpdateCompanionBuilder,
    (
      AnswerHistoryLocalTableData,
      BaseReferences<_$AppDatabase, $AnswerHistoryLocalTableTable,
          AnswerHistoryLocalTableData>
    ),
    AnswerHistoryLocalTableData,
    PrefetchHooks Function()> {
  $$AnswerHistoryLocalTableTableTableManager(
      _$AppDatabase db, $AnswerHistoryLocalTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnswerHistoryLocalTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$AnswerHistoryLocalTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnswerHistoryLocalTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> lessonId = const Value.absent(),
            Value<String> blockType = const Value.absent(),
            Value<bool> isCorrect = const Value.absent(),
            Value<int?> timeSpentSeconds = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              AnswerHistoryLocalTableCompanion(
            id: id,
            lessonId: lessonId,
            blockType: blockType,
            isCorrect: isCorrect,
            timeSpentSeconds: timeSpentSeconds,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> lessonId = const Value.absent(),
            required String blockType,
            required bool isCorrect,
            Value<int?> timeSpentSeconds = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              AnswerHistoryLocalTableCompanion.insert(
            id: id,
            lessonId: lessonId,
            blockType: blockType,
            isCorrect: isCorrect,
            timeSpentSeconds: timeSpentSeconds,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AnswerHistoryLocalTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $AnswerHistoryLocalTableTable,
        AnswerHistoryLocalTableData,
        $$AnswerHistoryLocalTableTableFilterComposer,
        $$AnswerHistoryLocalTableTableOrderingComposer,
        $$AnswerHistoryLocalTableTableAnnotationComposer,
        $$AnswerHistoryLocalTableTableCreateCompanionBuilder,
        $$AnswerHistoryLocalTableTableUpdateCompanionBuilder,
        (
          AnswerHistoryLocalTableData,
          BaseReferences<_$AppDatabase, $AnswerHistoryLocalTableTable,
              AnswerHistoryLocalTableData>
        ),
        AnswerHistoryLocalTableData,
        PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FlashcardTableTableTableManager get flashcardTable =>
      $$FlashcardTableTableTableManager(_db, _db.flashcardTable);
  $$LessonCacheTableTableTableManager get lessonCacheTable =>
      $$LessonCacheTableTableTableManager(_db, _db.lessonCacheTable);
  $$LessonProgressTableTableTableManager get lessonProgressTable =>
      $$LessonProgressTableTableTableManager(_db, _db.lessonProgressTable);
  $$UserStatsTableTableTableManager get userStatsTable =>
      $$UserStatsTableTableTableManager(_db, _db.userStatsTable);
  $$LessonSyncQueueTableTableTableManager get lessonSyncQueueTable =>
      $$LessonSyncQueueTableTableTableManager(_db, _db.lessonSyncQueueTable);
  $$DictionaryCacheTableTableTableManager get dictionaryCacheTable =>
      $$DictionaryCacheTableTableTableManager(_db, _db.dictionaryCacheTable);
  $$AnswerHistoryLocalTableTableTableManager get answerHistoryLocalTable =>
      $$AnswerHistoryLocalTableTableTableManager(
          _db, _db.answerHistoryLocalTable);
}
