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

class $LessonAttemptTableTable extends LessonAttemptTable
    with TableInfo<$LessonAttemptTableTable, LessonAttemptTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonAttemptTableTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _blockIdMeta =
      const VerificationMeta('blockId');
  @override
  late final GeneratedColumn<String> blockId = GeneratedColumn<String>(
      'block_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _attemptNumberMeta =
      const VerificationMeta('attemptNumber');
  @override
  late final GeneratedColumn<int> attemptNumber = GeneratedColumn<int>(
      'attempt_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _submittedAnswerMeta =
      const VerificationMeta('submittedAnswer');
  @override
  late final GeneratedColumn<String> submittedAnswer = GeneratedColumn<String>(
      'submitted_answer', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _selectedOptionIdsJsonMeta =
      const VerificationMeta('selectedOptionIdsJson');
  @override
  late final GeneratedColumn<String> selectedOptionIdsJson =
      GeneratedColumn<String>('selected_option_ids_json', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('[]'));
  static const VerificationMeta _isCorrectMeta =
      const VerificationMeta('isCorrect');
  @override
  late final GeneratedColumn<bool> isCorrect = GeneratedColumn<bool>(
      'is_correct', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_correct" IN (0, 1))'));
  static const VerificationMeta _feedbackMessageMeta =
      const VerificationMeta('feedbackMessage');
  @override
  late final GeneratedColumn<String> feedbackMessage = GeneratedColumn<String>(
      'feedback_message', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _earnedXpMeta =
      const VerificationMeta('earnedXp');
  @override
  late final GeneratedColumn<int> earnedXp = GeneratedColumn<int>(
      'earned_xp', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
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
        userId,
        lessonId,
        blockId,
        attemptNumber,
        submittedAnswer,
        selectedOptionIdsJson,
        isCorrect,
        feedbackMessage,
        earnedXp,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lesson_attempt_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<LessonAttemptTableData> instance,
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
    if (data.containsKey('block_id')) {
      context.handle(_blockIdMeta,
          blockId.isAcceptableOrUnknown(data['block_id']!, _blockIdMeta));
    } else if (isInserting) {
      context.missing(_blockIdMeta);
    }
    if (data.containsKey('attempt_number')) {
      context.handle(
          _attemptNumberMeta,
          attemptNumber.isAcceptableOrUnknown(
              data['attempt_number']!, _attemptNumberMeta));
    } else if (isInserting) {
      context.missing(_attemptNumberMeta);
    }
    if (data.containsKey('submitted_answer')) {
      context.handle(
          _submittedAnswerMeta,
          submittedAnswer.isAcceptableOrUnknown(
              data['submitted_answer']!, _submittedAnswerMeta));
    }
    if (data.containsKey('selected_option_ids_json')) {
      context.handle(
          _selectedOptionIdsJsonMeta,
          selectedOptionIdsJson.isAcceptableOrUnknown(
              data['selected_option_ids_json']!, _selectedOptionIdsJsonMeta));
    }
    if (data.containsKey('is_correct')) {
      context.handle(_isCorrectMeta,
          isCorrect.isAcceptableOrUnknown(data['is_correct']!, _isCorrectMeta));
    } else if (isInserting) {
      context.missing(_isCorrectMeta);
    }
    if (data.containsKey('feedback_message')) {
      context.handle(
          _feedbackMessageMeta,
          feedbackMessage.isAcceptableOrUnknown(
              data['feedback_message']!, _feedbackMessageMeta));
    }
    if (data.containsKey('earned_xp')) {
      context.handle(_earnedXpMeta,
          earnedXp.isAcceptableOrUnknown(data['earned_xp']!, _earnedXpMeta));
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
  LessonAttemptTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonAttemptTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      lessonId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lesson_id'])!,
      blockId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}block_id'])!,
      attemptNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}attempt_number'])!,
      submittedAnswer: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}submitted_answer']),
      selectedOptionIdsJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}selected_option_ids_json'])!,
      isCorrect: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_correct'])!,
      feedbackMessage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}feedback_message']),
      earnedXp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}earned_xp'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $LessonAttemptTableTable createAlias(String alias) {
    return $LessonAttemptTableTable(attachedDatabase, alias);
  }
}

class LessonAttemptTableData extends DataClass
    implements Insertable<LessonAttemptTableData> {
  final int id;
  final String userId;
  final String lessonId;
  final String blockId;
  final int attemptNumber;
  final String? submittedAnswer;
  final String selectedOptionIdsJson;
  final bool isCorrect;
  final String? feedbackMessage;
  final int earnedXp;
  final DateTime createdAt;
  const LessonAttemptTableData(
      {required this.id,
      required this.userId,
      required this.lessonId,
      required this.blockId,
      required this.attemptNumber,
      this.submittedAnswer,
      required this.selectedOptionIdsJson,
      required this.isCorrect,
      this.feedbackMessage,
      required this.earnedXp,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<String>(userId);
    map['lesson_id'] = Variable<String>(lessonId);
    map['block_id'] = Variable<String>(blockId);
    map['attempt_number'] = Variable<int>(attemptNumber);
    if (!nullToAbsent || submittedAnswer != null) {
      map['submitted_answer'] = Variable<String>(submittedAnswer);
    }
    map['selected_option_ids_json'] = Variable<String>(selectedOptionIdsJson);
    map['is_correct'] = Variable<bool>(isCorrect);
    if (!nullToAbsent || feedbackMessage != null) {
      map['feedback_message'] = Variable<String>(feedbackMessage);
    }
    map['earned_xp'] = Variable<int>(earnedXp);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  LessonAttemptTableCompanion toCompanion(bool nullToAbsent) {
    return LessonAttemptTableCompanion(
      id: Value(id),
      userId: Value(userId),
      lessonId: Value(lessonId),
      blockId: Value(blockId),
      attemptNumber: Value(attemptNumber),
      submittedAnswer: submittedAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(submittedAnswer),
      selectedOptionIdsJson: Value(selectedOptionIdsJson),
      isCorrect: Value(isCorrect),
      feedbackMessage: feedbackMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(feedbackMessage),
      earnedXp: Value(earnedXp),
      createdAt: Value(createdAt),
    );
  }

  factory LessonAttemptTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonAttemptTableData(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      lessonId: serializer.fromJson<String>(json['lessonId']),
      blockId: serializer.fromJson<String>(json['blockId']),
      attemptNumber: serializer.fromJson<int>(json['attemptNumber']),
      submittedAnswer: serializer.fromJson<String?>(json['submittedAnswer']),
      selectedOptionIdsJson:
          serializer.fromJson<String>(json['selectedOptionIdsJson']),
      isCorrect: serializer.fromJson<bool>(json['isCorrect']),
      feedbackMessage: serializer.fromJson<String?>(json['feedbackMessage']),
      earnedXp: serializer.fromJson<int>(json['earnedXp']),
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
      'blockId': serializer.toJson<String>(blockId),
      'attemptNumber': serializer.toJson<int>(attemptNumber),
      'submittedAnswer': serializer.toJson<String?>(submittedAnswer),
      'selectedOptionIdsJson': serializer.toJson<String>(selectedOptionIdsJson),
      'isCorrect': serializer.toJson<bool>(isCorrect),
      'feedbackMessage': serializer.toJson<String?>(feedbackMessage),
      'earnedXp': serializer.toJson<int>(earnedXp),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  LessonAttemptTableData copyWith(
          {int? id,
          String? userId,
          String? lessonId,
          String? blockId,
          int? attemptNumber,
          Value<String?> submittedAnswer = const Value.absent(),
          String? selectedOptionIdsJson,
          bool? isCorrect,
          Value<String?> feedbackMessage = const Value.absent(),
          int? earnedXp,
          DateTime? createdAt}) =>
      LessonAttemptTableData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        lessonId: lessonId ?? this.lessonId,
        blockId: blockId ?? this.blockId,
        attemptNumber: attemptNumber ?? this.attemptNumber,
        submittedAnswer: submittedAnswer.present
            ? submittedAnswer.value
            : this.submittedAnswer,
        selectedOptionIdsJson:
            selectedOptionIdsJson ?? this.selectedOptionIdsJson,
        isCorrect: isCorrect ?? this.isCorrect,
        feedbackMessage: feedbackMessage.present
            ? feedbackMessage.value
            : this.feedbackMessage,
        earnedXp: earnedXp ?? this.earnedXp,
        createdAt: createdAt ?? this.createdAt,
      );
  LessonAttemptTableData copyWithCompanion(LessonAttemptTableCompanion data) {
    return LessonAttemptTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      lessonId: data.lessonId.present ? data.lessonId.value : this.lessonId,
      blockId: data.blockId.present ? data.blockId.value : this.blockId,
      attemptNumber: data.attemptNumber.present
          ? data.attemptNumber.value
          : this.attemptNumber,
      submittedAnswer: data.submittedAnswer.present
          ? data.submittedAnswer.value
          : this.submittedAnswer,
      selectedOptionIdsJson: data.selectedOptionIdsJson.present
          ? data.selectedOptionIdsJson.value
          : this.selectedOptionIdsJson,
      isCorrect: data.isCorrect.present ? data.isCorrect.value : this.isCorrect,
      feedbackMessage: data.feedbackMessage.present
          ? data.feedbackMessage.value
          : this.feedbackMessage,
      earnedXp: data.earnedXp.present ? data.earnedXp.value : this.earnedXp,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonAttemptTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lessonId: $lessonId, ')
          ..write('blockId: $blockId, ')
          ..write('attemptNumber: $attemptNumber, ')
          ..write('submittedAnswer: $submittedAnswer, ')
          ..write('selectedOptionIdsJson: $selectedOptionIdsJson, ')
          ..write('isCorrect: $isCorrect, ')
          ..write('feedbackMessage: $feedbackMessage, ')
          ..write('earnedXp: $earnedXp, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      lessonId,
      blockId,
      attemptNumber,
      submittedAnswer,
      selectedOptionIdsJson,
      isCorrect,
      feedbackMessage,
      earnedXp,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonAttemptTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.lessonId == this.lessonId &&
          other.blockId == this.blockId &&
          other.attemptNumber == this.attemptNumber &&
          other.submittedAnswer == this.submittedAnswer &&
          other.selectedOptionIdsJson == this.selectedOptionIdsJson &&
          other.isCorrect == this.isCorrect &&
          other.feedbackMessage == this.feedbackMessage &&
          other.earnedXp == this.earnedXp &&
          other.createdAt == this.createdAt);
}

class LessonAttemptTableCompanion
    extends UpdateCompanion<LessonAttemptTableData> {
  final Value<int> id;
  final Value<String> userId;
  final Value<String> lessonId;
  final Value<String> blockId;
  final Value<int> attemptNumber;
  final Value<String?> submittedAnswer;
  final Value<String> selectedOptionIdsJson;
  final Value<bool> isCorrect;
  final Value<String?> feedbackMessage;
  final Value<int> earnedXp;
  final Value<DateTime> createdAt;
  const LessonAttemptTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.lessonId = const Value.absent(),
    this.blockId = const Value.absent(),
    this.attemptNumber = const Value.absent(),
    this.submittedAnswer = const Value.absent(),
    this.selectedOptionIdsJson = const Value.absent(),
    this.isCorrect = const Value.absent(),
    this.feedbackMessage = const Value.absent(),
    this.earnedXp = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  LessonAttemptTableCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    required String lessonId,
    required String blockId,
    required int attemptNumber,
    this.submittedAnswer = const Value.absent(),
    this.selectedOptionIdsJson = const Value.absent(),
    required bool isCorrect,
    this.feedbackMessage = const Value.absent(),
    this.earnedXp = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : userId = Value(userId),
        lessonId = Value(lessonId),
        blockId = Value(blockId),
        attemptNumber = Value(attemptNumber),
        isCorrect = Value(isCorrect);
  static Insertable<LessonAttemptTableData> custom({
    Expression<int>? id,
    Expression<String>? userId,
    Expression<String>? lessonId,
    Expression<String>? blockId,
    Expression<int>? attemptNumber,
    Expression<String>? submittedAnswer,
    Expression<String>? selectedOptionIdsJson,
    Expression<bool>? isCorrect,
    Expression<String>? feedbackMessage,
    Expression<int>? earnedXp,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (lessonId != null) 'lesson_id': lessonId,
      if (blockId != null) 'block_id': blockId,
      if (attemptNumber != null) 'attempt_number': attemptNumber,
      if (submittedAnswer != null) 'submitted_answer': submittedAnswer,
      if (selectedOptionIdsJson != null)
        'selected_option_ids_json': selectedOptionIdsJson,
      if (isCorrect != null) 'is_correct': isCorrect,
      if (feedbackMessage != null) 'feedback_message': feedbackMessage,
      if (earnedXp != null) 'earned_xp': earnedXp,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  LessonAttemptTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? userId,
      Value<String>? lessonId,
      Value<String>? blockId,
      Value<int>? attemptNumber,
      Value<String?>? submittedAnswer,
      Value<String>? selectedOptionIdsJson,
      Value<bool>? isCorrect,
      Value<String?>? feedbackMessage,
      Value<int>? earnedXp,
      Value<DateTime>? createdAt}) {
    return LessonAttemptTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      lessonId: lessonId ?? this.lessonId,
      blockId: blockId ?? this.blockId,
      attemptNumber: attemptNumber ?? this.attemptNumber,
      submittedAnswer: submittedAnswer ?? this.submittedAnswer,
      selectedOptionIdsJson:
          selectedOptionIdsJson ?? this.selectedOptionIdsJson,
      isCorrect: isCorrect ?? this.isCorrect,
      feedbackMessage: feedbackMessage ?? this.feedbackMessage,
      earnedXp: earnedXp ?? this.earnedXp,
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
    if (blockId.present) {
      map['block_id'] = Variable<String>(blockId.value);
    }
    if (attemptNumber.present) {
      map['attempt_number'] = Variable<int>(attemptNumber.value);
    }
    if (submittedAnswer.present) {
      map['submitted_answer'] = Variable<String>(submittedAnswer.value);
    }
    if (selectedOptionIdsJson.present) {
      map['selected_option_ids_json'] =
          Variable<String>(selectedOptionIdsJson.value);
    }
    if (isCorrect.present) {
      map['is_correct'] = Variable<bool>(isCorrect.value);
    }
    if (feedbackMessage.present) {
      map['feedback_message'] = Variable<String>(feedbackMessage.value);
    }
    if (earnedXp.present) {
      map['earned_xp'] = Variable<int>(earnedXp.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonAttemptTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lessonId: $lessonId, ')
          ..write('blockId: $blockId, ')
          ..write('attemptNumber: $attemptNumber, ')
          ..write('submittedAnswer: $submittedAnswer, ')
          ..write('selectedOptionIdsJson: $selectedOptionIdsJson, ')
          ..write('isCorrect: $isCorrect, ')
          ..write('feedbackMessage: $feedbackMessage, ')
          ..write('earnedXp: $earnedXp, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $PracticeDeckTableTable extends PracticeDeckTable
    with TableInfo<$PracticeDeckTableTable, PracticeDeckTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PracticeDeckTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sourceTypeMeta =
      const VerificationMeta('sourceType');
  @override
  late final GeneratedColumn<String> sourceType = GeneratedColumn<String>(
      'source_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('manual'));
  static const VerificationMeta _ankiDeckIdMeta =
      const VerificationMeta('ankiDeckId');
  @override
  late final GeneratedColumn<int> ankiDeckId = GeneratedColumn<int>(
      'anki_deck_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _maxNewPerDayMeta =
      const VerificationMeta('maxNewPerDay');
  @override
  late final GeneratedColumn<int> maxNewPerDay = GeneratedColumn<int>(
      'max_new_per_day', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(20));
  static const VerificationMeta _maxReviewsPerDayMeta =
      const VerificationMeta('maxReviewsPerDay');
  @override
  late final GeneratedColumn<int> maxReviewsPerDay = GeneratedColumn<int>(
      'max_reviews_per_day', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(200));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        sourceType,
        ankiDeckId,
        maxNewPerDay,
        maxReviewsPerDay,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'practice_deck_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PracticeDeckTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('source_type')) {
      context.handle(
          _sourceTypeMeta,
          sourceType.isAcceptableOrUnknown(
              data['source_type']!, _sourceTypeMeta));
    }
    if (data.containsKey('anki_deck_id')) {
      context.handle(
          _ankiDeckIdMeta,
          ankiDeckId.isAcceptableOrUnknown(
              data['anki_deck_id']!, _ankiDeckIdMeta));
    }
    if (data.containsKey('max_new_per_day')) {
      context.handle(
          _maxNewPerDayMeta,
          maxNewPerDay.isAcceptableOrUnknown(
              data['max_new_per_day']!, _maxNewPerDayMeta));
    }
    if (data.containsKey('max_reviews_per_day')) {
      context.handle(
          _maxReviewsPerDayMeta,
          maxReviewsPerDay.isAcceptableOrUnknown(
              data['max_reviews_per_day']!, _maxReviewsPerDayMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PracticeDeckTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PracticeDeckTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      sourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_type'])!,
      ankiDeckId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}anki_deck_id']),
      maxNewPerDay: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_new_per_day'])!,
      maxReviewsPerDay: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}max_reviews_per_day'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $PracticeDeckTableTable createAlias(String alias) {
    return $PracticeDeckTableTable(attachedDatabase, alias);
  }
}

class PracticeDeckTableData extends DataClass
    implements Insertable<PracticeDeckTableData> {
  final String id;
  final String name;
  final String? description;
  final String sourceType;
  final int? ankiDeckId;
  final int maxNewPerDay;
  final int maxReviewsPerDay;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const PracticeDeckTableData(
      {required this.id,
      required this.name,
      this.description,
      required this.sourceType,
      this.ankiDeckId,
      required this.maxNewPerDay,
      required this.maxReviewsPerDay,
      required this.createdAt,
      this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['source_type'] = Variable<String>(sourceType);
    if (!nullToAbsent || ankiDeckId != null) {
      map['anki_deck_id'] = Variable<int>(ankiDeckId);
    }
    map['max_new_per_day'] = Variable<int>(maxNewPerDay);
    map['max_reviews_per_day'] = Variable<int>(maxReviewsPerDay);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  PracticeDeckTableCompanion toCompanion(bool nullToAbsent) {
    return PracticeDeckTableCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      sourceType: Value(sourceType),
      ankiDeckId: ankiDeckId == null && nullToAbsent
          ? const Value.absent()
          : Value(ankiDeckId),
      maxNewPerDay: Value(maxNewPerDay),
      maxReviewsPerDay: Value(maxReviewsPerDay),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory PracticeDeckTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PracticeDeckTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      sourceType: serializer.fromJson<String>(json['sourceType']),
      ankiDeckId: serializer.fromJson<int?>(json['ankiDeckId']),
      maxNewPerDay: serializer.fromJson<int>(json['maxNewPerDay']),
      maxReviewsPerDay: serializer.fromJson<int>(json['maxReviewsPerDay']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'sourceType': serializer.toJson<String>(sourceType),
      'ankiDeckId': serializer.toJson<int?>(ankiDeckId),
      'maxNewPerDay': serializer.toJson<int>(maxNewPerDay),
      'maxReviewsPerDay': serializer.toJson<int>(maxReviewsPerDay),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  PracticeDeckTableData copyWith(
          {String? id,
          String? name,
          Value<String?> description = const Value.absent(),
          String? sourceType,
          Value<int?> ankiDeckId = const Value.absent(),
          int? maxNewPerDay,
          int? maxReviewsPerDay,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      PracticeDeckTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description.present ? description.value : this.description,
        sourceType: sourceType ?? this.sourceType,
        ankiDeckId: ankiDeckId.present ? ankiDeckId.value : this.ankiDeckId,
        maxNewPerDay: maxNewPerDay ?? this.maxNewPerDay,
        maxReviewsPerDay: maxReviewsPerDay ?? this.maxReviewsPerDay,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  PracticeDeckTableData copyWithCompanion(PracticeDeckTableCompanion data) {
    return PracticeDeckTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      sourceType:
          data.sourceType.present ? data.sourceType.value : this.sourceType,
      ankiDeckId:
          data.ankiDeckId.present ? data.ankiDeckId.value : this.ankiDeckId,
      maxNewPerDay: data.maxNewPerDay.present
          ? data.maxNewPerDay.value
          : this.maxNewPerDay,
      maxReviewsPerDay: data.maxReviewsPerDay.present
          ? data.maxReviewsPerDay.value
          : this.maxReviewsPerDay,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PracticeDeckTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('sourceType: $sourceType, ')
          ..write('ankiDeckId: $ankiDeckId, ')
          ..write('maxNewPerDay: $maxNewPerDay, ')
          ..write('maxReviewsPerDay: $maxReviewsPerDay, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, sourceType, ankiDeckId,
      maxNewPerDay, maxReviewsPerDay, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PracticeDeckTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.sourceType == this.sourceType &&
          other.ankiDeckId == this.ankiDeckId &&
          other.maxNewPerDay == this.maxNewPerDay &&
          other.maxReviewsPerDay == this.maxReviewsPerDay &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PracticeDeckTableCompanion
    extends UpdateCompanion<PracticeDeckTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<String> sourceType;
  final Value<int?> ankiDeckId;
  final Value<int> maxNewPerDay;
  final Value<int> maxReviewsPerDay;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> rowid;
  const PracticeDeckTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.ankiDeckId = const Value.absent(),
    this.maxNewPerDay = const Value.absent(),
    this.maxReviewsPerDay = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PracticeDeckTableCompanion.insert({
    required String id,
    required String name,
    this.description = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.ankiDeckId = const Value.absent(),
    this.maxNewPerDay = const Value.absent(),
    this.maxReviewsPerDay = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<PracticeDeckTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? sourceType,
    Expression<int>? ankiDeckId,
    Expression<int>? maxNewPerDay,
    Expression<int>? maxReviewsPerDay,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (sourceType != null) 'source_type': sourceType,
      if (ankiDeckId != null) 'anki_deck_id': ankiDeckId,
      if (maxNewPerDay != null) 'max_new_per_day': maxNewPerDay,
      if (maxReviewsPerDay != null) 'max_reviews_per_day': maxReviewsPerDay,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PracticeDeckTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String?>? description,
      Value<String>? sourceType,
      Value<int?>? ankiDeckId,
      Value<int>? maxNewPerDay,
      Value<int>? maxReviewsPerDay,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<int>? rowid}) {
    return PracticeDeckTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      sourceType: sourceType ?? this.sourceType,
      ankiDeckId: ankiDeckId ?? this.ankiDeckId,
      maxNewPerDay: maxNewPerDay ?? this.maxNewPerDay,
      maxReviewsPerDay: maxReviewsPerDay ?? this.maxReviewsPerDay,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (sourceType.present) {
      map['source_type'] = Variable<String>(sourceType.value);
    }
    if (ankiDeckId.present) {
      map['anki_deck_id'] = Variable<int>(ankiDeckId.value);
    }
    if (maxNewPerDay.present) {
      map['max_new_per_day'] = Variable<int>(maxNewPerDay.value);
    }
    if (maxReviewsPerDay.present) {
      map['max_reviews_per_day'] = Variable<int>(maxReviewsPerDay.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
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
    return (StringBuffer('PracticeDeckTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('sourceType: $sourceType, ')
          ..write('ankiDeckId: $ankiDeckId, ')
          ..write('maxNewPerDay: $maxNewPerDay, ')
          ..write('maxReviewsPerDay: $maxReviewsPerDay, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PracticeCardTableTable extends PracticeCardTable
    with TableInfo<$PracticeCardTableTable, PracticeCardTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PracticeCardTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deckIdMeta = const VerificationMeta('deckId');
  @override
  late final GeneratedColumn<String> deckId = GeneratedColumn<String>(
      'deck_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _frontHtmlMeta =
      const VerificationMeta('frontHtml');
  @override
  late final GeneratedColumn<String> frontHtml = GeneratedColumn<String>(
      'front_html', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _backHtmlMeta =
      const VerificationMeta('backHtml');
  @override
  late final GeneratedColumn<String> backHtml = GeneratedColumn<String>(
      'back_html', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _frontPlainMeta =
      const VerificationMeta('frontPlain');
  @override
  late final GeneratedColumn<String> frontPlain = GeneratedColumn<String>(
      'front_plain', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _backPlainMeta =
      const VerificationMeta('backPlain');
  @override
  late final GeneratedColumn<String> backPlain = GeneratedColumn<String>(
      'back_plain', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _queueMeta = const VerificationMeta('queue');
  @override
  late final GeneratedColumn<String> queue = GeneratedColumn<String>(
      'queue', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('new'));
  static const VerificationMeta _dueAtMeta = const VerificationMeta('dueAt');
  @override
  late final GeneratedColumn<DateTime> dueAt = GeneratedColumn<DateTime>(
      'due_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dueDayMeta = const VerificationMeta('dueDay');
  @override
  late final GeneratedColumn<int> dueDay = GeneratedColumn<int>(
      'due_day', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intervalDaysMeta =
      const VerificationMeta('intervalDays');
  @override
  late final GeneratedColumn<int> intervalDays = GeneratedColumn<int>(
      'interval_days', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _easeFactorMilliMeta =
      const VerificationMeta('easeFactorMilli');
  @override
  late final GeneratedColumn<int> easeFactorMilli = GeneratedColumn<int>(
      'ease_factor_milli', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(2500));
  static const VerificationMeta _repsMeta = const VerificationMeta('reps');
  @override
  late final GeneratedColumn<int> reps = GeneratedColumn<int>(
      'reps', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lapsesMeta = const VerificationMeta('lapses');
  @override
  late final GeneratedColumn<int> lapses = GeneratedColumn<int>(
      'lapses', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _remainingStepsMeta =
      const VerificationMeta('remainingSteps');
  @override
  late final GeneratedColumn<int> remainingSteps = GeneratedColumn<int>(
      'remaining_steps', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _learningStepIndexMeta =
      const VerificationMeta('learningStepIndex');
  @override
  late final GeneratedColumn<int> learningStepIndex = GeneratedColumn<int>(
      'learning_step_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastReviewedAtMeta =
      const VerificationMeta('lastReviewedAt');
  @override
  late final GeneratedColumn<DateTime> lastReviewedAt =
      GeneratedColumn<DateTime>('last_reviewed_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _isLeechMeta =
      const VerificationMeta('isLeech');
  @override
  late final GeneratedColumn<bool> isLeech = GeneratedColumn<bool>(
      'is_leech', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_leech" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _tagsJsonMeta =
      const VerificationMeta('tagsJson');
  @override
  late final GeneratedColumn<String> tagsJson = GeneratedColumn<String>(
      'tags_json', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('[]'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        deckId,
        frontHtml,
        backHtml,
        frontPlain,
        backPlain,
        queue,
        dueAt,
        dueDay,
        intervalDays,
        easeFactorMilli,
        reps,
        lapses,
        remainingSteps,
        learningStepIndex,
        lastReviewedAt,
        isLeech,
        tagsJson,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'practice_card_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PracticeCardTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('deck_id')) {
      context.handle(_deckIdMeta,
          deckId.isAcceptableOrUnknown(data['deck_id']!, _deckIdMeta));
    } else if (isInserting) {
      context.missing(_deckIdMeta);
    }
    if (data.containsKey('front_html')) {
      context.handle(_frontHtmlMeta,
          frontHtml.isAcceptableOrUnknown(data['front_html']!, _frontHtmlMeta));
    } else if (isInserting) {
      context.missing(_frontHtmlMeta);
    }
    if (data.containsKey('back_html')) {
      context.handle(_backHtmlMeta,
          backHtml.isAcceptableOrUnknown(data['back_html']!, _backHtmlMeta));
    } else if (isInserting) {
      context.missing(_backHtmlMeta);
    }
    if (data.containsKey('front_plain')) {
      context.handle(
          _frontPlainMeta,
          frontPlain.isAcceptableOrUnknown(
              data['front_plain']!, _frontPlainMeta));
    } else if (isInserting) {
      context.missing(_frontPlainMeta);
    }
    if (data.containsKey('back_plain')) {
      context.handle(_backPlainMeta,
          backPlain.isAcceptableOrUnknown(data['back_plain']!, _backPlainMeta));
    } else if (isInserting) {
      context.missing(_backPlainMeta);
    }
    if (data.containsKey('queue')) {
      context.handle(
          _queueMeta, queue.isAcceptableOrUnknown(data['queue']!, _queueMeta));
    }
    if (data.containsKey('due_at')) {
      context.handle(
          _dueAtMeta, dueAt.isAcceptableOrUnknown(data['due_at']!, _dueAtMeta));
    }
    if (data.containsKey('due_day')) {
      context.handle(_dueDayMeta,
          dueDay.isAcceptableOrUnknown(data['due_day']!, _dueDayMeta));
    }
    if (data.containsKey('interval_days')) {
      context.handle(
          _intervalDaysMeta,
          intervalDays.isAcceptableOrUnknown(
              data['interval_days']!, _intervalDaysMeta));
    }
    if (data.containsKey('ease_factor_milli')) {
      context.handle(
          _easeFactorMilliMeta,
          easeFactorMilli.isAcceptableOrUnknown(
              data['ease_factor_milli']!, _easeFactorMilliMeta));
    }
    if (data.containsKey('reps')) {
      context.handle(
          _repsMeta, reps.isAcceptableOrUnknown(data['reps']!, _repsMeta));
    }
    if (data.containsKey('lapses')) {
      context.handle(_lapsesMeta,
          lapses.isAcceptableOrUnknown(data['lapses']!, _lapsesMeta));
    }
    if (data.containsKey('remaining_steps')) {
      context.handle(
          _remainingStepsMeta,
          remainingSteps.isAcceptableOrUnknown(
              data['remaining_steps']!, _remainingStepsMeta));
    }
    if (data.containsKey('learning_step_index')) {
      context.handle(
          _learningStepIndexMeta,
          learningStepIndex.isAcceptableOrUnknown(
              data['learning_step_index']!, _learningStepIndexMeta));
    }
    if (data.containsKey('last_reviewed_at')) {
      context.handle(
          _lastReviewedAtMeta,
          lastReviewedAt.isAcceptableOrUnknown(
              data['last_reviewed_at']!, _lastReviewedAtMeta));
    }
    if (data.containsKey('is_leech')) {
      context.handle(_isLeechMeta,
          isLeech.isAcceptableOrUnknown(data['is_leech']!, _isLeechMeta));
    }
    if (data.containsKey('tags_json')) {
      context.handle(_tagsJsonMeta,
          tagsJson.isAcceptableOrUnknown(data['tags_json']!, _tagsJsonMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PracticeCardTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PracticeCardTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      deckId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}deck_id'])!,
      frontHtml: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_html'])!,
      backHtml: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_html'])!,
      frontPlain: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_plain'])!,
      backPlain: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_plain'])!,
      queue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}queue'])!,
      dueAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_at']),
      dueDay: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}due_day']),
      intervalDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}interval_days'])!,
      easeFactorMilli: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ease_factor_milli'])!,
      reps: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}reps'])!,
      lapses: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}lapses'])!,
      remainingSteps: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}remaining_steps'])!,
      learningStepIndex: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}learning_step_index'])!,
      lastReviewedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_reviewed_at']),
      isLeech: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_leech'])!,
      tagsJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags_json'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $PracticeCardTableTable createAlias(String alias) {
    return $PracticeCardTableTable(attachedDatabase, alias);
  }
}

class PracticeCardTableData extends DataClass
    implements Insertable<PracticeCardTableData> {
  final String id;
  final String deckId;
  final String frontHtml;
  final String backHtml;
  final String frontPlain;
  final String backPlain;
  final String queue;
  final DateTime? dueAt;
  final int? dueDay;
  final int intervalDays;
  final int easeFactorMilli;
  final int reps;
  final int lapses;
  final int remainingSteps;
  final int learningStepIndex;
  final DateTime? lastReviewedAt;
  final bool isLeech;
  final String tagsJson;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const PracticeCardTableData(
      {required this.id,
      required this.deckId,
      required this.frontHtml,
      required this.backHtml,
      required this.frontPlain,
      required this.backPlain,
      required this.queue,
      this.dueAt,
      this.dueDay,
      required this.intervalDays,
      required this.easeFactorMilli,
      required this.reps,
      required this.lapses,
      required this.remainingSteps,
      required this.learningStepIndex,
      this.lastReviewedAt,
      required this.isLeech,
      required this.tagsJson,
      required this.createdAt,
      this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['deck_id'] = Variable<String>(deckId);
    map['front_html'] = Variable<String>(frontHtml);
    map['back_html'] = Variable<String>(backHtml);
    map['front_plain'] = Variable<String>(frontPlain);
    map['back_plain'] = Variable<String>(backPlain);
    map['queue'] = Variable<String>(queue);
    if (!nullToAbsent || dueAt != null) {
      map['due_at'] = Variable<DateTime>(dueAt);
    }
    if (!nullToAbsent || dueDay != null) {
      map['due_day'] = Variable<int>(dueDay);
    }
    map['interval_days'] = Variable<int>(intervalDays);
    map['ease_factor_milli'] = Variable<int>(easeFactorMilli);
    map['reps'] = Variable<int>(reps);
    map['lapses'] = Variable<int>(lapses);
    map['remaining_steps'] = Variable<int>(remainingSteps);
    map['learning_step_index'] = Variable<int>(learningStepIndex);
    if (!nullToAbsent || lastReviewedAt != null) {
      map['last_reviewed_at'] = Variable<DateTime>(lastReviewedAt);
    }
    map['is_leech'] = Variable<bool>(isLeech);
    map['tags_json'] = Variable<String>(tagsJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  PracticeCardTableCompanion toCompanion(bool nullToAbsent) {
    return PracticeCardTableCompanion(
      id: Value(id),
      deckId: Value(deckId),
      frontHtml: Value(frontHtml),
      backHtml: Value(backHtml),
      frontPlain: Value(frontPlain),
      backPlain: Value(backPlain),
      queue: Value(queue),
      dueAt:
          dueAt == null && nullToAbsent ? const Value.absent() : Value(dueAt),
      dueDay:
          dueDay == null && nullToAbsent ? const Value.absent() : Value(dueDay),
      intervalDays: Value(intervalDays),
      easeFactorMilli: Value(easeFactorMilli),
      reps: Value(reps),
      lapses: Value(lapses),
      remainingSteps: Value(remainingSteps),
      learningStepIndex: Value(learningStepIndex),
      lastReviewedAt: lastReviewedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastReviewedAt),
      isLeech: Value(isLeech),
      tagsJson: Value(tagsJson),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory PracticeCardTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PracticeCardTableData(
      id: serializer.fromJson<String>(json['id']),
      deckId: serializer.fromJson<String>(json['deckId']),
      frontHtml: serializer.fromJson<String>(json['frontHtml']),
      backHtml: serializer.fromJson<String>(json['backHtml']),
      frontPlain: serializer.fromJson<String>(json['frontPlain']),
      backPlain: serializer.fromJson<String>(json['backPlain']),
      queue: serializer.fromJson<String>(json['queue']),
      dueAt: serializer.fromJson<DateTime?>(json['dueAt']),
      dueDay: serializer.fromJson<int?>(json['dueDay']),
      intervalDays: serializer.fromJson<int>(json['intervalDays']),
      easeFactorMilli: serializer.fromJson<int>(json['easeFactorMilli']),
      reps: serializer.fromJson<int>(json['reps']),
      lapses: serializer.fromJson<int>(json['lapses']),
      remainingSteps: serializer.fromJson<int>(json['remainingSteps']),
      learningStepIndex: serializer.fromJson<int>(json['learningStepIndex']),
      lastReviewedAt: serializer.fromJson<DateTime?>(json['lastReviewedAt']),
      isLeech: serializer.fromJson<bool>(json['isLeech']),
      tagsJson: serializer.fromJson<String>(json['tagsJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'deckId': serializer.toJson<String>(deckId),
      'frontHtml': serializer.toJson<String>(frontHtml),
      'backHtml': serializer.toJson<String>(backHtml),
      'frontPlain': serializer.toJson<String>(frontPlain),
      'backPlain': serializer.toJson<String>(backPlain),
      'queue': serializer.toJson<String>(queue),
      'dueAt': serializer.toJson<DateTime?>(dueAt),
      'dueDay': serializer.toJson<int?>(dueDay),
      'intervalDays': serializer.toJson<int>(intervalDays),
      'easeFactorMilli': serializer.toJson<int>(easeFactorMilli),
      'reps': serializer.toJson<int>(reps),
      'lapses': serializer.toJson<int>(lapses),
      'remainingSteps': serializer.toJson<int>(remainingSteps),
      'learningStepIndex': serializer.toJson<int>(learningStepIndex),
      'lastReviewedAt': serializer.toJson<DateTime?>(lastReviewedAt),
      'isLeech': serializer.toJson<bool>(isLeech),
      'tagsJson': serializer.toJson<String>(tagsJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  PracticeCardTableData copyWith(
          {String? id,
          String? deckId,
          String? frontHtml,
          String? backHtml,
          String? frontPlain,
          String? backPlain,
          String? queue,
          Value<DateTime?> dueAt = const Value.absent(),
          Value<int?> dueDay = const Value.absent(),
          int? intervalDays,
          int? easeFactorMilli,
          int? reps,
          int? lapses,
          int? remainingSteps,
          int? learningStepIndex,
          Value<DateTime?> lastReviewedAt = const Value.absent(),
          bool? isLeech,
          String? tagsJson,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      PracticeCardTableData(
        id: id ?? this.id,
        deckId: deckId ?? this.deckId,
        frontHtml: frontHtml ?? this.frontHtml,
        backHtml: backHtml ?? this.backHtml,
        frontPlain: frontPlain ?? this.frontPlain,
        backPlain: backPlain ?? this.backPlain,
        queue: queue ?? this.queue,
        dueAt: dueAt.present ? dueAt.value : this.dueAt,
        dueDay: dueDay.present ? dueDay.value : this.dueDay,
        intervalDays: intervalDays ?? this.intervalDays,
        easeFactorMilli: easeFactorMilli ?? this.easeFactorMilli,
        reps: reps ?? this.reps,
        lapses: lapses ?? this.lapses,
        remainingSteps: remainingSteps ?? this.remainingSteps,
        learningStepIndex: learningStepIndex ?? this.learningStepIndex,
        lastReviewedAt:
            lastReviewedAt.present ? lastReviewedAt.value : this.lastReviewedAt,
        isLeech: isLeech ?? this.isLeech,
        tagsJson: tagsJson ?? this.tagsJson,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  PracticeCardTableData copyWithCompanion(PracticeCardTableCompanion data) {
    return PracticeCardTableData(
      id: data.id.present ? data.id.value : this.id,
      deckId: data.deckId.present ? data.deckId.value : this.deckId,
      frontHtml: data.frontHtml.present ? data.frontHtml.value : this.frontHtml,
      backHtml: data.backHtml.present ? data.backHtml.value : this.backHtml,
      frontPlain:
          data.frontPlain.present ? data.frontPlain.value : this.frontPlain,
      backPlain: data.backPlain.present ? data.backPlain.value : this.backPlain,
      queue: data.queue.present ? data.queue.value : this.queue,
      dueAt: data.dueAt.present ? data.dueAt.value : this.dueAt,
      dueDay: data.dueDay.present ? data.dueDay.value : this.dueDay,
      intervalDays: data.intervalDays.present
          ? data.intervalDays.value
          : this.intervalDays,
      easeFactorMilli: data.easeFactorMilli.present
          ? data.easeFactorMilli.value
          : this.easeFactorMilli,
      reps: data.reps.present ? data.reps.value : this.reps,
      lapses: data.lapses.present ? data.lapses.value : this.lapses,
      remainingSteps: data.remainingSteps.present
          ? data.remainingSteps.value
          : this.remainingSteps,
      learningStepIndex: data.learningStepIndex.present
          ? data.learningStepIndex.value
          : this.learningStepIndex,
      lastReviewedAt: data.lastReviewedAt.present
          ? data.lastReviewedAt.value
          : this.lastReviewedAt,
      isLeech: data.isLeech.present ? data.isLeech.value : this.isLeech,
      tagsJson: data.tagsJson.present ? data.tagsJson.value : this.tagsJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PracticeCardTableData(')
          ..write('id: $id, ')
          ..write('deckId: $deckId, ')
          ..write('frontHtml: $frontHtml, ')
          ..write('backHtml: $backHtml, ')
          ..write('frontPlain: $frontPlain, ')
          ..write('backPlain: $backPlain, ')
          ..write('queue: $queue, ')
          ..write('dueAt: $dueAt, ')
          ..write('dueDay: $dueDay, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('easeFactorMilli: $easeFactorMilli, ')
          ..write('reps: $reps, ')
          ..write('lapses: $lapses, ')
          ..write('remainingSteps: $remainingSteps, ')
          ..write('learningStepIndex: $learningStepIndex, ')
          ..write('lastReviewedAt: $lastReviewedAt, ')
          ..write('isLeech: $isLeech, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      deckId,
      frontHtml,
      backHtml,
      frontPlain,
      backPlain,
      queue,
      dueAt,
      dueDay,
      intervalDays,
      easeFactorMilli,
      reps,
      lapses,
      remainingSteps,
      learningStepIndex,
      lastReviewedAt,
      isLeech,
      tagsJson,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PracticeCardTableData &&
          other.id == this.id &&
          other.deckId == this.deckId &&
          other.frontHtml == this.frontHtml &&
          other.backHtml == this.backHtml &&
          other.frontPlain == this.frontPlain &&
          other.backPlain == this.backPlain &&
          other.queue == this.queue &&
          other.dueAt == this.dueAt &&
          other.dueDay == this.dueDay &&
          other.intervalDays == this.intervalDays &&
          other.easeFactorMilli == this.easeFactorMilli &&
          other.reps == this.reps &&
          other.lapses == this.lapses &&
          other.remainingSteps == this.remainingSteps &&
          other.learningStepIndex == this.learningStepIndex &&
          other.lastReviewedAt == this.lastReviewedAt &&
          other.isLeech == this.isLeech &&
          other.tagsJson == this.tagsJson &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PracticeCardTableCompanion
    extends UpdateCompanion<PracticeCardTableData> {
  final Value<String> id;
  final Value<String> deckId;
  final Value<String> frontHtml;
  final Value<String> backHtml;
  final Value<String> frontPlain;
  final Value<String> backPlain;
  final Value<String> queue;
  final Value<DateTime?> dueAt;
  final Value<int?> dueDay;
  final Value<int> intervalDays;
  final Value<int> easeFactorMilli;
  final Value<int> reps;
  final Value<int> lapses;
  final Value<int> remainingSteps;
  final Value<int> learningStepIndex;
  final Value<DateTime?> lastReviewedAt;
  final Value<bool> isLeech;
  final Value<String> tagsJson;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> rowid;
  const PracticeCardTableCompanion({
    this.id = const Value.absent(),
    this.deckId = const Value.absent(),
    this.frontHtml = const Value.absent(),
    this.backHtml = const Value.absent(),
    this.frontPlain = const Value.absent(),
    this.backPlain = const Value.absent(),
    this.queue = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.dueDay = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.easeFactorMilli = const Value.absent(),
    this.reps = const Value.absent(),
    this.lapses = const Value.absent(),
    this.remainingSteps = const Value.absent(),
    this.learningStepIndex = const Value.absent(),
    this.lastReviewedAt = const Value.absent(),
    this.isLeech = const Value.absent(),
    this.tagsJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PracticeCardTableCompanion.insert({
    required String id,
    required String deckId,
    required String frontHtml,
    required String backHtml,
    required String frontPlain,
    required String backPlain,
    this.queue = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.dueDay = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.easeFactorMilli = const Value.absent(),
    this.reps = const Value.absent(),
    this.lapses = const Value.absent(),
    this.remainingSteps = const Value.absent(),
    this.learningStepIndex = const Value.absent(),
    this.lastReviewedAt = const Value.absent(),
    this.isLeech = const Value.absent(),
    this.tagsJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        deckId = Value(deckId),
        frontHtml = Value(frontHtml),
        backHtml = Value(backHtml),
        frontPlain = Value(frontPlain),
        backPlain = Value(backPlain);
  static Insertable<PracticeCardTableData> custom({
    Expression<String>? id,
    Expression<String>? deckId,
    Expression<String>? frontHtml,
    Expression<String>? backHtml,
    Expression<String>? frontPlain,
    Expression<String>? backPlain,
    Expression<String>? queue,
    Expression<DateTime>? dueAt,
    Expression<int>? dueDay,
    Expression<int>? intervalDays,
    Expression<int>? easeFactorMilli,
    Expression<int>? reps,
    Expression<int>? lapses,
    Expression<int>? remainingSteps,
    Expression<int>? learningStepIndex,
    Expression<DateTime>? lastReviewedAt,
    Expression<bool>? isLeech,
    Expression<String>? tagsJson,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (deckId != null) 'deck_id': deckId,
      if (frontHtml != null) 'front_html': frontHtml,
      if (backHtml != null) 'back_html': backHtml,
      if (frontPlain != null) 'front_plain': frontPlain,
      if (backPlain != null) 'back_plain': backPlain,
      if (queue != null) 'queue': queue,
      if (dueAt != null) 'due_at': dueAt,
      if (dueDay != null) 'due_day': dueDay,
      if (intervalDays != null) 'interval_days': intervalDays,
      if (easeFactorMilli != null) 'ease_factor_milli': easeFactorMilli,
      if (reps != null) 'reps': reps,
      if (lapses != null) 'lapses': lapses,
      if (remainingSteps != null) 'remaining_steps': remainingSteps,
      if (learningStepIndex != null) 'learning_step_index': learningStepIndex,
      if (lastReviewedAt != null) 'last_reviewed_at': lastReviewedAt,
      if (isLeech != null) 'is_leech': isLeech,
      if (tagsJson != null) 'tags_json': tagsJson,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PracticeCardTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? deckId,
      Value<String>? frontHtml,
      Value<String>? backHtml,
      Value<String>? frontPlain,
      Value<String>? backPlain,
      Value<String>? queue,
      Value<DateTime?>? dueAt,
      Value<int?>? dueDay,
      Value<int>? intervalDays,
      Value<int>? easeFactorMilli,
      Value<int>? reps,
      Value<int>? lapses,
      Value<int>? remainingSteps,
      Value<int>? learningStepIndex,
      Value<DateTime?>? lastReviewedAt,
      Value<bool>? isLeech,
      Value<String>? tagsJson,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<int>? rowid}) {
    return PracticeCardTableCompanion(
      id: id ?? this.id,
      deckId: deckId ?? this.deckId,
      frontHtml: frontHtml ?? this.frontHtml,
      backHtml: backHtml ?? this.backHtml,
      frontPlain: frontPlain ?? this.frontPlain,
      backPlain: backPlain ?? this.backPlain,
      queue: queue ?? this.queue,
      dueAt: dueAt ?? this.dueAt,
      dueDay: dueDay ?? this.dueDay,
      intervalDays: intervalDays ?? this.intervalDays,
      easeFactorMilli: easeFactorMilli ?? this.easeFactorMilli,
      reps: reps ?? this.reps,
      lapses: lapses ?? this.lapses,
      remainingSteps: remainingSteps ?? this.remainingSteps,
      learningStepIndex: learningStepIndex ?? this.learningStepIndex,
      lastReviewedAt: lastReviewedAt ?? this.lastReviewedAt,
      isLeech: isLeech ?? this.isLeech,
      tagsJson: tagsJson ?? this.tagsJson,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (deckId.present) {
      map['deck_id'] = Variable<String>(deckId.value);
    }
    if (frontHtml.present) {
      map['front_html'] = Variable<String>(frontHtml.value);
    }
    if (backHtml.present) {
      map['back_html'] = Variable<String>(backHtml.value);
    }
    if (frontPlain.present) {
      map['front_plain'] = Variable<String>(frontPlain.value);
    }
    if (backPlain.present) {
      map['back_plain'] = Variable<String>(backPlain.value);
    }
    if (queue.present) {
      map['queue'] = Variable<String>(queue.value);
    }
    if (dueAt.present) {
      map['due_at'] = Variable<DateTime>(dueAt.value);
    }
    if (dueDay.present) {
      map['due_day'] = Variable<int>(dueDay.value);
    }
    if (intervalDays.present) {
      map['interval_days'] = Variable<int>(intervalDays.value);
    }
    if (easeFactorMilli.present) {
      map['ease_factor_milli'] = Variable<int>(easeFactorMilli.value);
    }
    if (reps.present) {
      map['reps'] = Variable<int>(reps.value);
    }
    if (lapses.present) {
      map['lapses'] = Variable<int>(lapses.value);
    }
    if (remainingSteps.present) {
      map['remaining_steps'] = Variable<int>(remainingSteps.value);
    }
    if (learningStepIndex.present) {
      map['learning_step_index'] = Variable<int>(learningStepIndex.value);
    }
    if (lastReviewedAt.present) {
      map['last_reviewed_at'] = Variable<DateTime>(lastReviewedAt.value);
    }
    if (isLeech.present) {
      map['is_leech'] = Variable<bool>(isLeech.value);
    }
    if (tagsJson.present) {
      map['tags_json'] = Variable<String>(tagsJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
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
    return (StringBuffer('PracticeCardTableCompanion(')
          ..write('id: $id, ')
          ..write('deckId: $deckId, ')
          ..write('frontHtml: $frontHtml, ')
          ..write('backHtml: $backHtml, ')
          ..write('frontPlain: $frontPlain, ')
          ..write('backPlain: $backPlain, ')
          ..write('queue: $queue, ')
          ..write('dueAt: $dueAt, ')
          ..write('dueDay: $dueDay, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('easeFactorMilli: $easeFactorMilli, ')
          ..write('reps: $reps, ')
          ..write('lapses: $lapses, ')
          ..write('remainingSteps: $remainingSteps, ')
          ..write('learningStepIndex: $learningStepIndex, ')
          ..write('lastReviewedAt: $lastReviewedAt, ')
          ..write('isLeech: $isLeech, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PracticeReviewTableTable extends PracticeReviewTable
    with TableInfo<$PracticeReviewTableTable, PracticeReviewTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PracticeReviewTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<String> cardId = GeneratedColumn<String>(
      'card_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reviewedAtMeta =
      const VerificationMeta('reviewedAt');
  @override
  late final GeneratedColumn<DateTime> reviewedAt = GeneratedColumn<DateTime>(
      'reviewed_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<String> rating = GeneratedColumn<String>(
      'rating', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _queueBeforeMeta =
      const VerificationMeta('queueBefore');
  @override
  late final GeneratedColumn<String> queueBefore = GeneratedColumn<String>(
      'queue_before', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _queueAfterMeta =
      const VerificationMeta('queueAfter');
  @override
  late final GeneratedColumn<String> queueAfter = GeneratedColumn<String>(
      'queue_after', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _intervalBeforeDaysMeta =
      const VerificationMeta('intervalBeforeDays');
  @override
  late final GeneratedColumn<int> intervalBeforeDays = GeneratedColumn<int>(
      'interval_before_days', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _intervalAfterDaysMeta =
      const VerificationMeta('intervalAfterDays');
  @override
  late final GeneratedColumn<int> intervalAfterDays = GeneratedColumn<int>(
      'interval_after_days', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _easeBeforeMilliMeta =
      const VerificationMeta('easeBeforeMilli');
  @override
  late final GeneratedColumn<int> easeBeforeMilli = GeneratedColumn<int>(
      'ease_before_milli', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(2500));
  static const VerificationMeta _easeAfterMilliMeta =
      const VerificationMeta('easeAfterMilli');
  @override
  late final GeneratedColumn<int> easeAfterMilli = GeneratedColumn<int>(
      'ease_after_milli', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(2500));
  static const VerificationMeta _elapsedMsMeta =
      const VerificationMeta('elapsedMs');
  @override
  late final GeneratedColumn<int> elapsedMs = GeneratedColumn<int>(
      'elapsed_ms', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        cardId,
        reviewedAt,
        rating,
        queueBefore,
        queueAfter,
        intervalBeforeDays,
        intervalAfterDays,
        easeBeforeMilli,
        easeAfterMilli,
        elapsedMs
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'practice_review_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PracticeReviewTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('card_id')) {
      context.handle(_cardIdMeta,
          cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta));
    } else if (isInserting) {
      context.missing(_cardIdMeta);
    }
    if (data.containsKey('reviewed_at')) {
      context.handle(
          _reviewedAtMeta,
          reviewedAt.isAcceptableOrUnknown(
              data['reviewed_at']!, _reviewedAtMeta));
    } else if (isInserting) {
      context.missing(_reviewedAtMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('queue_before')) {
      context.handle(
          _queueBeforeMeta,
          queueBefore.isAcceptableOrUnknown(
              data['queue_before']!, _queueBeforeMeta));
    } else if (isInserting) {
      context.missing(_queueBeforeMeta);
    }
    if (data.containsKey('queue_after')) {
      context.handle(
          _queueAfterMeta,
          queueAfter.isAcceptableOrUnknown(
              data['queue_after']!, _queueAfterMeta));
    } else if (isInserting) {
      context.missing(_queueAfterMeta);
    }
    if (data.containsKey('interval_before_days')) {
      context.handle(
          _intervalBeforeDaysMeta,
          intervalBeforeDays.isAcceptableOrUnknown(
              data['interval_before_days']!, _intervalBeforeDaysMeta));
    }
    if (data.containsKey('interval_after_days')) {
      context.handle(
          _intervalAfterDaysMeta,
          intervalAfterDays.isAcceptableOrUnknown(
              data['interval_after_days']!, _intervalAfterDaysMeta));
    }
    if (data.containsKey('ease_before_milli')) {
      context.handle(
          _easeBeforeMilliMeta,
          easeBeforeMilli.isAcceptableOrUnknown(
              data['ease_before_milli']!, _easeBeforeMilliMeta));
    }
    if (data.containsKey('ease_after_milli')) {
      context.handle(
          _easeAfterMilliMeta,
          easeAfterMilli.isAcceptableOrUnknown(
              data['ease_after_milli']!, _easeAfterMilliMeta));
    }
    if (data.containsKey('elapsed_ms')) {
      context.handle(_elapsedMsMeta,
          elapsedMs.isAcceptableOrUnknown(data['elapsed_ms']!, _elapsedMsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PracticeReviewTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PracticeReviewTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      cardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_id'])!,
      reviewedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}reviewed_at'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rating'])!,
      queueBefore: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}queue_before'])!,
      queueAfter: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}queue_after'])!,
      intervalBeforeDays: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}interval_before_days'])!,
      intervalAfterDays: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}interval_after_days'])!,
      easeBeforeMilli: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ease_before_milli'])!,
      easeAfterMilli: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ease_after_milli'])!,
      elapsedMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}elapsed_ms']),
    );
  }

  @override
  $PracticeReviewTableTable createAlias(String alias) {
    return $PracticeReviewTableTable(attachedDatabase, alias);
  }
}

class PracticeReviewTableData extends DataClass
    implements Insertable<PracticeReviewTableData> {
  final String id;
  final String cardId;
  final DateTime reviewedAt;
  final String rating;
  final String queueBefore;
  final String queueAfter;
  final int intervalBeforeDays;
  final int intervalAfterDays;
  final int easeBeforeMilli;
  final int easeAfterMilli;
  final int? elapsedMs;
  const PracticeReviewTableData(
      {required this.id,
      required this.cardId,
      required this.reviewedAt,
      required this.rating,
      required this.queueBefore,
      required this.queueAfter,
      required this.intervalBeforeDays,
      required this.intervalAfterDays,
      required this.easeBeforeMilli,
      required this.easeAfterMilli,
      this.elapsedMs});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['card_id'] = Variable<String>(cardId);
    map['reviewed_at'] = Variable<DateTime>(reviewedAt);
    map['rating'] = Variable<String>(rating);
    map['queue_before'] = Variable<String>(queueBefore);
    map['queue_after'] = Variable<String>(queueAfter);
    map['interval_before_days'] = Variable<int>(intervalBeforeDays);
    map['interval_after_days'] = Variable<int>(intervalAfterDays);
    map['ease_before_milli'] = Variable<int>(easeBeforeMilli);
    map['ease_after_milli'] = Variable<int>(easeAfterMilli);
    if (!nullToAbsent || elapsedMs != null) {
      map['elapsed_ms'] = Variable<int>(elapsedMs);
    }
    return map;
  }

  PracticeReviewTableCompanion toCompanion(bool nullToAbsent) {
    return PracticeReviewTableCompanion(
      id: Value(id),
      cardId: Value(cardId),
      reviewedAt: Value(reviewedAt),
      rating: Value(rating),
      queueBefore: Value(queueBefore),
      queueAfter: Value(queueAfter),
      intervalBeforeDays: Value(intervalBeforeDays),
      intervalAfterDays: Value(intervalAfterDays),
      easeBeforeMilli: Value(easeBeforeMilli),
      easeAfterMilli: Value(easeAfterMilli),
      elapsedMs: elapsedMs == null && nullToAbsent
          ? const Value.absent()
          : Value(elapsedMs),
    );
  }

  factory PracticeReviewTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PracticeReviewTableData(
      id: serializer.fromJson<String>(json['id']),
      cardId: serializer.fromJson<String>(json['cardId']),
      reviewedAt: serializer.fromJson<DateTime>(json['reviewedAt']),
      rating: serializer.fromJson<String>(json['rating']),
      queueBefore: serializer.fromJson<String>(json['queueBefore']),
      queueAfter: serializer.fromJson<String>(json['queueAfter']),
      intervalBeforeDays: serializer.fromJson<int>(json['intervalBeforeDays']),
      intervalAfterDays: serializer.fromJson<int>(json['intervalAfterDays']),
      easeBeforeMilli: serializer.fromJson<int>(json['easeBeforeMilli']),
      easeAfterMilli: serializer.fromJson<int>(json['easeAfterMilli']),
      elapsedMs: serializer.fromJson<int?>(json['elapsedMs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cardId': serializer.toJson<String>(cardId),
      'reviewedAt': serializer.toJson<DateTime>(reviewedAt),
      'rating': serializer.toJson<String>(rating),
      'queueBefore': serializer.toJson<String>(queueBefore),
      'queueAfter': serializer.toJson<String>(queueAfter),
      'intervalBeforeDays': serializer.toJson<int>(intervalBeforeDays),
      'intervalAfterDays': serializer.toJson<int>(intervalAfterDays),
      'easeBeforeMilli': serializer.toJson<int>(easeBeforeMilli),
      'easeAfterMilli': serializer.toJson<int>(easeAfterMilli),
      'elapsedMs': serializer.toJson<int?>(elapsedMs),
    };
  }

  PracticeReviewTableData copyWith(
          {String? id,
          String? cardId,
          DateTime? reviewedAt,
          String? rating,
          String? queueBefore,
          String? queueAfter,
          int? intervalBeforeDays,
          int? intervalAfterDays,
          int? easeBeforeMilli,
          int? easeAfterMilli,
          Value<int?> elapsedMs = const Value.absent()}) =>
      PracticeReviewTableData(
        id: id ?? this.id,
        cardId: cardId ?? this.cardId,
        reviewedAt: reviewedAt ?? this.reviewedAt,
        rating: rating ?? this.rating,
        queueBefore: queueBefore ?? this.queueBefore,
        queueAfter: queueAfter ?? this.queueAfter,
        intervalBeforeDays: intervalBeforeDays ?? this.intervalBeforeDays,
        intervalAfterDays: intervalAfterDays ?? this.intervalAfterDays,
        easeBeforeMilli: easeBeforeMilli ?? this.easeBeforeMilli,
        easeAfterMilli: easeAfterMilli ?? this.easeAfterMilli,
        elapsedMs: elapsedMs.present ? elapsedMs.value : this.elapsedMs,
      );
  PracticeReviewTableData copyWithCompanion(PracticeReviewTableCompanion data) {
    return PracticeReviewTableData(
      id: data.id.present ? data.id.value : this.id,
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      reviewedAt:
          data.reviewedAt.present ? data.reviewedAt.value : this.reviewedAt,
      rating: data.rating.present ? data.rating.value : this.rating,
      queueBefore:
          data.queueBefore.present ? data.queueBefore.value : this.queueBefore,
      queueAfter:
          data.queueAfter.present ? data.queueAfter.value : this.queueAfter,
      intervalBeforeDays: data.intervalBeforeDays.present
          ? data.intervalBeforeDays.value
          : this.intervalBeforeDays,
      intervalAfterDays: data.intervalAfterDays.present
          ? data.intervalAfterDays.value
          : this.intervalAfterDays,
      easeBeforeMilli: data.easeBeforeMilli.present
          ? data.easeBeforeMilli.value
          : this.easeBeforeMilli,
      easeAfterMilli: data.easeAfterMilli.present
          ? data.easeAfterMilli.value
          : this.easeAfterMilli,
      elapsedMs: data.elapsedMs.present ? data.elapsedMs.value : this.elapsedMs,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PracticeReviewTableData(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('reviewedAt: $reviewedAt, ')
          ..write('rating: $rating, ')
          ..write('queueBefore: $queueBefore, ')
          ..write('queueAfter: $queueAfter, ')
          ..write('intervalBeforeDays: $intervalBeforeDays, ')
          ..write('intervalAfterDays: $intervalAfterDays, ')
          ..write('easeBeforeMilli: $easeBeforeMilli, ')
          ..write('easeAfterMilli: $easeAfterMilli, ')
          ..write('elapsedMs: $elapsedMs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      cardId,
      reviewedAt,
      rating,
      queueBefore,
      queueAfter,
      intervalBeforeDays,
      intervalAfterDays,
      easeBeforeMilli,
      easeAfterMilli,
      elapsedMs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PracticeReviewTableData &&
          other.id == this.id &&
          other.cardId == this.cardId &&
          other.reviewedAt == this.reviewedAt &&
          other.rating == this.rating &&
          other.queueBefore == this.queueBefore &&
          other.queueAfter == this.queueAfter &&
          other.intervalBeforeDays == this.intervalBeforeDays &&
          other.intervalAfterDays == this.intervalAfterDays &&
          other.easeBeforeMilli == this.easeBeforeMilli &&
          other.easeAfterMilli == this.easeAfterMilli &&
          other.elapsedMs == this.elapsedMs);
}

class PracticeReviewTableCompanion
    extends UpdateCompanion<PracticeReviewTableData> {
  final Value<String> id;
  final Value<String> cardId;
  final Value<DateTime> reviewedAt;
  final Value<String> rating;
  final Value<String> queueBefore;
  final Value<String> queueAfter;
  final Value<int> intervalBeforeDays;
  final Value<int> intervalAfterDays;
  final Value<int> easeBeforeMilli;
  final Value<int> easeAfterMilli;
  final Value<int?> elapsedMs;
  final Value<int> rowid;
  const PracticeReviewTableCompanion({
    this.id = const Value.absent(),
    this.cardId = const Value.absent(),
    this.reviewedAt = const Value.absent(),
    this.rating = const Value.absent(),
    this.queueBefore = const Value.absent(),
    this.queueAfter = const Value.absent(),
    this.intervalBeforeDays = const Value.absent(),
    this.intervalAfterDays = const Value.absent(),
    this.easeBeforeMilli = const Value.absent(),
    this.easeAfterMilli = const Value.absent(),
    this.elapsedMs = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PracticeReviewTableCompanion.insert({
    required String id,
    required String cardId,
    required DateTime reviewedAt,
    required String rating,
    required String queueBefore,
    required String queueAfter,
    this.intervalBeforeDays = const Value.absent(),
    this.intervalAfterDays = const Value.absent(),
    this.easeBeforeMilli = const Value.absent(),
    this.easeAfterMilli = const Value.absent(),
    this.elapsedMs = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        cardId = Value(cardId),
        reviewedAt = Value(reviewedAt),
        rating = Value(rating),
        queueBefore = Value(queueBefore),
        queueAfter = Value(queueAfter);
  static Insertable<PracticeReviewTableData> custom({
    Expression<String>? id,
    Expression<String>? cardId,
    Expression<DateTime>? reviewedAt,
    Expression<String>? rating,
    Expression<String>? queueBefore,
    Expression<String>? queueAfter,
    Expression<int>? intervalBeforeDays,
    Expression<int>? intervalAfterDays,
    Expression<int>? easeBeforeMilli,
    Expression<int>? easeAfterMilli,
    Expression<int>? elapsedMs,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardId != null) 'card_id': cardId,
      if (reviewedAt != null) 'reviewed_at': reviewedAt,
      if (rating != null) 'rating': rating,
      if (queueBefore != null) 'queue_before': queueBefore,
      if (queueAfter != null) 'queue_after': queueAfter,
      if (intervalBeforeDays != null)
        'interval_before_days': intervalBeforeDays,
      if (intervalAfterDays != null) 'interval_after_days': intervalAfterDays,
      if (easeBeforeMilli != null) 'ease_before_milli': easeBeforeMilli,
      if (easeAfterMilli != null) 'ease_after_milli': easeAfterMilli,
      if (elapsedMs != null) 'elapsed_ms': elapsedMs,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PracticeReviewTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? cardId,
      Value<DateTime>? reviewedAt,
      Value<String>? rating,
      Value<String>? queueBefore,
      Value<String>? queueAfter,
      Value<int>? intervalBeforeDays,
      Value<int>? intervalAfterDays,
      Value<int>? easeBeforeMilli,
      Value<int>? easeAfterMilli,
      Value<int?>? elapsedMs,
      Value<int>? rowid}) {
    return PracticeReviewTableCompanion(
      id: id ?? this.id,
      cardId: cardId ?? this.cardId,
      reviewedAt: reviewedAt ?? this.reviewedAt,
      rating: rating ?? this.rating,
      queueBefore: queueBefore ?? this.queueBefore,
      queueAfter: queueAfter ?? this.queueAfter,
      intervalBeforeDays: intervalBeforeDays ?? this.intervalBeforeDays,
      intervalAfterDays: intervalAfterDays ?? this.intervalAfterDays,
      easeBeforeMilli: easeBeforeMilli ?? this.easeBeforeMilli,
      easeAfterMilli: easeAfterMilli ?? this.easeAfterMilli,
      elapsedMs: elapsedMs ?? this.elapsedMs,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cardId.present) {
      map['card_id'] = Variable<String>(cardId.value);
    }
    if (reviewedAt.present) {
      map['reviewed_at'] = Variable<DateTime>(reviewedAt.value);
    }
    if (rating.present) {
      map['rating'] = Variable<String>(rating.value);
    }
    if (queueBefore.present) {
      map['queue_before'] = Variable<String>(queueBefore.value);
    }
    if (queueAfter.present) {
      map['queue_after'] = Variable<String>(queueAfter.value);
    }
    if (intervalBeforeDays.present) {
      map['interval_before_days'] = Variable<int>(intervalBeforeDays.value);
    }
    if (intervalAfterDays.present) {
      map['interval_after_days'] = Variable<int>(intervalAfterDays.value);
    }
    if (easeBeforeMilli.present) {
      map['ease_before_milli'] = Variable<int>(easeBeforeMilli.value);
    }
    if (easeAfterMilli.present) {
      map['ease_after_milli'] = Variable<int>(easeAfterMilli.value);
    }
    if (elapsedMs.present) {
      map['elapsed_ms'] = Variable<int>(elapsedMs.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PracticeReviewTableCompanion(')
          ..write('id: $id, ')
          ..write('cardId: $cardId, ')
          ..write('reviewedAt: $reviewedAt, ')
          ..write('rating: $rating, ')
          ..write('queueBefore: $queueBefore, ')
          ..write('queueAfter: $queueAfter, ')
          ..write('intervalBeforeDays: $intervalBeforeDays, ')
          ..write('intervalAfterDays: $intervalAfterDays, ')
          ..write('easeBeforeMilli: $easeBeforeMilli, ')
          ..write('easeAfterMilli: $easeAfterMilli, ')
          ..write('elapsedMs: $elapsedMs, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PracticeMediaTableTable extends PracticeMediaTable
    with TableInfo<$PracticeMediaTableTable, PracticeMediaTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PracticeMediaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _checksumSha1Meta =
      const VerificationMeta('checksumSha1');
  @override
  late final GeneratedColumn<String> checksumSha1 = GeneratedColumn<String>(
      'checksum_sha1', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _originalNameMeta =
      const VerificationMeta('originalName');
  @override
  late final GeneratedColumn<String> originalName = GeneratedColumn<String>(
      'original_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _storedNameMeta =
      const VerificationMeta('storedName');
  @override
  late final GeneratedColumn<String> storedName = GeneratedColumn<String>(
      'stored_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mimeTypeMeta =
      const VerificationMeta('mimeType');
  @override
  late final GeneratedColumn<String> mimeType = GeneratedColumn<String>(
      'mime_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _localPathMeta =
      const VerificationMeta('localPath');
  @override
  late final GeneratedColumn<String> localPath = GeneratedColumn<String>(
      'local_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sizeBytesMeta =
      const VerificationMeta('sizeBytes');
  @override
  late final GeneratedColumn<int> sizeBytes = GeneratedColumn<int>(
      'size_bytes', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
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
        checksumSha1,
        originalName,
        storedName,
        mimeType,
        localPath,
        sizeBytes,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'practice_media_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PracticeMediaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('checksum_sha1')) {
      context.handle(
          _checksumSha1Meta,
          checksumSha1.isAcceptableOrUnknown(
              data['checksum_sha1']!, _checksumSha1Meta));
    } else if (isInserting) {
      context.missing(_checksumSha1Meta);
    }
    if (data.containsKey('original_name')) {
      context.handle(
          _originalNameMeta,
          originalName.isAcceptableOrUnknown(
              data['original_name']!, _originalNameMeta));
    } else if (isInserting) {
      context.missing(_originalNameMeta);
    }
    if (data.containsKey('stored_name')) {
      context.handle(
          _storedNameMeta,
          storedName.isAcceptableOrUnknown(
              data['stored_name']!, _storedNameMeta));
    } else if (isInserting) {
      context.missing(_storedNameMeta);
    }
    if (data.containsKey('mime_type')) {
      context.handle(_mimeTypeMeta,
          mimeType.isAcceptableOrUnknown(data['mime_type']!, _mimeTypeMeta));
    } else if (isInserting) {
      context.missing(_mimeTypeMeta);
    }
    if (data.containsKey('local_path')) {
      context.handle(_localPathMeta,
          localPath.isAcceptableOrUnknown(data['local_path']!, _localPathMeta));
    } else if (isInserting) {
      context.missing(_localPathMeta);
    }
    if (data.containsKey('size_bytes')) {
      context.handle(_sizeBytesMeta,
          sizeBytes.isAcceptableOrUnknown(data['size_bytes']!, _sizeBytesMeta));
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
  PracticeMediaTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PracticeMediaTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      checksumSha1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checksum_sha1'])!,
      originalName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}original_name'])!,
      storedName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stored_name'])!,
      mimeType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mime_type'])!,
      localPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_path'])!,
      sizeBytes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}size_bytes'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $PracticeMediaTableTable createAlias(String alias) {
    return $PracticeMediaTableTable(attachedDatabase, alias);
  }
}

class PracticeMediaTableData extends DataClass
    implements Insertable<PracticeMediaTableData> {
  final String id;
  final String checksumSha1;
  final String originalName;
  final String storedName;
  final String mimeType;
  final String localPath;
  final int sizeBytes;
  final DateTime createdAt;
  const PracticeMediaTableData(
      {required this.id,
      required this.checksumSha1,
      required this.originalName,
      required this.storedName,
      required this.mimeType,
      required this.localPath,
      required this.sizeBytes,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['checksum_sha1'] = Variable<String>(checksumSha1);
    map['original_name'] = Variable<String>(originalName);
    map['stored_name'] = Variable<String>(storedName);
    map['mime_type'] = Variable<String>(mimeType);
    map['local_path'] = Variable<String>(localPath);
    map['size_bytes'] = Variable<int>(sizeBytes);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PracticeMediaTableCompanion toCompanion(bool nullToAbsent) {
    return PracticeMediaTableCompanion(
      id: Value(id),
      checksumSha1: Value(checksumSha1),
      originalName: Value(originalName),
      storedName: Value(storedName),
      mimeType: Value(mimeType),
      localPath: Value(localPath),
      sizeBytes: Value(sizeBytes),
      createdAt: Value(createdAt),
    );
  }

  factory PracticeMediaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PracticeMediaTableData(
      id: serializer.fromJson<String>(json['id']),
      checksumSha1: serializer.fromJson<String>(json['checksumSha1']),
      originalName: serializer.fromJson<String>(json['originalName']),
      storedName: serializer.fromJson<String>(json['storedName']),
      mimeType: serializer.fromJson<String>(json['mimeType']),
      localPath: serializer.fromJson<String>(json['localPath']),
      sizeBytes: serializer.fromJson<int>(json['sizeBytes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'checksumSha1': serializer.toJson<String>(checksumSha1),
      'originalName': serializer.toJson<String>(originalName),
      'storedName': serializer.toJson<String>(storedName),
      'mimeType': serializer.toJson<String>(mimeType),
      'localPath': serializer.toJson<String>(localPath),
      'sizeBytes': serializer.toJson<int>(sizeBytes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  PracticeMediaTableData copyWith(
          {String? id,
          String? checksumSha1,
          String? originalName,
          String? storedName,
          String? mimeType,
          String? localPath,
          int? sizeBytes,
          DateTime? createdAt}) =>
      PracticeMediaTableData(
        id: id ?? this.id,
        checksumSha1: checksumSha1 ?? this.checksumSha1,
        originalName: originalName ?? this.originalName,
        storedName: storedName ?? this.storedName,
        mimeType: mimeType ?? this.mimeType,
        localPath: localPath ?? this.localPath,
        sizeBytes: sizeBytes ?? this.sizeBytes,
        createdAt: createdAt ?? this.createdAt,
      );
  PracticeMediaTableData copyWithCompanion(PracticeMediaTableCompanion data) {
    return PracticeMediaTableData(
      id: data.id.present ? data.id.value : this.id,
      checksumSha1: data.checksumSha1.present
          ? data.checksumSha1.value
          : this.checksumSha1,
      originalName: data.originalName.present
          ? data.originalName.value
          : this.originalName,
      storedName:
          data.storedName.present ? data.storedName.value : this.storedName,
      mimeType: data.mimeType.present ? data.mimeType.value : this.mimeType,
      localPath: data.localPath.present ? data.localPath.value : this.localPath,
      sizeBytes: data.sizeBytes.present ? data.sizeBytes.value : this.sizeBytes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PracticeMediaTableData(')
          ..write('id: $id, ')
          ..write('checksumSha1: $checksumSha1, ')
          ..write('originalName: $originalName, ')
          ..write('storedName: $storedName, ')
          ..write('mimeType: $mimeType, ')
          ..write('localPath: $localPath, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, checksumSha1, originalName, storedName,
      mimeType, localPath, sizeBytes, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PracticeMediaTableData &&
          other.id == this.id &&
          other.checksumSha1 == this.checksumSha1 &&
          other.originalName == this.originalName &&
          other.storedName == this.storedName &&
          other.mimeType == this.mimeType &&
          other.localPath == this.localPath &&
          other.sizeBytes == this.sizeBytes &&
          other.createdAt == this.createdAt);
}

class PracticeMediaTableCompanion
    extends UpdateCompanion<PracticeMediaTableData> {
  final Value<String> id;
  final Value<String> checksumSha1;
  final Value<String> originalName;
  final Value<String> storedName;
  final Value<String> mimeType;
  final Value<String> localPath;
  final Value<int> sizeBytes;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const PracticeMediaTableCompanion({
    this.id = const Value.absent(),
    this.checksumSha1 = const Value.absent(),
    this.originalName = const Value.absent(),
    this.storedName = const Value.absent(),
    this.mimeType = const Value.absent(),
    this.localPath = const Value.absent(),
    this.sizeBytes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PracticeMediaTableCompanion.insert({
    required String id,
    required String checksumSha1,
    required String originalName,
    required String storedName,
    required String mimeType,
    required String localPath,
    this.sizeBytes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        checksumSha1 = Value(checksumSha1),
        originalName = Value(originalName),
        storedName = Value(storedName),
        mimeType = Value(mimeType),
        localPath = Value(localPath);
  static Insertable<PracticeMediaTableData> custom({
    Expression<String>? id,
    Expression<String>? checksumSha1,
    Expression<String>? originalName,
    Expression<String>? storedName,
    Expression<String>? mimeType,
    Expression<String>? localPath,
    Expression<int>? sizeBytes,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (checksumSha1 != null) 'checksum_sha1': checksumSha1,
      if (originalName != null) 'original_name': originalName,
      if (storedName != null) 'stored_name': storedName,
      if (mimeType != null) 'mime_type': mimeType,
      if (localPath != null) 'local_path': localPath,
      if (sizeBytes != null) 'size_bytes': sizeBytes,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PracticeMediaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? checksumSha1,
      Value<String>? originalName,
      Value<String>? storedName,
      Value<String>? mimeType,
      Value<String>? localPath,
      Value<int>? sizeBytes,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return PracticeMediaTableCompanion(
      id: id ?? this.id,
      checksumSha1: checksumSha1 ?? this.checksumSha1,
      originalName: originalName ?? this.originalName,
      storedName: storedName ?? this.storedName,
      mimeType: mimeType ?? this.mimeType,
      localPath: localPath ?? this.localPath,
      sizeBytes: sizeBytes ?? this.sizeBytes,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (checksumSha1.present) {
      map['checksum_sha1'] = Variable<String>(checksumSha1.value);
    }
    if (originalName.present) {
      map['original_name'] = Variable<String>(originalName.value);
    }
    if (storedName.present) {
      map['stored_name'] = Variable<String>(storedName.value);
    }
    if (mimeType.present) {
      map['mime_type'] = Variable<String>(mimeType.value);
    }
    if (localPath.present) {
      map['local_path'] = Variable<String>(localPath.value);
    }
    if (sizeBytes.present) {
      map['size_bytes'] = Variable<int>(sizeBytes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PracticeMediaTableCompanion(')
          ..write('id: $id, ')
          ..write('checksumSha1: $checksumSha1, ')
          ..write('originalName: $originalName, ')
          ..write('storedName: $storedName, ')
          ..write('mimeType: $mimeType, ')
          ..write('localPath: $localPath, ')
          ..write('sizeBytes: $sizeBytes, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PracticeCardMediaTableTable extends PracticeCardMediaTable
    with TableInfo<$PracticeCardMediaTableTable, PracticeCardMediaTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PracticeCardMediaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cardIdMeta = const VerificationMeta('cardId');
  @override
  late final GeneratedColumn<String> cardId = GeneratedColumn<String>(
      'card_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mediaIdMeta =
      const VerificationMeta('mediaId');
  @override
  late final GeneratedColumn<String> mediaId = GeneratedColumn<String>(
      'media_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usageTypeMeta =
      const VerificationMeta('usageType');
  @override
  late final GeneratedColumn<String> usageType = GeneratedColumn<String>(
      'usage_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _originalTokenMeta =
      const VerificationMeta('originalToken');
  @override
  late final GeneratedColumn<String> originalToken = GeneratedColumn<String>(
      'original_token', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [cardId, mediaId, usageType, originalToken];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'practice_card_media_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PracticeCardMediaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('card_id')) {
      context.handle(_cardIdMeta,
          cardId.isAcceptableOrUnknown(data['card_id']!, _cardIdMeta));
    } else if (isInserting) {
      context.missing(_cardIdMeta);
    }
    if (data.containsKey('media_id')) {
      context.handle(_mediaIdMeta,
          mediaId.isAcceptableOrUnknown(data['media_id']!, _mediaIdMeta));
    } else if (isInserting) {
      context.missing(_mediaIdMeta);
    }
    if (data.containsKey('usage_type')) {
      context.handle(_usageTypeMeta,
          usageType.isAcceptableOrUnknown(data['usage_type']!, _usageTypeMeta));
    } else if (isInserting) {
      context.missing(_usageTypeMeta);
    }
    if (data.containsKey('original_token')) {
      context.handle(
          _originalTokenMeta,
          originalToken.isAcceptableOrUnknown(
              data['original_token']!, _originalTokenMeta));
    } else if (isInserting) {
      context.missing(_originalTokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cardId, mediaId, usageType};
  @override
  PracticeCardMediaTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PracticeCardMediaTableData(
      cardId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_id'])!,
      mediaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}media_id'])!,
      usageType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}usage_type'])!,
      originalToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}original_token'])!,
    );
  }

  @override
  $PracticeCardMediaTableTable createAlias(String alias) {
    return $PracticeCardMediaTableTable(attachedDatabase, alias);
  }
}

class PracticeCardMediaTableData extends DataClass
    implements Insertable<PracticeCardMediaTableData> {
  final String cardId;
  final String mediaId;
  final String usageType;
  final String originalToken;
  const PracticeCardMediaTableData(
      {required this.cardId,
      required this.mediaId,
      required this.usageType,
      required this.originalToken});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['card_id'] = Variable<String>(cardId);
    map['media_id'] = Variable<String>(mediaId);
    map['usage_type'] = Variable<String>(usageType);
    map['original_token'] = Variable<String>(originalToken);
    return map;
  }

  PracticeCardMediaTableCompanion toCompanion(bool nullToAbsent) {
    return PracticeCardMediaTableCompanion(
      cardId: Value(cardId),
      mediaId: Value(mediaId),
      usageType: Value(usageType),
      originalToken: Value(originalToken),
    );
  }

  factory PracticeCardMediaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PracticeCardMediaTableData(
      cardId: serializer.fromJson<String>(json['cardId']),
      mediaId: serializer.fromJson<String>(json['mediaId']),
      usageType: serializer.fromJson<String>(json['usageType']),
      originalToken: serializer.fromJson<String>(json['originalToken']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cardId': serializer.toJson<String>(cardId),
      'mediaId': serializer.toJson<String>(mediaId),
      'usageType': serializer.toJson<String>(usageType),
      'originalToken': serializer.toJson<String>(originalToken),
    };
  }

  PracticeCardMediaTableData copyWith(
          {String? cardId,
          String? mediaId,
          String? usageType,
          String? originalToken}) =>
      PracticeCardMediaTableData(
        cardId: cardId ?? this.cardId,
        mediaId: mediaId ?? this.mediaId,
        usageType: usageType ?? this.usageType,
        originalToken: originalToken ?? this.originalToken,
      );
  PracticeCardMediaTableData copyWithCompanion(
      PracticeCardMediaTableCompanion data) {
    return PracticeCardMediaTableData(
      cardId: data.cardId.present ? data.cardId.value : this.cardId,
      mediaId: data.mediaId.present ? data.mediaId.value : this.mediaId,
      usageType: data.usageType.present ? data.usageType.value : this.usageType,
      originalToken: data.originalToken.present
          ? data.originalToken.value
          : this.originalToken,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PracticeCardMediaTableData(')
          ..write('cardId: $cardId, ')
          ..write('mediaId: $mediaId, ')
          ..write('usageType: $usageType, ')
          ..write('originalToken: $originalToken')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cardId, mediaId, usageType, originalToken);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PracticeCardMediaTableData &&
          other.cardId == this.cardId &&
          other.mediaId == this.mediaId &&
          other.usageType == this.usageType &&
          other.originalToken == this.originalToken);
}

class PracticeCardMediaTableCompanion
    extends UpdateCompanion<PracticeCardMediaTableData> {
  final Value<String> cardId;
  final Value<String> mediaId;
  final Value<String> usageType;
  final Value<String> originalToken;
  final Value<int> rowid;
  const PracticeCardMediaTableCompanion({
    this.cardId = const Value.absent(),
    this.mediaId = const Value.absent(),
    this.usageType = const Value.absent(),
    this.originalToken = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PracticeCardMediaTableCompanion.insert({
    required String cardId,
    required String mediaId,
    required String usageType,
    required String originalToken,
    this.rowid = const Value.absent(),
  })  : cardId = Value(cardId),
        mediaId = Value(mediaId),
        usageType = Value(usageType),
        originalToken = Value(originalToken);
  static Insertable<PracticeCardMediaTableData> custom({
    Expression<String>? cardId,
    Expression<String>? mediaId,
    Expression<String>? usageType,
    Expression<String>? originalToken,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cardId != null) 'card_id': cardId,
      if (mediaId != null) 'media_id': mediaId,
      if (usageType != null) 'usage_type': usageType,
      if (originalToken != null) 'original_token': originalToken,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PracticeCardMediaTableCompanion copyWith(
      {Value<String>? cardId,
      Value<String>? mediaId,
      Value<String>? usageType,
      Value<String>? originalToken,
      Value<int>? rowid}) {
    return PracticeCardMediaTableCompanion(
      cardId: cardId ?? this.cardId,
      mediaId: mediaId ?? this.mediaId,
      usageType: usageType ?? this.usageType,
      originalToken: originalToken ?? this.originalToken,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cardId.present) {
      map['card_id'] = Variable<String>(cardId.value);
    }
    if (mediaId.present) {
      map['media_id'] = Variable<String>(mediaId.value);
    }
    if (usageType.present) {
      map['usage_type'] = Variable<String>(usageType.value);
    }
    if (originalToken.present) {
      map['original_token'] = Variable<String>(originalToken.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PracticeCardMediaTableCompanion(')
          ..write('cardId: $cardId, ')
          ..write('mediaId: $mediaId, ')
          ..write('usageType: $usageType, ')
          ..write('originalToken: $originalToken, ')
          ..write('rowid: $rowid')
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

class $DictionaryJapaneseEntryTableTable extends DictionaryJapaneseEntryTable
    with
        TableInfo<$DictionaryJapaneseEntryTableTable,
            DictionaryJapaneseEntryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DictionaryJapaneseEntryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _entryIdMeta =
      const VerificationMeta('entryId');
  @override
  late final GeneratedColumn<String> entryId = GeneratedColumn<String>(
      'entry_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _primaryKanjiMeta =
      const VerificationMeta('primaryKanji');
  @override
  late final GeneratedColumn<String> primaryKanji = GeneratedColumn<String>(
      'primary_kanji', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _primaryKanaMeta =
      const VerificationMeta('primaryKana');
  @override
  late final GeneratedColumn<String> primaryKana = GeneratedColumn<String>(
      'primary_kana', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _primaryRomajiMeta =
      const VerificationMeta('primaryRomaji');
  @override
  late final GeneratedColumn<String> primaryRomaji = GeneratedColumn<String>(
      'primary_romaji', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _meaningPreviewMeta =
      const VerificationMeta('meaningPreview');
  @override
  late final GeneratedColumn<String> meaningPreview = GeneratedColumn<String>(
      'meaning_preview', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _entryJsonMeta =
      const VerificationMeta('entryJson');
  @override
  late final GeneratedColumn<String> entryJson = GeneratedColumn<String>(
      'entry_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isCommonMeta =
      const VerificationMeta('isCommon');
  @override
  late final GeneratedColumn<bool> isCommon = GeneratedColumn<bool>(
      'is_common', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_common" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _importedAtMeta =
      const VerificationMeta('importedAt');
  @override
  late final GeneratedColumn<DateTime> importedAt = GeneratedColumn<DateTime>(
      'imported_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        entryId,
        primaryKanji,
        primaryKana,
        primaryRomaji,
        meaningPreview,
        entryJson,
        isCommon,
        importedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dictionary_japanese_entry_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DictionaryJapaneseEntryTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('entry_id')) {
      context.handle(_entryIdMeta,
          entryId.isAcceptableOrUnknown(data['entry_id']!, _entryIdMeta));
    } else if (isInserting) {
      context.missing(_entryIdMeta);
    }
    if (data.containsKey('primary_kanji')) {
      context.handle(
          _primaryKanjiMeta,
          primaryKanji.isAcceptableOrUnknown(
              data['primary_kanji']!, _primaryKanjiMeta));
    }
    if (data.containsKey('primary_kana')) {
      context.handle(
          _primaryKanaMeta,
          primaryKana.isAcceptableOrUnknown(
              data['primary_kana']!, _primaryKanaMeta));
    } else if (isInserting) {
      context.missing(_primaryKanaMeta);
    }
    if (data.containsKey('primary_romaji')) {
      context.handle(
          _primaryRomajiMeta,
          primaryRomaji.isAcceptableOrUnknown(
              data['primary_romaji']!, _primaryRomajiMeta));
    } else if (isInserting) {
      context.missing(_primaryRomajiMeta);
    }
    if (data.containsKey('meaning_preview')) {
      context.handle(
          _meaningPreviewMeta,
          meaningPreview.isAcceptableOrUnknown(
              data['meaning_preview']!, _meaningPreviewMeta));
    } else if (isInserting) {
      context.missing(_meaningPreviewMeta);
    }
    if (data.containsKey('entry_json')) {
      context.handle(_entryJsonMeta,
          entryJson.isAcceptableOrUnknown(data['entry_json']!, _entryJsonMeta));
    } else if (isInserting) {
      context.missing(_entryJsonMeta);
    }
    if (data.containsKey('is_common')) {
      context.handle(_isCommonMeta,
          isCommon.isAcceptableOrUnknown(data['is_common']!, _isCommonMeta));
    }
    if (data.containsKey('imported_at')) {
      context.handle(
          _importedAtMeta,
          importedAt.isAcceptableOrUnknown(
              data['imported_at']!, _importedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {entryId};
  @override
  DictionaryJapaneseEntryTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DictionaryJapaneseEntryTableData(
      entryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entry_id'])!,
      primaryKanji: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}primary_kanji']),
      primaryKana: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}primary_kana'])!,
      primaryRomaji: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}primary_romaji'])!,
      meaningPreview: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}meaning_preview'])!,
      entryJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entry_json'])!,
      isCommon: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_common'])!,
      importedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}imported_at'])!,
    );
  }

  @override
  $DictionaryJapaneseEntryTableTable createAlias(String alias) {
    return $DictionaryJapaneseEntryTableTable(attachedDatabase, alias);
  }
}

class DictionaryJapaneseEntryTableData extends DataClass
    implements Insertable<DictionaryJapaneseEntryTableData> {
  final String entryId;
  final String? primaryKanji;
  final String primaryKana;
  final String primaryRomaji;
  final String meaningPreview;
  final String entryJson;
  final bool isCommon;
  final DateTime importedAt;
  const DictionaryJapaneseEntryTableData(
      {required this.entryId,
      this.primaryKanji,
      required this.primaryKana,
      required this.primaryRomaji,
      required this.meaningPreview,
      required this.entryJson,
      required this.isCommon,
      required this.importedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['entry_id'] = Variable<String>(entryId);
    if (!nullToAbsent || primaryKanji != null) {
      map['primary_kanji'] = Variable<String>(primaryKanji);
    }
    map['primary_kana'] = Variable<String>(primaryKana);
    map['primary_romaji'] = Variable<String>(primaryRomaji);
    map['meaning_preview'] = Variable<String>(meaningPreview);
    map['entry_json'] = Variable<String>(entryJson);
    map['is_common'] = Variable<bool>(isCommon);
    map['imported_at'] = Variable<DateTime>(importedAt);
    return map;
  }

  DictionaryJapaneseEntryTableCompanion toCompanion(bool nullToAbsent) {
    return DictionaryJapaneseEntryTableCompanion(
      entryId: Value(entryId),
      primaryKanji: primaryKanji == null && nullToAbsent
          ? const Value.absent()
          : Value(primaryKanji),
      primaryKana: Value(primaryKana),
      primaryRomaji: Value(primaryRomaji),
      meaningPreview: Value(meaningPreview),
      entryJson: Value(entryJson),
      isCommon: Value(isCommon),
      importedAt: Value(importedAt),
    );
  }

  factory DictionaryJapaneseEntryTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DictionaryJapaneseEntryTableData(
      entryId: serializer.fromJson<String>(json['entryId']),
      primaryKanji: serializer.fromJson<String?>(json['primaryKanji']),
      primaryKana: serializer.fromJson<String>(json['primaryKana']),
      primaryRomaji: serializer.fromJson<String>(json['primaryRomaji']),
      meaningPreview: serializer.fromJson<String>(json['meaningPreview']),
      entryJson: serializer.fromJson<String>(json['entryJson']),
      isCommon: serializer.fromJson<bool>(json['isCommon']),
      importedAt: serializer.fromJson<DateTime>(json['importedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'entryId': serializer.toJson<String>(entryId),
      'primaryKanji': serializer.toJson<String?>(primaryKanji),
      'primaryKana': serializer.toJson<String>(primaryKana),
      'primaryRomaji': serializer.toJson<String>(primaryRomaji),
      'meaningPreview': serializer.toJson<String>(meaningPreview),
      'entryJson': serializer.toJson<String>(entryJson),
      'isCommon': serializer.toJson<bool>(isCommon),
      'importedAt': serializer.toJson<DateTime>(importedAt),
    };
  }

  DictionaryJapaneseEntryTableData copyWith(
          {String? entryId,
          Value<String?> primaryKanji = const Value.absent(),
          String? primaryKana,
          String? primaryRomaji,
          String? meaningPreview,
          String? entryJson,
          bool? isCommon,
          DateTime? importedAt}) =>
      DictionaryJapaneseEntryTableData(
        entryId: entryId ?? this.entryId,
        primaryKanji:
            primaryKanji.present ? primaryKanji.value : this.primaryKanji,
        primaryKana: primaryKana ?? this.primaryKana,
        primaryRomaji: primaryRomaji ?? this.primaryRomaji,
        meaningPreview: meaningPreview ?? this.meaningPreview,
        entryJson: entryJson ?? this.entryJson,
        isCommon: isCommon ?? this.isCommon,
        importedAt: importedAt ?? this.importedAt,
      );
  DictionaryJapaneseEntryTableData copyWithCompanion(
      DictionaryJapaneseEntryTableCompanion data) {
    return DictionaryJapaneseEntryTableData(
      entryId: data.entryId.present ? data.entryId.value : this.entryId,
      primaryKanji: data.primaryKanji.present
          ? data.primaryKanji.value
          : this.primaryKanji,
      primaryKana:
          data.primaryKana.present ? data.primaryKana.value : this.primaryKana,
      primaryRomaji: data.primaryRomaji.present
          ? data.primaryRomaji.value
          : this.primaryRomaji,
      meaningPreview: data.meaningPreview.present
          ? data.meaningPreview.value
          : this.meaningPreview,
      entryJson: data.entryJson.present ? data.entryJson.value : this.entryJson,
      isCommon: data.isCommon.present ? data.isCommon.value : this.isCommon,
      importedAt:
          data.importedAt.present ? data.importedAt.value : this.importedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryJapaneseEntryTableData(')
          ..write('entryId: $entryId, ')
          ..write('primaryKanji: $primaryKanji, ')
          ..write('primaryKana: $primaryKana, ')
          ..write('primaryRomaji: $primaryRomaji, ')
          ..write('meaningPreview: $meaningPreview, ')
          ..write('entryJson: $entryJson, ')
          ..write('isCommon: $isCommon, ')
          ..write('importedAt: $importedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(entryId, primaryKanji, primaryKana,
      primaryRomaji, meaningPreview, entryJson, isCommon, importedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DictionaryJapaneseEntryTableData &&
          other.entryId == this.entryId &&
          other.primaryKanji == this.primaryKanji &&
          other.primaryKana == this.primaryKana &&
          other.primaryRomaji == this.primaryRomaji &&
          other.meaningPreview == this.meaningPreview &&
          other.entryJson == this.entryJson &&
          other.isCommon == this.isCommon &&
          other.importedAt == this.importedAt);
}

class DictionaryJapaneseEntryTableCompanion
    extends UpdateCompanion<DictionaryJapaneseEntryTableData> {
  final Value<String> entryId;
  final Value<String?> primaryKanji;
  final Value<String> primaryKana;
  final Value<String> primaryRomaji;
  final Value<String> meaningPreview;
  final Value<String> entryJson;
  final Value<bool> isCommon;
  final Value<DateTime> importedAt;
  final Value<int> rowid;
  const DictionaryJapaneseEntryTableCompanion({
    this.entryId = const Value.absent(),
    this.primaryKanji = const Value.absent(),
    this.primaryKana = const Value.absent(),
    this.primaryRomaji = const Value.absent(),
    this.meaningPreview = const Value.absent(),
    this.entryJson = const Value.absent(),
    this.isCommon = const Value.absent(),
    this.importedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DictionaryJapaneseEntryTableCompanion.insert({
    required String entryId,
    this.primaryKanji = const Value.absent(),
    required String primaryKana,
    required String primaryRomaji,
    required String meaningPreview,
    required String entryJson,
    this.isCommon = const Value.absent(),
    this.importedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : entryId = Value(entryId),
        primaryKana = Value(primaryKana),
        primaryRomaji = Value(primaryRomaji),
        meaningPreview = Value(meaningPreview),
        entryJson = Value(entryJson);
  static Insertable<DictionaryJapaneseEntryTableData> custom({
    Expression<String>? entryId,
    Expression<String>? primaryKanji,
    Expression<String>? primaryKana,
    Expression<String>? primaryRomaji,
    Expression<String>? meaningPreview,
    Expression<String>? entryJson,
    Expression<bool>? isCommon,
    Expression<DateTime>? importedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (entryId != null) 'entry_id': entryId,
      if (primaryKanji != null) 'primary_kanji': primaryKanji,
      if (primaryKana != null) 'primary_kana': primaryKana,
      if (primaryRomaji != null) 'primary_romaji': primaryRomaji,
      if (meaningPreview != null) 'meaning_preview': meaningPreview,
      if (entryJson != null) 'entry_json': entryJson,
      if (isCommon != null) 'is_common': isCommon,
      if (importedAt != null) 'imported_at': importedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DictionaryJapaneseEntryTableCompanion copyWith(
      {Value<String>? entryId,
      Value<String?>? primaryKanji,
      Value<String>? primaryKana,
      Value<String>? primaryRomaji,
      Value<String>? meaningPreview,
      Value<String>? entryJson,
      Value<bool>? isCommon,
      Value<DateTime>? importedAt,
      Value<int>? rowid}) {
    return DictionaryJapaneseEntryTableCompanion(
      entryId: entryId ?? this.entryId,
      primaryKanji: primaryKanji ?? this.primaryKanji,
      primaryKana: primaryKana ?? this.primaryKana,
      primaryRomaji: primaryRomaji ?? this.primaryRomaji,
      meaningPreview: meaningPreview ?? this.meaningPreview,
      entryJson: entryJson ?? this.entryJson,
      isCommon: isCommon ?? this.isCommon,
      importedAt: importedAt ?? this.importedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (entryId.present) {
      map['entry_id'] = Variable<String>(entryId.value);
    }
    if (primaryKanji.present) {
      map['primary_kanji'] = Variable<String>(primaryKanji.value);
    }
    if (primaryKana.present) {
      map['primary_kana'] = Variable<String>(primaryKana.value);
    }
    if (primaryRomaji.present) {
      map['primary_romaji'] = Variable<String>(primaryRomaji.value);
    }
    if (meaningPreview.present) {
      map['meaning_preview'] = Variable<String>(meaningPreview.value);
    }
    if (entryJson.present) {
      map['entry_json'] = Variable<String>(entryJson.value);
    }
    if (isCommon.present) {
      map['is_common'] = Variable<bool>(isCommon.value);
    }
    if (importedAt.present) {
      map['imported_at'] = Variable<DateTime>(importedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryJapaneseEntryTableCompanion(')
          ..write('entryId: $entryId, ')
          ..write('primaryKanji: $primaryKanji, ')
          ..write('primaryKana: $primaryKana, ')
          ..write('primaryRomaji: $primaryRomaji, ')
          ..write('meaningPreview: $meaningPreview, ')
          ..write('entryJson: $entryJson, ')
          ..write('isCommon: $isCommon, ')
          ..write('importedAt: $importedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DictionaryFavoriteTableTable extends DictionaryFavoriteTable
    with TableInfo<$DictionaryFavoriteTableTable, DictionaryFavoriteTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DictionaryFavoriteTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _entryKeyMeta =
      const VerificationMeta('entryKey');
  @override
  late final GeneratedColumn<String> entryKey = GeneratedColumn<String>(
      'entry_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subtitleMeta =
      const VerificationMeta('subtitle');
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
      'subtitle', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _entryJsonMeta =
      const VerificationMeta('entryJson');
  @override
  late final GeneratedColumn<String> entryJson = GeneratedColumn<String>(
      'entry_json', aliasedName, false,
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
      [id, entryKey, language, title, subtitle, entryJson, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dictionary_favorite_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DictionaryFavoriteTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('entry_key')) {
      context.handle(_entryKeyMeta,
          entryKey.isAcceptableOrUnknown(data['entry_key']!, _entryKeyMeta));
    } else if (isInserting) {
      context.missing(_entryKeyMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(_subtitleMeta,
          subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta));
    }
    if (data.containsKey('entry_json')) {
      context.handle(_entryJsonMeta,
          entryJson.isAcceptableOrUnknown(data['entry_json']!, _entryJsonMeta));
    } else if (isInserting) {
      context.missing(_entryJsonMeta);
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
  DictionaryFavoriteTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DictionaryFavoriteTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      entryKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entry_key'])!,
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      subtitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subtitle']),
      entryJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entry_json'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $DictionaryFavoriteTableTable createAlias(String alias) {
    return $DictionaryFavoriteTableTable(attachedDatabase, alias);
  }
}

class DictionaryFavoriteTableData extends DataClass
    implements Insertable<DictionaryFavoriteTableData> {
  final String id;
  final String entryKey;
  final String language;
  final String title;
  final String? subtitle;
  final String entryJson;
  final DateTime createdAt;
  const DictionaryFavoriteTableData(
      {required this.id,
      required this.entryKey,
      required this.language,
      required this.title,
      this.subtitle,
      required this.entryJson,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['entry_key'] = Variable<String>(entryKey);
    map['language'] = Variable<String>(language);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || subtitle != null) {
      map['subtitle'] = Variable<String>(subtitle);
    }
    map['entry_json'] = Variable<String>(entryJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  DictionaryFavoriteTableCompanion toCompanion(bool nullToAbsent) {
    return DictionaryFavoriteTableCompanion(
      id: Value(id),
      entryKey: Value(entryKey),
      language: Value(language),
      title: Value(title),
      subtitle: subtitle == null && nullToAbsent
          ? const Value.absent()
          : Value(subtitle),
      entryJson: Value(entryJson),
      createdAt: Value(createdAt),
    );
  }

  factory DictionaryFavoriteTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DictionaryFavoriteTableData(
      id: serializer.fromJson<String>(json['id']),
      entryKey: serializer.fromJson<String>(json['entryKey']),
      language: serializer.fromJson<String>(json['language']),
      title: serializer.fromJson<String>(json['title']),
      subtitle: serializer.fromJson<String?>(json['subtitle']),
      entryJson: serializer.fromJson<String>(json['entryJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'entryKey': serializer.toJson<String>(entryKey),
      'language': serializer.toJson<String>(language),
      'title': serializer.toJson<String>(title),
      'subtitle': serializer.toJson<String?>(subtitle),
      'entryJson': serializer.toJson<String>(entryJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DictionaryFavoriteTableData copyWith(
          {String? id,
          String? entryKey,
          String? language,
          String? title,
          Value<String?> subtitle = const Value.absent(),
          String? entryJson,
          DateTime? createdAt}) =>
      DictionaryFavoriteTableData(
        id: id ?? this.id,
        entryKey: entryKey ?? this.entryKey,
        language: language ?? this.language,
        title: title ?? this.title,
        subtitle: subtitle.present ? subtitle.value : this.subtitle,
        entryJson: entryJson ?? this.entryJson,
        createdAt: createdAt ?? this.createdAt,
      );
  DictionaryFavoriteTableData copyWithCompanion(
      DictionaryFavoriteTableCompanion data) {
    return DictionaryFavoriteTableData(
      id: data.id.present ? data.id.value : this.id,
      entryKey: data.entryKey.present ? data.entryKey.value : this.entryKey,
      language: data.language.present ? data.language.value : this.language,
      title: data.title.present ? data.title.value : this.title,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      entryJson: data.entryJson.present ? data.entryJson.value : this.entryJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryFavoriteTableData(')
          ..write('id: $id, ')
          ..write('entryKey: $entryKey, ')
          ..write('language: $language, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('entryJson: $entryJson, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, entryKey, language, title, subtitle, entryJson, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DictionaryFavoriteTableData &&
          other.id == this.id &&
          other.entryKey == this.entryKey &&
          other.language == this.language &&
          other.title == this.title &&
          other.subtitle == this.subtitle &&
          other.entryJson == this.entryJson &&
          other.createdAt == this.createdAt);
}

class DictionaryFavoriteTableCompanion
    extends UpdateCompanion<DictionaryFavoriteTableData> {
  final Value<String> id;
  final Value<String> entryKey;
  final Value<String> language;
  final Value<String> title;
  final Value<String?> subtitle;
  final Value<String> entryJson;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const DictionaryFavoriteTableCompanion({
    this.id = const Value.absent(),
    this.entryKey = const Value.absent(),
    this.language = const Value.absent(),
    this.title = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.entryJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DictionaryFavoriteTableCompanion.insert({
    required String id,
    required String entryKey,
    required String language,
    required String title,
    this.subtitle = const Value.absent(),
    required String entryJson,
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        entryKey = Value(entryKey),
        language = Value(language),
        title = Value(title),
        entryJson = Value(entryJson);
  static Insertable<DictionaryFavoriteTableData> custom({
    Expression<String>? id,
    Expression<String>? entryKey,
    Expression<String>? language,
    Expression<String>? title,
    Expression<String>? subtitle,
    Expression<String>? entryJson,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entryKey != null) 'entry_key': entryKey,
      if (language != null) 'language': language,
      if (title != null) 'title': title,
      if (subtitle != null) 'subtitle': subtitle,
      if (entryJson != null) 'entry_json': entryJson,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DictionaryFavoriteTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? entryKey,
      Value<String>? language,
      Value<String>? title,
      Value<String?>? subtitle,
      Value<String>? entryJson,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return DictionaryFavoriteTableCompanion(
      id: id ?? this.id,
      entryKey: entryKey ?? this.entryKey,
      language: language ?? this.language,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      entryJson: entryJson ?? this.entryJson,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (entryKey.present) {
      map['entry_key'] = Variable<String>(entryKey.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (entryJson.present) {
      map['entry_json'] = Variable<String>(entryJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryFavoriteTableCompanion(')
          ..write('id: $id, ')
          ..write('entryKey: $entryKey, ')
          ..write('language: $language, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('entryJson: $entryJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DictionarySourceStateTableTable extends DictionarySourceStateTable
    with
        TableInfo<$DictionarySourceStateTableTable,
            DictionarySourceStateTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DictionarySourceStateTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _sourceKeyMeta =
      const VerificationMeta('sourceKey');
  @override
  late final GeneratedColumn<String> sourceKey = GeneratedColumn<String>(
      'source_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isReadyMeta =
      const VerificationMeta('isReady');
  @override
  late final GeneratedColumn<bool> isReady = GeneratedColumn<bool>(
      'is_ready', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_ready" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _entryCountMeta =
      const VerificationMeta('entryCount');
  @override
  late final GeneratedColumn<int> entryCount = GeneratedColumn<int>(
      'entry_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _errorMessageMeta =
      const VerificationMeta('errorMessage');
  @override
  late final GeneratedColumn<String> errorMessage = GeneratedColumn<String>(
      'error_message', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [sourceKey, isReady, entryCount, updatedAt, errorMessage];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dictionary_source_state_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DictionarySourceStateTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('source_key')) {
      context.handle(_sourceKeyMeta,
          sourceKey.isAcceptableOrUnknown(data['source_key']!, _sourceKeyMeta));
    } else if (isInserting) {
      context.missing(_sourceKeyMeta);
    }
    if (data.containsKey('is_ready')) {
      context.handle(_isReadyMeta,
          isReady.isAcceptableOrUnknown(data['is_ready']!, _isReadyMeta));
    }
    if (data.containsKey('entry_count')) {
      context.handle(
          _entryCountMeta,
          entryCount.isAcceptableOrUnknown(
              data['entry_count']!, _entryCountMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('error_message')) {
      context.handle(
          _errorMessageMeta,
          errorMessage.isAcceptableOrUnknown(
              data['error_message']!, _errorMessageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sourceKey};
  @override
  DictionarySourceStateTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DictionarySourceStateTableData(
      sourceKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_key'])!,
      isReady: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_ready'])!,
      entryCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}entry_count'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      errorMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_message']),
    );
  }

  @override
  $DictionarySourceStateTableTable createAlias(String alias) {
    return $DictionarySourceStateTableTable(attachedDatabase, alias);
  }
}

class DictionarySourceStateTableData extends DataClass
    implements Insertable<DictionarySourceStateTableData> {
  final String sourceKey;
  final bool isReady;
  final int entryCount;
  final DateTime updatedAt;
  final String? errorMessage;
  const DictionarySourceStateTableData(
      {required this.sourceKey,
      required this.isReady,
      required this.entryCount,
      required this.updatedAt,
      this.errorMessage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['source_key'] = Variable<String>(sourceKey);
    map['is_ready'] = Variable<bool>(isReady);
    map['entry_count'] = Variable<int>(entryCount);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || errorMessage != null) {
      map['error_message'] = Variable<String>(errorMessage);
    }
    return map;
  }

  DictionarySourceStateTableCompanion toCompanion(bool nullToAbsent) {
    return DictionarySourceStateTableCompanion(
      sourceKey: Value(sourceKey),
      isReady: Value(isReady),
      entryCount: Value(entryCount),
      updatedAt: Value(updatedAt),
      errorMessage: errorMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(errorMessage),
    );
  }

  factory DictionarySourceStateTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DictionarySourceStateTableData(
      sourceKey: serializer.fromJson<String>(json['sourceKey']),
      isReady: serializer.fromJson<bool>(json['isReady']),
      entryCount: serializer.fromJson<int>(json['entryCount']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sourceKey': serializer.toJson<String>(sourceKey),
      'isReady': serializer.toJson<bool>(isReady),
      'entryCount': serializer.toJson<int>(entryCount),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'errorMessage': serializer.toJson<String?>(errorMessage),
    };
  }

  DictionarySourceStateTableData copyWith(
          {String? sourceKey,
          bool? isReady,
          int? entryCount,
          DateTime? updatedAt,
          Value<String?> errorMessage = const Value.absent()}) =>
      DictionarySourceStateTableData(
        sourceKey: sourceKey ?? this.sourceKey,
        isReady: isReady ?? this.isReady,
        entryCount: entryCount ?? this.entryCount,
        updatedAt: updatedAt ?? this.updatedAt,
        errorMessage:
            errorMessage.present ? errorMessage.value : this.errorMessage,
      );
  DictionarySourceStateTableData copyWithCompanion(
      DictionarySourceStateTableCompanion data) {
    return DictionarySourceStateTableData(
      sourceKey: data.sourceKey.present ? data.sourceKey.value : this.sourceKey,
      isReady: data.isReady.present ? data.isReady.value : this.isReady,
      entryCount:
          data.entryCount.present ? data.entryCount.value : this.entryCount,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      errorMessage: data.errorMessage.present
          ? data.errorMessage.value
          : this.errorMessage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DictionarySourceStateTableData(')
          ..write('sourceKey: $sourceKey, ')
          ..write('isReady: $isReady, ')
          ..write('entryCount: $entryCount, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('errorMessage: $errorMessage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(sourceKey, isReady, entryCount, updatedAt, errorMessage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DictionarySourceStateTableData &&
          other.sourceKey == this.sourceKey &&
          other.isReady == this.isReady &&
          other.entryCount == this.entryCount &&
          other.updatedAt == this.updatedAt &&
          other.errorMessage == this.errorMessage);
}

class DictionarySourceStateTableCompanion
    extends UpdateCompanion<DictionarySourceStateTableData> {
  final Value<String> sourceKey;
  final Value<bool> isReady;
  final Value<int> entryCount;
  final Value<DateTime> updatedAt;
  final Value<String?> errorMessage;
  final Value<int> rowid;
  const DictionarySourceStateTableCompanion({
    this.sourceKey = const Value.absent(),
    this.isReady = const Value.absent(),
    this.entryCount = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DictionarySourceStateTableCompanion.insert({
    required String sourceKey,
    this.isReady = const Value.absent(),
    this.entryCount = const Value.absent(),
    required DateTime updatedAt,
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : sourceKey = Value(sourceKey),
        updatedAt = Value(updatedAt);
  static Insertable<DictionarySourceStateTableData> custom({
    Expression<String>? sourceKey,
    Expression<bool>? isReady,
    Expression<int>? entryCount,
    Expression<DateTime>? updatedAt,
    Expression<String>? errorMessage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (sourceKey != null) 'source_key': sourceKey,
      if (isReady != null) 'is_ready': isReady,
      if (entryCount != null) 'entry_count': entryCount,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (errorMessage != null) 'error_message': errorMessage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DictionarySourceStateTableCompanion copyWith(
      {Value<String>? sourceKey,
      Value<bool>? isReady,
      Value<int>? entryCount,
      Value<DateTime>? updatedAt,
      Value<String?>? errorMessage,
      Value<int>? rowid}) {
    return DictionarySourceStateTableCompanion(
      sourceKey: sourceKey ?? this.sourceKey,
      isReady: isReady ?? this.isReady,
      entryCount: entryCount ?? this.entryCount,
      updatedAt: updatedAt ?? this.updatedAt,
      errorMessage: errorMessage ?? this.errorMessage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sourceKey.present) {
      map['source_key'] = Variable<String>(sourceKey.value);
    }
    if (isReady.present) {
      map['is_ready'] = Variable<bool>(isReady.value);
    }
    if (entryCount.present) {
      map['entry_count'] = Variable<int>(entryCount.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (errorMessage.present) {
      map['error_message'] = Variable<String>(errorMessage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DictionarySourceStateTableCompanion(')
          ..write('sourceKey: $sourceKey, ')
          ..write('isReady: $isReady, ')
          ..write('entryCount: $entryCount, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('errorMessage: $errorMessage, ')
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
  late final $LessonAttemptTableTable lessonAttemptTable =
      $LessonAttemptTableTable(this);
  late final $PracticeDeckTableTable practiceDeckTable =
      $PracticeDeckTableTable(this);
  late final $PracticeCardTableTable practiceCardTable =
      $PracticeCardTableTable(this);
  late final $PracticeReviewTableTable practiceReviewTable =
      $PracticeReviewTableTable(this);
  late final $PracticeMediaTableTable practiceMediaTable =
      $PracticeMediaTableTable(this);
  late final $PracticeCardMediaTableTable practiceCardMediaTable =
      $PracticeCardMediaTableTable(this);
  late final $DictionaryCacheTableTable dictionaryCacheTable =
      $DictionaryCacheTableTable(this);
  late final $DictionaryJapaneseEntryTableTable dictionaryJapaneseEntryTable =
      $DictionaryJapaneseEntryTableTable(this);
  late final $DictionaryFavoriteTableTable dictionaryFavoriteTable =
      $DictionaryFavoriteTableTable(this);
  late final $DictionarySourceStateTableTable dictionarySourceStateTable =
      $DictionarySourceStateTableTable(this);
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
        lessonAttemptTable,
        practiceDeckTable,
        practiceCardTable,
        practiceReviewTable,
        practiceMediaTable,
        practiceCardMediaTable,
        dictionaryCacheTable,
        dictionaryJapaneseEntryTable,
        dictionaryFavoriteTable,
        dictionarySourceStateTable,
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
typedef $$LessonAttemptTableTableCreateCompanionBuilder
    = LessonAttemptTableCompanion Function({
  Value<int> id,
  required String userId,
  required String lessonId,
  required String blockId,
  required int attemptNumber,
  Value<String?> submittedAnswer,
  Value<String> selectedOptionIdsJson,
  required bool isCorrect,
  Value<String?> feedbackMessage,
  Value<int> earnedXp,
  Value<DateTime> createdAt,
});
typedef $$LessonAttemptTableTableUpdateCompanionBuilder
    = LessonAttemptTableCompanion Function({
  Value<int> id,
  Value<String> userId,
  Value<String> lessonId,
  Value<String> blockId,
  Value<int> attemptNumber,
  Value<String?> submittedAnswer,
  Value<String> selectedOptionIdsJson,
  Value<bool> isCorrect,
  Value<String?> feedbackMessage,
  Value<int> earnedXp,
  Value<DateTime> createdAt,
});

class $$LessonAttemptTableTableFilterComposer
    extends Composer<_$AppDatabase, $LessonAttemptTableTable> {
  $$LessonAttemptTableTableFilterComposer({
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

  ColumnFilters<String> get blockId => $composableBuilder(
      column: $table.blockId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get attemptNumber => $composableBuilder(
      column: $table.attemptNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get submittedAnswer => $composableBuilder(
      column: $table.submittedAnswer,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get selectedOptionIdsJson => $composableBuilder(
      column: $table.selectedOptionIdsJson,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isCorrect => $composableBuilder(
      column: $table.isCorrect, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedbackMessage => $composableBuilder(
      column: $table.feedbackMessage,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get earnedXp => $composableBuilder(
      column: $table.earnedXp, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$LessonAttemptTableTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonAttemptTableTable> {
  $$LessonAttemptTableTableOrderingComposer({
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

  ColumnOrderings<String> get blockId => $composableBuilder(
      column: $table.blockId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get attemptNumber => $composableBuilder(
      column: $table.attemptNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get submittedAnswer => $composableBuilder(
      column: $table.submittedAnswer,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get selectedOptionIdsJson => $composableBuilder(
      column: $table.selectedOptionIdsJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isCorrect => $composableBuilder(
      column: $table.isCorrect, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedbackMessage => $composableBuilder(
      column: $table.feedbackMessage,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get earnedXp => $composableBuilder(
      column: $table.earnedXp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$LessonAttemptTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonAttemptTableTable> {
  $$LessonAttemptTableTableAnnotationComposer({
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

  GeneratedColumn<String> get blockId =>
      $composableBuilder(column: $table.blockId, builder: (column) => column);

  GeneratedColumn<int> get attemptNumber => $composableBuilder(
      column: $table.attemptNumber, builder: (column) => column);

  GeneratedColumn<String> get submittedAnswer => $composableBuilder(
      column: $table.submittedAnswer, builder: (column) => column);

  GeneratedColumn<String> get selectedOptionIdsJson => $composableBuilder(
      column: $table.selectedOptionIdsJson, builder: (column) => column);

  GeneratedColumn<bool> get isCorrect =>
      $composableBuilder(column: $table.isCorrect, builder: (column) => column);

  GeneratedColumn<String> get feedbackMessage => $composableBuilder(
      column: $table.feedbackMessage, builder: (column) => column);

  GeneratedColumn<int> get earnedXp =>
      $composableBuilder(column: $table.earnedXp, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$LessonAttemptTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LessonAttemptTableTable,
    LessonAttemptTableData,
    $$LessonAttemptTableTableFilterComposer,
    $$LessonAttemptTableTableOrderingComposer,
    $$LessonAttemptTableTableAnnotationComposer,
    $$LessonAttemptTableTableCreateCompanionBuilder,
    $$LessonAttemptTableTableUpdateCompanionBuilder,
    (
      LessonAttemptTableData,
      BaseReferences<_$AppDatabase, $LessonAttemptTableTable,
          LessonAttemptTableData>
    ),
    LessonAttemptTableData,
    PrefetchHooks Function()> {
  $$LessonAttemptTableTableTableManager(
      _$AppDatabase db, $LessonAttemptTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonAttemptTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonAttemptTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonAttemptTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> lessonId = const Value.absent(),
            Value<String> blockId = const Value.absent(),
            Value<int> attemptNumber = const Value.absent(),
            Value<String?> submittedAnswer = const Value.absent(),
            Value<String> selectedOptionIdsJson = const Value.absent(),
            Value<bool> isCorrect = const Value.absent(),
            Value<String?> feedbackMessage = const Value.absent(),
            Value<int> earnedXp = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              LessonAttemptTableCompanion(
            id: id,
            userId: userId,
            lessonId: lessonId,
            blockId: blockId,
            attemptNumber: attemptNumber,
            submittedAnswer: submittedAnswer,
            selectedOptionIdsJson: selectedOptionIdsJson,
            isCorrect: isCorrect,
            feedbackMessage: feedbackMessage,
            earnedXp: earnedXp,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userId,
            required String lessonId,
            required String blockId,
            required int attemptNumber,
            Value<String?> submittedAnswer = const Value.absent(),
            Value<String> selectedOptionIdsJson = const Value.absent(),
            required bool isCorrect,
            Value<String?> feedbackMessage = const Value.absent(),
            Value<int> earnedXp = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              LessonAttemptTableCompanion.insert(
            id: id,
            userId: userId,
            lessonId: lessonId,
            blockId: blockId,
            attemptNumber: attemptNumber,
            submittedAnswer: submittedAnswer,
            selectedOptionIdsJson: selectedOptionIdsJson,
            isCorrect: isCorrect,
            feedbackMessage: feedbackMessage,
            earnedXp: earnedXp,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LessonAttemptTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LessonAttemptTableTable,
    LessonAttemptTableData,
    $$LessonAttemptTableTableFilterComposer,
    $$LessonAttemptTableTableOrderingComposer,
    $$LessonAttemptTableTableAnnotationComposer,
    $$LessonAttemptTableTableCreateCompanionBuilder,
    $$LessonAttemptTableTableUpdateCompanionBuilder,
    (
      LessonAttemptTableData,
      BaseReferences<_$AppDatabase, $LessonAttemptTableTable,
          LessonAttemptTableData>
    ),
    LessonAttemptTableData,
    PrefetchHooks Function()>;
typedef $$PracticeDeckTableTableCreateCompanionBuilder
    = PracticeDeckTableCompanion Function({
  required String id,
  required String name,
  Value<String?> description,
  Value<String> sourceType,
  Value<int?> ankiDeckId,
  Value<int> maxNewPerDay,
  Value<int> maxReviewsPerDay,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<int> rowid,
});
typedef $$PracticeDeckTableTableUpdateCompanionBuilder
    = PracticeDeckTableCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String?> description,
  Value<String> sourceType,
  Value<int?> ankiDeckId,
  Value<int> maxNewPerDay,
  Value<int> maxReviewsPerDay,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<int> rowid,
});

class $$PracticeDeckTableTableFilterComposer
    extends Composer<_$AppDatabase, $PracticeDeckTableTable> {
  $$PracticeDeckTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sourceType => $composableBuilder(
      column: $table.sourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get ankiDeckId => $composableBuilder(
      column: $table.ankiDeckId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxNewPerDay => $composableBuilder(
      column: $table.maxNewPerDay, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxReviewsPerDay => $composableBuilder(
      column: $table.maxReviewsPerDay,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$PracticeDeckTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PracticeDeckTableTable> {
  $$PracticeDeckTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sourceType => $composableBuilder(
      column: $table.sourceType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get ankiDeckId => $composableBuilder(
      column: $table.ankiDeckId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxNewPerDay => $composableBuilder(
      column: $table.maxNewPerDay,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxReviewsPerDay => $composableBuilder(
      column: $table.maxReviewsPerDay,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$PracticeDeckTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PracticeDeckTableTable> {
  $$PracticeDeckTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get sourceType => $composableBuilder(
      column: $table.sourceType, builder: (column) => column);

  GeneratedColumn<int> get ankiDeckId => $composableBuilder(
      column: $table.ankiDeckId, builder: (column) => column);

  GeneratedColumn<int> get maxNewPerDay => $composableBuilder(
      column: $table.maxNewPerDay, builder: (column) => column);

  GeneratedColumn<int> get maxReviewsPerDay => $composableBuilder(
      column: $table.maxReviewsPerDay, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$PracticeDeckTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PracticeDeckTableTable,
    PracticeDeckTableData,
    $$PracticeDeckTableTableFilterComposer,
    $$PracticeDeckTableTableOrderingComposer,
    $$PracticeDeckTableTableAnnotationComposer,
    $$PracticeDeckTableTableCreateCompanionBuilder,
    $$PracticeDeckTableTableUpdateCompanionBuilder,
    (
      PracticeDeckTableData,
      BaseReferences<_$AppDatabase, $PracticeDeckTableTable,
          PracticeDeckTableData>
    ),
    PracticeDeckTableData,
    PrefetchHooks Function()> {
  $$PracticeDeckTableTableTableManager(
      _$AppDatabase db, $PracticeDeckTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PracticeDeckTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PracticeDeckTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PracticeDeckTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String> sourceType = const Value.absent(),
            Value<int?> ankiDeckId = const Value.absent(),
            Value<int> maxNewPerDay = const Value.absent(),
            Value<int> maxReviewsPerDay = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeDeckTableCompanion(
            id: id,
            name: name,
            description: description,
            sourceType: sourceType,
            ankiDeckId: ankiDeckId,
            maxNewPerDay: maxNewPerDay,
            maxReviewsPerDay: maxReviewsPerDay,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<String?> description = const Value.absent(),
            Value<String> sourceType = const Value.absent(),
            Value<int?> ankiDeckId = const Value.absent(),
            Value<int> maxNewPerDay = const Value.absent(),
            Value<int> maxReviewsPerDay = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeDeckTableCompanion.insert(
            id: id,
            name: name,
            description: description,
            sourceType: sourceType,
            ankiDeckId: ankiDeckId,
            maxNewPerDay: maxNewPerDay,
            maxReviewsPerDay: maxReviewsPerDay,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PracticeDeckTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PracticeDeckTableTable,
    PracticeDeckTableData,
    $$PracticeDeckTableTableFilterComposer,
    $$PracticeDeckTableTableOrderingComposer,
    $$PracticeDeckTableTableAnnotationComposer,
    $$PracticeDeckTableTableCreateCompanionBuilder,
    $$PracticeDeckTableTableUpdateCompanionBuilder,
    (
      PracticeDeckTableData,
      BaseReferences<_$AppDatabase, $PracticeDeckTableTable,
          PracticeDeckTableData>
    ),
    PracticeDeckTableData,
    PrefetchHooks Function()>;
typedef $$PracticeCardTableTableCreateCompanionBuilder
    = PracticeCardTableCompanion Function({
  required String id,
  required String deckId,
  required String frontHtml,
  required String backHtml,
  required String frontPlain,
  required String backPlain,
  Value<String> queue,
  Value<DateTime?> dueAt,
  Value<int?> dueDay,
  Value<int> intervalDays,
  Value<int> easeFactorMilli,
  Value<int> reps,
  Value<int> lapses,
  Value<int> remainingSteps,
  Value<int> learningStepIndex,
  Value<DateTime?> lastReviewedAt,
  Value<bool> isLeech,
  Value<String> tagsJson,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<int> rowid,
});
typedef $$PracticeCardTableTableUpdateCompanionBuilder
    = PracticeCardTableCompanion Function({
  Value<String> id,
  Value<String> deckId,
  Value<String> frontHtml,
  Value<String> backHtml,
  Value<String> frontPlain,
  Value<String> backPlain,
  Value<String> queue,
  Value<DateTime?> dueAt,
  Value<int?> dueDay,
  Value<int> intervalDays,
  Value<int> easeFactorMilli,
  Value<int> reps,
  Value<int> lapses,
  Value<int> remainingSteps,
  Value<int> learningStepIndex,
  Value<DateTime?> lastReviewedAt,
  Value<bool> isLeech,
  Value<String> tagsJson,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<int> rowid,
});

class $$PracticeCardTableTableFilterComposer
    extends Composer<_$AppDatabase, $PracticeCardTableTable> {
  $$PracticeCardTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get deckId => $composableBuilder(
      column: $table.deckId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frontHtml => $composableBuilder(
      column: $table.frontHtml, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get backHtml => $composableBuilder(
      column: $table.backHtml, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frontPlain => $composableBuilder(
      column: $table.frontPlain, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get backPlain => $composableBuilder(
      column: $table.backPlain, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get queue => $composableBuilder(
      column: $table.queue, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dueAt => $composableBuilder(
      column: $table.dueAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dueDay => $composableBuilder(
      column: $table.dueDay, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get easeFactorMilli => $composableBuilder(
      column: $table.easeFactorMilli,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get reps => $composableBuilder(
      column: $table.reps, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lapses => $composableBuilder(
      column: $table.lapses, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get remainingSteps => $composableBuilder(
      column: $table.remainingSteps,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get learningStepIndex => $composableBuilder(
      column: $table.learningStepIndex,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastReviewedAt => $composableBuilder(
      column: $table.lastReviewedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isLeech => $composableBuilder(
      column: $table.isLeech, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tagsJson => $composableBuilder(
      column: $table.tagsJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$PracticeCardTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PracticeCardTableTable> {
  $$PracticeCardTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get deckId => $composableBuilder(
      column: $table.deckId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frontHtml => $composableBuilder(
      column: $table.frontHtml, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backHtml => $composableBuilder(
      column: $table.backHtml, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frontPlain => $composableBuilder(
      column: $table.frontPlain, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backPlain => $composableBuilder(
      column: $table.backPlain, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get queue => $composableBuilder(
      column: $table.queue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dueAt => $composableBuilder(
      column: $table.dueAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dueDay => $composableBuilder(
      column: $table.dueDay, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get easeFactorMilli => $composableBuilder(
      column: $table.easeFactorMilli,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get reps => $composableBuilder(
      column: $table.reps, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lapses => $composableBuilder(
      column: $table.lapses, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get remainingSteps => $composableBuilder(
      column: $table.remainingSteps,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get learningStepIndex => $composableBuilder(
      column: $table.learningStepIndex,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastReviewedAt => $composableBuilder(
      column: $table.lastReviewedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isLeech => $composableBuilder(
      column: $table.isLeech, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tagsJson => $composableBuilder(
      column: $table.tagsJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$PracticeCardTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PracticeCardTableTable> {
  $$PracticeCardTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get deckId =>
      $composableBuilder(column: $table.deckId, builder: (column) => column);

  GeneratedColumn<String> get frontHtml =>
      $composableBuilder(column: $table.frontHtml, builder: (column) => column);

  GeneratedColumn<String> get backHtml =>
      $composableBuilder(column: $table.backHtml, builder: (column) => column);

  GeneratedColumn<String> get frontPlain => $composableBuilder(
      column: $table.frontPlain, builder: (column) => column);

  GeneratedColumn<String> get backPlain =>
      $composableBuilder(column: $table.backPlain, builder: (column) => column);

  GeneratedColumn<String> get queue =>
      $composableBuilder(column: $table.queue, builder: (column) => column);

  GeneratedColumn<DateTime> get dueAt =>
      $composableBuilder(column: $table.dueAt, builder: (column) => column);

  GeneratedColumn<int> get dueDay =>
      $composableBuilder(column: $table.dueDay, builder: (column) => column);

  GeneratedColumn<int> get intervalDays => $composableBuilder(
      column: $table.intervalDays, builder: (column) => column);

  GeneratedColumn<int> get easeFactorMilli => $composableBuilder(
      column: $table.easeFactorMilli, builder: (column) => column);

  GeneratedColumn<int> get reps =>
      $composableBuilder(column: $table.reps, builder: (column) => column);

  GeneratedColumn<int> get lapses =>
      $composableBuilder(column: $table.lapses, builder: (column) => column);

  GeneratedColumn<int> get remainingSteps => $composableBuilder(
      column: $table.remainingSteps, builder: (column) => column);

  GeneratedColumn<int> get learningStepIndex => $composableBuilder(
      column: $table.learningStepIndex, builder: (column) => column);

  GeneratedColumn<DateTime> get lastReviewedAt => $composableBuilder(
      column: $table.lastReviewedAt, builder: (column) => column);

  GeneratedColumn<bool> get isLeech =>
      $composableBuilder(column: $table.isLeech, builder: (column) => column);

  GeneratedColumn<String> get tagsJson =>
      $composableBuilder(column: $table.tagsJson, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$PracticeCardTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PracticeCardTableTable,
    PracticeCardTableData,
    $$PracticeCardTableTableFilterComposer,
    $$PracticeCardTableTableOrderingComposer,
    $$PracticeCardTableTableAnnotationComposer,
    $$PracticeCardTableTableCreateCompanionBuilder,
    $$PracticeCardTableTableUpdateCompanionBuilder,
    (
      PracticeCardTableData,
      BaseReferences<_$AppDatabase, $PracticeCardTableTable,
          PracticeCardTableData>
    ),
    PracticeCardTableData,
    PrefetchHooks Function()> {
  $$PracticeCardTableTableTableManager(
      _$AppDatabase db, $PracticeCardTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PracticeCardTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PracticeCardTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PracticeCardTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> deckId = const Value.absent(),
            Value<String> frontHtml = const Value.absent(),
            Value<String> backHtml = const Value.absent(),
            Value<String> frontPlain = const Value.absent(),
            Value<String> backPlain = const Value.absent(),
            Value<String> queue = const Value.absent(),
            Value<DateTime?> dueAt = const Value.absent(),
            Value<int?> dueDay = const Value.absent(),
            Value<int> intervalDays = const Value.absent(),
            Value<int> easeFactorMilli = const Value.absent(),
            Value<int> reps = const Value.absent(),
            Value<int> lapses = const Value.absent(),
            Value<int> remainingSteps = const Value.absent(),
            Value<int> learningStepIndex = const Value.absent(),
            Value<DateTime?> lastReviewedAt = const Value.absent(),
            Value<bool> isLeech = const Value.absent(),
            Value<String> tagsJson = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeCardTableCompanion(
            id: id,
            deckId: deckId,
            frontHtml: frontHtml,
            backHtml: backHtml,
            frontPlain: frontPlain,
            backPlain: backPlain,
            queue: queue,
            dueAt: dueAt,
            dueDay: dueDay,
            intervalDays: intervalDays,
            easeFactorMilli: easeFactorMilli,
            reps: reps,
            lapses: lapses,
            remainingSteps: remainingSteps,
            learningStepIndex: learningStepIndex,
            lastReviewedAt: lastReviewedAt,
            isLeech: isLeech,
            tagsJson: tagsJson,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String deckId,
            required String frontHtml,
            required String backHtml,
            required String frontPlain,
            required String backPlain,
            Value<String> queue = const Value.absent(),
            Value<DateTime?> dueAt = const Value.absent(),
            Value<int?> dueDay = const Value.absent(),
            Value<int> intervalDays = const Value.absent(),
            Value<int> easeFactorMilli = const Value.absent(),
            Value<int> reps = const Value.absent(),
            Value<int> lapses = const Value.absent(),
            Value<int> remainingSteps = const Value.absent(),
            Value<int> learningStepIndex = const Value.absent(),
            Value<DateTime?> lastReviewedAt = const Value.absent(),
            Value<bool> isLeech = const Value.absent(),
            Value<String> tagsJson = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeCardTableCompanion.insert(
            id: id,
            deckId: deckId,
            frontHtml: frontHtml,
            backHtml: backHtml,
            frontPlain: frontPlain,
            backPlain: backPlain,
            queue: queue,
            dueAt: dueAt,
            dueDay: dueDay,
            intervalDays: intervalDays,
            easeFactorMilli: easeFactorMilli,
            reps: reps,
            lapses: lapses,
            remainingSteps: remainingSteps,
            learningStepIndex: learningStepIndex,
            lastReviewedAt: lastReviewedAt,
            isLeech: isLeech,
            tagsJson: tagsJson,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PracticeCardTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PracticeCardTableTable,
    PracticeCardTableData,
    $$PracticeCardTableTableFilterComposer,
    $$PracticeCardTableTableOrderingComposer,
    $$PracticeCardTableTableAnnotationComposer,
    $$PracticeCardTableTableCreateCompanionBuilder,
    $$PracticeCardTableTableUpdateCompanionBuilder,
    (
      PracticeCardTableData,
      BaseReferences<_$AppDatabase, $PracticeCardTableTable,
          PracticeCardTableData>
    ),
    PracticeCardTableData,
    PrefetchHooks Function()>;
typedef $$PracticeReviewTableTableCreateCompanionBuilder
    = PracticeReviewTableCompanion Function({
  required String id,
  required String cardId,
  required DateTime reviewedAt,
  required String rating,
  required String queueBefore,
  required String queueAfter,
  Value<int> intervalBeforeDays,
  Value<int> intervalAfterDays,
  Value<int> easeBeforeMilli,
  Value<int> easeAfterMilli,
  Value<int?> elapsedMs,
  Value<int> rowid,
});
typedef $$PracticeReviewTableTableUpdateCompanionBuilder
    = PracticeReviewTableCompanion Function({
  Value<String> id,
  Value<String> cardId,
  Value<DateTime> reviewedAt,
  Value<String> rating,
  Value<String> queueBefore,
  Value<String> queueAfter,
  Value<int> intervalBeforeDays,
  Value<int> intervalAfterDays,
  Value<int> easeBeforeMilli,
  Value<int> easeAfterMilli,
  Value<int?> elapsedMs,
  Value<int> rowid,
});

class $$PracticeReviewTableTableFilterComposer
    extends Composer<_$AppDatabase, $PracticeReviewTableTable> {
  $$PracticeReviewTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get reviewedAt => $composableBuilder(
      column: $table.reviewedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get queueBefore => $composableBuilder(
      column: $table.queueBefore, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get queueAfter => $composableBuilder(
      column: $table.queueAfter, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get intervalBeforeDays => $composableBuilder(
      column: $table.intervalBeforeDays,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get intervalAfterDays => $composableBuilder(
      column: $table.intervalAfterDays,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get easeBeforeMilli => $composableBuilder(
      column: $table.easeBeforeMilli,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get easeAfterMilli => $composableBuilder(
      column: $table.easeAfterMilli,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get elapsedMs => $composableBuilder(
      column: $table.elapsedMs, builder: (column) => ColumnFilters(column));
}

class $$PracticeReviewTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PracticeReviewTableTable> {
  $$PracticeReviewTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get reviewedAt => $composableBuilder(
      column: $table.reviewedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get queueBefore => $composableBuilder(
      column: $table.queueBefore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get queueAfter => $composableBuilder(
      column: $table.queueAfter, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get intervalBeforeDays => $composableBuilder(
      column: $table.intervalBeforeDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get intervalAfterDays => $composableBuilder(
      column: $table.intervalAfterDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get easeBeforeMilli => $composableBuilder(
      column: $table.easeBeforeMilli,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get easeAfterMilli => $composableBuilder(
      column: $table.easeAfterMilli,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get elapsedMs => $composableBuilder(
      column: $table.elapsedMs, builder: (column) => ColumnOrderings(column));
}

class $$PracticeReviewTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PracticeReviewTableTable> {
  $$PracticeReviewTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get cardId =>
      $composableBuilder(column: $table.cardId, builder: (column) => column);

  GeneratedColumn<DateTime> get reviewedAt => $composableBuilder(
      column: $table.reviewedAt, builder: (column) => column);

  GeneratedColumn<String> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<String> get queueBefore => $composableBuilder(
      column: $table.queueBefore, builder: (column) => column);

  GeneratedColumn<String> get queueAfter => $composableBuilder(
      column: $table.queueAfter, builder: (column) => column);

  GeneratedColumn<int> get intervalBeforeDays => $composableBuilder(
      column: $table.intervalBeforeDays, builder: (column) => column);

  GeneratedColumn<int> get intervalAfterDays => $composableBuilder(
      column: $table.intervalAfterDays, builder: (column) => column);

  GeneratedColumn<int> get easeBeforeMilli => $composableBuilder(
      column: $table.easeBeforeMilli, builder: (column) => column);

  GeneratedColumn<int> get easeAfterMilli => $composableBuilder(
      column: $table.easeAfterMilli, builder: (column) => column);

  GeneratedColumn<int> get elapsedMs =>
      $composableBuilder(column: $table.elapsedMs, builder: (column) => column);
}

class $$PracticeReviewTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PracticeReviewTableTable,
    PracticeReviewTableData,
    $$PracticeReviewTableTableFilterComposer,
    $$PracticeReviewTableTableOrderingComposer,
    $$PracticeReviewTableTableAnnotationComposer,
    $$PracticeReviewTableTableCreateCompanionBuilder,
    $$PracticeReviewTableTableUpdateCompanionBuilder,
    (
      PracticeReviewTableData,
      BaseReferences<_$AppDatabase, $PracticeReviewTableTable,
          PracticeReviewTableData>
    ),
    PracticeReviewTableData,
    PrefetchHooks Function()> {
  $$PracticeReviewTableTableTableManager(
      _$AppDatabase db, $PracticeReviewTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PracticeReviewTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PracticeReviewTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PracticeReviewTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> cardId = const Value.absent(),
            Value<DateTime> reviewedAt = const Value.absent(),
            Value<String> rating = const Value.absent(),
            Value<String> queueBefore = const Value.absent(),
            Value<String> queueAfter = const Value.absent(),
            Value<int> intervalBeforeDays = const Value.absent(),
            Value<int> intervalAfterDays = const Value.absent(),
            Value<int> easeBeforeMilli = const Value.absent(),
            Value<int> easeAfterMilli = const Value.absent(),
            Value<int?> elapsedMs = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeReviewTableCompanion(
            id: id,
            cardId: cardId,
            reviewedAt: reviewedAt,
            rating: rating,
            queueBefore: queueBefore,
            queueAfter: queueAfter,
            intervalBeforeDays: intervalBeforeDays,
            intervalAfterDays: intervalAfterDays,
            easeBeforeMilli: easeBeforeMilli,
            easeAfterMilli: easeAfterMilli,
            elapsedMs: elapsedMs,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String cardId,
            required DateTime reviewedAt,
            required String rating,
            required String queueBefore,
            required String queueAfter,
            Value<int> intervalBeforeDays = const Value.absent(),
            Value<int> intervalAfterDays = const Value.absent(),
            Value<int> easeBeforeMilli = const Value.absent(),
            Value<int> easeAfterMilli = const Value.absent(),
            Value<int?> elapsedMs = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeReviewTableCompanion.insert(
            id: id,
            cardId: cardId,
            reviewedAt: reviewedAt,
            rating: rating,
            queueBefore: queueBefore,
            queueAfter: queueAfter,
            intervalBeforeDays: intervalBeforeDays,
            intervalAfterDays: intervalAfterDays,
            easeBeforeMilli: easeBeforeMilli,
            easeAfterMilli: easeAfterMilli,
            elapsedMs: elapsedMs,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PracticeReviewTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PracticeReviewTableTable,
    PracticeReviewTableData,
    $$PracticeReviewTableTableFilterComposer,
    $$PracticeReviewTableTableOrderingComposer,
    $$PracticeReviewTableTableAnnotationComposer,
    $$PracticeReviewTableTableCreateCompanionBuilder,
    $$PracticeReviewTableTableUpdateCompanionBuilder,
    (
      PracticeReviewTableData,
      BaseReferences<_$AppDatabase, $PracticeReviewTableTable,
          PracticeReviewTableData>
    ),
    PracticeReviewTableData,
    PrefetchHooks Function()>;
typedef $$PracticeMediaTableTableCreateCompanionBuilder
    = PracticeMediaTableCompanion Function({
  required String id,
  required String checksumSha1,
  required String originalName,
  required String storedName,
  required String mimeType,
  required String localPath,
  Value<int> sizeBytes,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$PracticeMediaTableTableUpdateCompanionBuilder
    = PracticeMediaTableCompanion Function({
  Value<String> id,
  Value<String> checksumSha1,
  Value<String> originalName,
  Value<String> storedName,
  Value<String> mimeType,
  Value<String> localPath,
  Value<int> sizeBytes,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$PracticeMediaTableTableFilterComposer
    extends Composer<_$AppDatabase, $PracticeMediaTableTable> {
  $$PracticeMediaTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get checksumSha1 => $composableBuilder(
      column: $table.checksumSha1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get originalName => $composableBuilder(
      column: $table.originalName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get storedName => $composableBuilder(
      column: $table.storedName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mimeType => $composableBuilder(
      column: $table.mimeType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get localPath => $composableBuilder(
      column: $table.localPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sizeBytes => $composableBuilder(
      column: $table.sizeBytes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$PracticeMediaTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PracticeMediaTableTable> {
  $$PracticeMediaTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get checksumSha1 => $composableBuilder(
      column: $table.checksumSha1,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originalName => $composableBuilder(
      column: $table.originalName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get storedName => $composableBuilder(
      column: $table.storedName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mimeType => $composableBuilder(
      column: $table.mimeType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get localPath => $composableBuilder(
      column: $table.localPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sizeBytes => $composableBuilder(
      column: $table.sizeBytes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$PracticeMediaTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PracticeMediaTableTable> {
  $$PracticeMediaTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get checksumSha1 => $composableBuilder(
      column: $table.checksumSha1, builder: (column) => column);

  GeneratedColumn<String> get originalName => $composableBuilder(
      column: $table.originalName, builder: (column) => column);

  GeneratedColumn<String> get storedName => $composableBuilder(
      column: $table.storedName, builder: (column) => column);

  GeneratedColumn<String> get mimeType =>
      $composableBuilder(column: $table.mimeType, builder: (column) => column);

  GeneratedColumn<String> get localPath =>
      $composableBuilder(column: $table.localPath, builder: (column) => column);

  GeneratedColumn<int> get sizeBytes =>
      $composableBuilder(column: $table.sizeBytes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$PracticeMediaTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PracticeMediaTableTable,
    PracticeMediaTableData,
    $$PracticeMediaTableTableFilterComposer,
    $$PracticeMediaTableTableOrderingComposer,
    $$PracticeMediaTableTableAnnotationComposer,
    $$PracticeMediaTableTableCreateCompanionBuilder,
    $$PracticeMediaTableTableUpdateCompanionBuilder,
    (
      PracticeMediaTableData,
      BaseReferences<_$AppDatabase, $PracticeMediaTableTable,
          PracticeMediaTableData>
    ),
    PracticeMediaTableData,
    PrefetchHooks Function()> {
  $$PracticeMediaTableTableTableManager(
      _$AppDatabase db, $PracticeMediaTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PracticeMediaTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PracticeMediaTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PracticeMediaTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> checksumSha1 = const Value.absent(),
            Value<String> originalName = const Value.absent(),
            Value<String> storedName = const Value.absent(),
            Value<String> mimeType = const Value.absent(),
            Value<String> localPath = const Value.absent(),
            Value<int> sizeBytes = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeMediaTableCompanion(
            id: id,
            checksumSha1: checksumSha1,
            originalName: originalName,
            storedName: storedName,
            mimeType: mimeType,
            localPath: localPath,
            sizeBytes: sizeBytes,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String checksumSha1,
            required String originalName,
            required String storedName,
            required String mimeType,
            required String localPath,
            Value<int> sizeBytes = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeMediaTableCompanion.insert(
            id: id,
            checksumSha1: checksumSha1,
            originalName: originalName,
            storedName: storedName,
            mimeType: mimeType,
            localPath: localPath,
            sizeBytes: sizeBytes,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PracticeMediaTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PracticeMediaTableTable,
    PracticeMediaTableData,
    $$PracticeMediaTableTableFilterComposer,
    $$PracticeMediaTableTableOrderingComposer,
    $$PracticeMediaTableTableAnnotationComposer,
    $$PracticeMediaTableTableCreateCompanionBuilder,
    $$PracticeMediaTableTableUpdateCompanionBuilder,
    (
      PracticeMediaTableData,
      BaseReferences<_$AppDatabase, $PracticeMediaTableTable,
          PracticeMediaTableData>
    ),
    PracticeMediaTableData,
    PrefetchHooks Function()>;
typedef $$PracticeCardMediaTableTableCreateCompanionBuilder
    = PracticeCardMediaTableCompanion Function({
  required String cardId,
  required String mediaId,
  required String usageType,
  required String originalToken,
  Value<int> rowid,
});
typedef $$PracticeCardMediaTableTableUpdateCompanionBuilder
    = PracticeCardMediaTableCompanion Function({
  Value<String> cardId,
  Value<String> mediaId,
  Value<String> usageType,
  Value<String> originalToken,
  Value<int> rowid,
});

class $$PracticeCardMediaTableTableFilterComposer
    extends Composer<_$AppDatabase, $PracticeCardMediaTableTable> {
  $$PracticeCardMediaTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mediaId => $composableBuilder(
      column: $table.mediaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get usageType => $composableBuilder(
      column: $table.usageType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get originalToken => $composableBuilder(
      column: $table.originalToken, builder: (column) => ColumnFilters(column));
}

class $$PracticeCardMediaTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PracticeCardMediaTableTable> {
  $$PracticeCardMediaTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get cardId => $composableBuilder(
      column: $table.cardId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mediaId => $composableBuilder(
      column: $table.mediaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get usageType => $composableBuilder(
      column: $table.usageType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originalToken => $composableBuilder(
      column: $table.originalToken,
      builder: (column) => ColumnOrderings(column));
}

class $$PracticeCardMediaTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PracticeCardMediaTableTable> {
  $$PracticeCardMediaTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get cardId =>
      $composableBuilder(column: $table.cardId, builder: (column) => column);

  GeneratedColumn<String> get mediaId =>
      $composableBuilder(column: $table.mediaId, builder: (column) => column);

  GeneratedColumn<String> get usageType =>
      $composableBuilder(column: $table.usageType, builder: (column) => column);

  GeneratedColumn<String> get originalToken => $composableBuilder(
      column: $table.originalToken, builder: (column) => column);
}

class $$PracticeCardMediaTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PracticeCardMediaTableTable,
    PracticeCardMediaTableData,
    $$PracticeCardMediaTableTableFilterComposer,
    $$PracticeCardMediaTableTableOrderingComposer,
    $$PracticeCardMediaTableTableAnnotationComposer,
    $$PracticeCardMediaTableTableCreateCompanionBuilder,
    $$PracticeCardMediaTableTableUpdateCompanionBuilder,
    (
      PracticeCardMediaTableData,
      BaseReferences<_$AppDatabase, $PracticeCardMediaTableTable,
          PracticeCardMediaTableData>
    ),
    PracticeCardMediaTableData,
    PrefetchHooks Function()> {
  $$PracticeCardMediaTableTableTableManager(
      _$AppDatabase db, $PracticeCardMediaTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PracticeCardMediaTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$PracticeCardMediaTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PracticeCardMediaTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> cardId = const Value.absent(),
            Value<String> mediaId = const Value.absent(),
            Value<String> usageType = const Value.absent(),
            Value<String> originalToken = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeCardMediaTableCompanion(
            cardId: cardId,
            mediaId: mediaId,
            usageType: usageType,
            originalToken: originalToken,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cardId,
            required String mediaId,
            required String usageType,
            required String originalToken,
            Value<int> rowid = const Value.absent(),
          }) =>
              PracticeCardMediaTableCompanion.insert(
            cardId: cardId,
            mediaId: mediaId,
            usageType: usageType,
            originalToken: originalToken,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PracticeCardMediaTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $PracticeCardMediaTableTable,
        PracticeCardMediaTableData,
        $$PracticeCardMediaTableTableFilterComposer,
        $$PracticeCardMediaTableTableOrderingComposer,
        $$PracticeCardMediaTableTableAnnotationComposer,
        $$PracticeCardMediaTableTableCreateCompanionBuilder,
        $$PracticeCardMediaTableTableUpdateCompanionBuilder,
        (
          PracticeCardMediaTableData,
          BaseReferences<_$AppDatabase, $PracticeCardMediaTableTable,
              PracticeCardMediaTableData>
        ),
        PracticeCardMediaTableData,
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
typedef $$DictionaryJapaneseEntryTableTableCreateCompanionBuilder
    = DictionaryJapaneseEntryTableCompanion Function({
  required String entryId,
  Value<String?> primaryKanji,
  required String primaryKana,
  required String primaryRomaji,
  required String meaningPreview,
  required String entryJson,
  Value<bool> isCommon,
  Value<DateTime> importedAt,
  Value<int> rowid,
});
typedef $$DictionaryJapaneseEntryTableTableUpdateCompanionBuilder
    = DictionaryJapaneseEntryTableCompanion Function({
  Value<String> entryId,
  Value<String?> primaryKanji,
  Value<String> primaryKana,
  Value<String> primaryRomaji,
  Value<String> meaningPreview,
  Value<String> entryJson,
  Value<bool> isCommon,
  Value<DateTime> importedAt,
  Value<int> rowid,
});

class $$DictionaryJapaneseEntryTableTableFilterComposer
    extends Composer<_$AppDatabase, $DictionaryJapaneseEntryTableTable> {
  $$DictionaryJapaneseEntryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get primaryKanji => $composableBuilder(
      column: $table.primaryKanji, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get primaryKana => $composableBuilder(
      column: $table.primaryKana, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get primaryRomaji => $composableBuilder(
      column: $table.primaryRomaji, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get meaningPreview => $composableBuilder(
      column: $table.meaningPreview,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get entryJson => $composableBuilder(
      column: $table.entryJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isCommon => $composableBuilder(
      column: $table.isCommon, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get importedAt => $composableBuilder(
      column: $table.importedAt, builder: (column) => ColumnFilters(column));
}

class $$DictionaryJapaneseEntryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DictionaryJapaneseEntryTableTable> {
  $$DictionaryJapaneseEntryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get primaryKanji => $composableBuilder(
      column: $table.primaryKanji,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get primaryKana => $composableBuilder(
      column: $table.primaryKana, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get primaryRomaji => $composableBuilder(
      column: $table.primaryRomaji,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get meaningPreview => $composableBuilder(
      column: $table.meaningPreview,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get entryJson => $composableBuilder(
      column: $table.entryJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isCommon => $composableBuilder(
      column: $table.isCommon, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get importedAt => $composableBuilder(
      column: $table.importedAt, builder: (column) => ColumnOrderings(column));
}

class $$DictionaryJapaneseEntryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DictionaryJapaneseEntryTableTable> {
  $$DictionaryJapaneseEntryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get entryId =>
      $composableBuilder(column: $table.entryId, builder: (column) => column);

  GeneratedColumn<String> get primaryKanji => $composableBuilder(
      column: $table.primaryKanji, builder: (column) => column);

  GeneratedColumn<String> get primaryKana => $composableBuilder(
      column: $table.primaryKana, builder: (column) => column);

  GeneratedColumn<String> get primaryRomaji => $composableBuilder(
      column: $table.primaryRomaji, builder: (column) => column);

  GeneratedColumn<String> get meaningPreview => $composableBuilder(
      column: $table.meaningPreview, builder: (column) => column);

  GeneratedColumn<String> get entryJson =>
      $composableBuilder(column: $table.entryJson, builder: (column) => column);

  GeneratedColumn<bool> get isCommon =>
      $composableBuilder(column: $table.isCommon, builder: (column) => column);

  GeneratedColumn<DateTime> get importedAt => $composableBuilder(
      column: $table.importedAt, builder: (column) => column);
}

class $$DictionaryJapaneseEntryTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DictionaryJapaneseEntryTableTable,
    DictionaryJapaneseEntryTableData,
    $$DictionaryJapaneseEntryTableTableFilterComposer,
    $$DictionaryJapaneseEntryTableTableOrderingComposer,
    $$DictionaryJapaneseEntryTableTableAnnotationComposer,
    $$DictionaryJapaneseEntryTableTableCreateCompanionBuilder,
    $$DictionaryJapaneseEntryTableTableUpdateCompanionBuilder,
    (
      DictionaryJapaneseEntryTableData,
      BaseReferences<_$AppDatabase, $DictionaryJapaneseEntryTableTable,
          DictionaryJapaneseEntryTableData>
    ),
    DictionaryJapaneseEntryTableData,
    PrefetchHooks Function()> {
  $$DictionaryJapaneseEntryTableTableTableManager(
      _$AppDatabase db, $DictionaryJapaneseEntryTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DictionaryJapaneseEntryTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$DictionaryJapaneseEntryTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DictionaryJapaneseEntryTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> entryId = const Value.absent(),
            Value<String?> primaryKanji = const Value.absent(),
            Value<String> primaryKana = const Value.absent(),
            Value<String> primaryRomaji = const Value.absent(),
            Value<String> meaningPreview = const Value.absent(),
            Value<String> entryJson = const Value.absent(),
            Value<bool> isCommon = const Value.absent(),
            Value<DateTime> importedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionaryJapaneseEntryTableCompanion(
            entryId: entryId,
            primaryKanji: primaryKanji,
            primaryKana: primaryKana,
            primaryRomaji: primaryRomaji,
            meaningPreview: meaningPreview,
            entryJson: entryJson,
            isCommon: isCommon,
            importedAt: importedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String entryId,
            Value<String?> primaryKanji = const Value.absent(),
            required String primaryKana,
            required String primaryRomaji,
            required String meaningPreview,
            required String entryJson,
            Value<bool> isCommon = const Value.absent(),
            Value<DateTime> importedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionaryJapaneseEntryTableCompanion.insert(
            entryId: entryId,
            primaryKanji: primaryKanji,
            primaryKana: primaryKana,
            primaryRomaji: primaryRomaji,
            meaningPreview: meaningPreview,
            entryJson: entryJson,
            isCommon: isCommon,
            importedAt: importedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DictionaryJapaneseEntryTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $DictionaryJapaneseEntryTableTable,
        DictionaryJapaneseEntryTableData,
        $$DictionaryJapaneseEntryTableTableFilterComposer,
        $$DictionaryJapaneseEntryTableTableOrderingComposer,
        $$DictionaryJapaneseEntryTableTableAnnotationComposer,
        $$DictionaryJapaneseEntryTableTableCreateCompanionBuilder,
        $$DictionaryJapaneseEntryTableTableUpdateCompanionBuilder,
        (
          DictionaryJapaneseEntryTableData,
          BaseReferences<_$AppDatabase, $DictionaryJapaneseEntryTableTable,
              DictionaryJapaneseEntryTableData>
        ),
        DictionaryJapaneseEntryTableData,
        PrefetchHooks Function()>;
typedef $$DictionaryFavoriteTableTableCreateCompanionBuilder
    = DictionaryFavoriteTableCompanion Function({
  required String id,
  required String entryKey,
  required String language,
  required String title,
  Value<String?> subtitle,
  required String entryJson,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$DictionaryFavoriteTableTableUpdateCompanionBuilder
    = DictionaryFavoriteTableCompanion Function({
  Value<String> id,
  Value<String> entryKey,
  Value<String> language,
  Value<String> title,
  Value<String?> subtitle,
  Value<String> entryJson,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$DictionaryFavoriteTableTableFilterComposer
    extends Composer<_$AppDatabase, $DictionaryFavoriteTableTable> {
  $$DictionaryFavoriteTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get entryKey => $composableBuilder(
      column: $table.entryKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get subtitle => $composableBuilder(
      column: $table.subtitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get entryJson => $composableBuilder(
      column: $table.entryJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$DictionaryFavoriteTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DictionaryFavoriteTableTable> {
  $$DictionaryFavoriteTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get entryKey => $composableBuilder(
      column: $table.entryKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get subtitle => $composableBuilder(
      column: $table.subtitle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get entryJson => $composableBuilder(
      column: $table.entryJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$DictionaryFavoriteTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DictionaryFavoriteTableTable> {
  $$DictionaryFavoriteTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get entryKey =>
      $composableBuilder(column: $table.entryKey, builder: (column) => column);

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<String> get entryJson =>
      $composableBuilder(column: $table.entryJson, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$DictionaryFavoriteTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DictionaryFavoriteTableTable,
    DictionaryFavoriteTableData,
    $$DictionaryFavoriteTableTableFilterComposer,
    $$DictionaryFavoriteTableTableOrderingComposer,
    $$DictionaryFavoriteTableTableAnnotationComposer,
    $$DictionaryFavoriteTableTableCreateCompanionBuilder,
    $$DictionaryFavoriteTableTableUpdateCompanionBuilder,
    (
      DictionaryFavoriteTableData,
      BaseReferences<_$AppDatabase, $DictionaryFavoriteTableTable,
          DictionaryFavoriteTableData>
    ),
    DictionaryFavoriteTableData,
    PrefetchHooks Function()> {
  $$DictionaryFavoriteTableTableTableManager(
      _$AppDatabase db, $DictionaryFavoriteTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DictionaryFavoriteTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$DictionaryFavoriteTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DictionaryFavoriteTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> entryKey = const Value.absent(),
            Value<String> language = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> subtitle = const Value.absent(),
            Value<String> entryJson = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionaryFavoriteTableCompanion(
            id: id,
            entryKey: entryKey,
            language: language,
            title: title,
            subtitle: subtitle,
            entryJson: entryJson,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String entryKey,
            required String language,
            required String title,
            Value<String?> subtitle = const Value.absent(),
            required String entryJson,
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionaryFavoriteTableCompanion.insert(
            id: id,
            entryKey: entryKey,
            language: language,
            title: title,
            subtitle: subtitle,
            entryJson: entryJson,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DictionaryFavoriteTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $DictionaryFavoriteTableTable,
        DictionaryFavoriteTableData,
        $$DictionaryFavoriteTableTableFilterComposer,
        $$DictionaryFavoriteTableTableOrderingComposer,
        $$DictionaryFavoriteTableTableAnnotationComposer,
        $$DictionaryFavoriteTableTableCreateCompanionBuilder,
        $$DictionaryFavoriteTableTableUpdateCompanionBuilder,
        (
          DictionaryFavoriteTableData,
          BaseReferences<_$AppDatabase, $DictionaryFavoriteTableTable,
              DictionaryFavoriteTableData>
        ),
        DictionaryFavoriteTableData,
        PrefetchHooks Function()>;
typedef $$DictionarySourceStateTableTableCreateCompanionBuilder
    = DictionarySourceStateTableCompanion Function({
  required String sourceKey,
  Value<bool> isReady,
  Value<int> entryCount,
  required DateTime updatedAt,
  Value<String?> errorMessage,
  Value<int> rowid,
});
typedef $$DictionarySourceStateTableTableUpdateCompanionBuilder
    = DictionarySourceStateTableCompanion Function({
  Value<String> sourceKey,
  Value<bool> isReady,
  Value<int> entryCount,
  Value<DateTime> updatedAt,
  Value<String?> errorMessage,
  Value<int> rowid,
});

class $$DictionarySourceStateTableTableFilterComposer
    extends Composer<_$AppDatabase, $DictionarySourceStateTableTable> {
  $$DictionarySourceStateTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get sourceKey => $composableBuilder(
      column: $table.sourceKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isReady => $composableBuilder(
      column: $table.isReady, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get entryCount => $composableBuilder(
      column: $table.entryCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => ColumnFilters(column));
}

class $$DictionarySourceStateTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DictionarySourceStateTableTable> {
  $$DictionarySourceStateTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get sourceKey => $composableBuilder(
      column: $table.sourceKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isReady => $composableBuilder(
      column: $table.isReady, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get entryCount => $composableBuilder(
      column: $table.entryCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage,
      builder: (column) => ColumnOrderings(column));
}

class $$DictionarySourceStateTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DictionarySourceStateTableTable> {
  $$DictionarySourceStateTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get sourceKey =>
      $composableBuilder(column: $table.sourceKey, builder: (column) => column);

  GeneratedColumn<bool> get isReady =>
      $composableBuilder(column: $table.isReady, builder: (column) => column);

  GeneratedColumn<int> get entryCount => $composableBuilder(
      column: $table.entryCount, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => column);
}

class $$DictionarySourceStateTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DictionarySourceStateTableTable,
    DictionarySourceStateTableData,
    $$DictionarySourceStateTableTableFilterComposer,
    $$DictionarySourceStateTableTableOrderingComposer,
    $$DictionarySourceStateTableTableAnnotationComposer,
    $$DictionarySourceStateTableTableCreateCompanionBuilder,
    $$DictionarySourceStateTableTableUpdateCompanionBuilder,
    (
      DictionarySourceStateTableData,
      BaseReferences<_$AppDatabase, $DictionarySourceStateTableTable,
          DictionarySourceStateTableData>
    ),
    DictionarySourceStateTableData,
    PrefetchHooks Function()> {
  $$DictionarySourceStateTableTableTableManager(
      _$AppDatabase db, $DictionarySourceStateTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DictionarySourceStateTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$DictionarySourceStateTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DictionarySourceStateTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> sourceKey = const Value.absent(),
            Value<bool> isReady = const Value.absent(),
            Value<int> entryCount = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionarySourceStateTableCompanion(
            sourceKey: sourceKey,
            isReady: isReady,
            entryCount: entryCount,
            updatedAt: updatedAt,
            errorMessage: errorMessage,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String sourceKey,
            Value<bool> isReady = const Value.absent(),
            Value<int> entryCount = const Value.absent(),
            required DateTime updatedAt,
            Value<String?> errorMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DictionarySourceStateTableCompanion.insert(
            sourceKey: sourceKey,
            isReady: isReady,
            entryCount: entryCount,
            updatedAt: updatedAt,
            errorMessage: errorMessage,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DictionarySourceStateTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $DictionarySourceStateTableTable,
        DictionarySourceStateTableData,
        $$DictionarySourceStateTableTableFilterComposer,
        $$DictionarySourceStateTableTableOrderingComposer,
        $$DictionarySourceStateTableTableAnnotationComposer,
        $$DictionarySourceStateTableTableCreateCompanionBuilder,
        $$DictionarySourceStateTableTableUpdateCompanionBuilder,
        (
          DictionarySourceStateTableData,
          BaseReferences<_$AppDatabase, $DictionarySourceStateTableTable,
              DictionarySourceStateTableData>
        ),
        DictionarySourceStateTableData,
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
  $$LessonAttemptTableTableTableManager get lessonAttemptTable =>
      $$LessonAttemptTableTableTableManager(_db, _db.lessonAttemptTable);
  $$PracticeDeckTableTableTableManager get practiceDeckTable =>
      $$PracticeDeckTableTableTableManager(_db, _db.practiceDeckTable);
  $$PracticeCardTableTableTableManager get practiceCardTable =>
      $$PracticeCardTableTableTableManager(_db, _db.practiceCardTable);
  $$PracticeReviewTableTableTableManager get practiceReviewTable =>
      $$PracticeReviewTableTableTableManager(_db, _db.practiceReviewTable);
  $$PracticeMediaTableTableTableManager get practiceMediaTable =>
      $$PracticeMediaTableTableTableManager(_db, _db.practiceMediaTable);
  $$PracticeCardMediaTableTableTableManager get practiceCardMediaTable =>
      $$PracticeCardMediaTableTableTableManager(
          _db, _db.practiceCardMediaTable);
  $$DictionaryCacheTableTableTableManager get dictionaryCacheTable =>
      $$DictionaryCacheTableTableTableManager(_db, _db.dictionaryCacheTable);
  $$DictionaryJapaneseEntryTableTableTableManager
      get dictionaryJapaneseEntryTable =>
          $$DictionaryJapaneseEntryTableTableTableManager(
              _db, _db.dictionaryJapaneseEntryTable);
  $$DictionaryFavoriteTableTableTableManager get dictionaryFavoriteTable =>
      $$DictionaryFavoriteTableTableTableManager(
          _db, _db.dictionaryFavoriteTable);
  $$DictionarySourceStateTableTableTableManager
      get dictionarySourceStateTable =>
          $$DictionarySourceStateTableTableTableManager(
              _db, _db.dictionarySourceStateTable);
  $$AnswerHistoryLocalTableTableTableManager get answerHistoryLocalTable =>
      $$AnswerHistoryLocalTableTableTableManager(
          _db, _db.answerHistoryLocalTable);
}
