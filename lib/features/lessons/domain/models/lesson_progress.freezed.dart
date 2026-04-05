// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonProgress _$LessonProgressFromJson(Map<String, dynamic> json) {
  return _LessonProgress.fromJson(json);
}

/// @nodoc
mixin _$LessonProgress {
  String get lessonId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get currentBlockIndex => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  int get answeredBlocks => throw _privateConstructorUsedError;
  int get attemptCount => throw _privateConstructorUsedError;
  int get incorrectAnswers => throw _privateConstructorUsedError;
  int get earnedXp => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String? get lastBlockId => throw _privateConstructorUsedError;
  List<String> get completedBlockIds => throw _privateConstructorUsedError;
  DateTime? get lastAttemptAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this LessonProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonProgressCopyWith<LessonProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonProgressCopyWith<$Res> {
  factory $LessonProgressCopyWith(
          LessonProgress value, $Res Function(LessonProgress) then) =
      _$LessonProgressCopyWithImpl<$Res, LessonProgress>;
  @useResult
  $Res call(
      {String lessonId,
      String userId,
      int currentBlockIndex,
      int correctAnswers,
      int answeredBlocks,
      int attemptCount,
      int incorrectAnswers,
      int earnedXp,
      bool isCompleted,
      String? lastBlockId,
      List<String> completedBlockIds,
      DateTime? lastAttemptAt,
      DateTime? updatedAt,
      DateTime? completedAt});
}

/// @nodoc
class _$LessonProgressCopyWithImpl<$Res, $Val extends LessonProgress>
    implements $LessonProgressCopyWith<$Res> {
  _$LessonProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? userId = null,
    Object? currentBlockIndex = null,
    Object? correctAnswers = null,
    Object? answeredBlocks = null,
    Object? attemptCount = null,
    Object? incorrectAnswers = null,
    Object? earnedXp = null,
    Object? isCompleted = null,
    Object? lastBlockId = freezed,
    Object? completedBlockIds = null,
    Object? lastAttemptAt = freezed,
    Object? updatedAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      currentBlockIndex: null == currentBlockIndex
          ? _value.currentBlockIndex
          : currentBlockIndex // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      answeredBlocks: null == answeredBlocks
          ? _value.answeredBlocks
          : answeredBlocks // ignore: cast_nullable_to_non_nullable
              as int,
      attemptCount: null == attemptCount
          ? _value.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      lastBlockId: freezed == lastBlockId
          ? _value.lastBlockId
          : lastBlockId // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBlockIds: null == completedBlockIds
          ? _value.completedBlockIds
          : completedBlockIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastAttemptAt: freezed == lastAttemptAt
          ? _value.lastAttemptAt
          : lastAttemptAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonProgressImplCopyWith<$Res>
    implements $LessonProgressCopyWith<$Res> {
  factory _$$LessonProgressImplCopyWith(_$LessonProgressImpl value,
          $Res Function(_$LessonProgressImpl) then) =
      __$$LessonProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lessonId,
      String userId,
      int currentBlockIndex,
      int correctAnswers,
      int answeredBlocks,
      int attemptCount,
      int incorrectAnswers,
      int earnedXp,
      bool isCompleted,
      String? lastBlockId,
      List<String> completedBlockIds,
      DateTime? lastAttemptAt,
      DateTime? updatedAt,
      DateTime? completedAt});
}

/// @nodoc
class __$$LessonProgressImplCopyWithImpl<$Res>
    extends _$LessonProgressCopyWithImpl<$Res, _$LessonProgressImpl>
    implements _$$LessonProgressImplCopyWith<$Res> {
  __$$LessonProgressImplCopyWithImpl(
      _$LessonProgressImpl _value, $Res Function(_$LessonProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? userId = null,
    Object? currentBlockIndex = null,
    Object? correctAnswers = null,
    Object? answeredBlocks = null,
    Object? attemptCount = null,
    Object? incorrectAnswers = null,
    Object? earnedXp = null,
    Object? isCompleted = null,
    Object? lastBlockId = freezed,
    Object? completedBlockIds = null,
    Object? lastAttemptAt = freezed,
    Object? updatedAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$LessonProgressImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      currentBlockIndex: null == currentBlockIndex
          ? _value.currentBlockIndex
          : currentBlockIndex // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      answeredBlocks: null == answeredBlocks
          ? _value.answeredBlocks
          : answeredBlocks // ignore: cast_nullable_to_non_nullable
              as int,
      attemptCount: null == attemptCount
          ? _value.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      lastBlockId: freezed == lastBlockId
          ? _value.lastBlockId
          : lastBlockId // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBlockIds: null == completedBlockIds
          ? _value._completedBlockIds
          : completedBlockIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastAttemptAt: freezed == lastAttemptAt
          ? _value.lastAttemptAt
          : lastAttemptAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonProgressImpl extends _LessonProgress {
  const _$LessonProgressImpl(
      {required this.lessonId,
      required this.userId,
      this.currentBlockIndex = 0,
      this.correctAnswers = 0,
      this.answeredBlocks = 0,
      this.attemptCount = 0,
      this.incorrectAnswers = 0,
      this.earnedXp = 0,
      this.isCompleted = false,
      this.lastBlockId,
      final List<String> completedBlockIds = const <String>[],
      this.lastAttemptAt,
      this.updatedAt,
      this.completedAt})
      : _completedBlockIds = completedBlockIds,
        super._();

  factory _$LessonProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonProgressImplFromJson(json);

  @override
  final String lessonId;
  @override
  final String userId;
  @override
  @JsonKey()
  final int currentBlockIndex;
  @override
  @JsonKey()
  final int correctAnswers;
  @override
  @JsonKey()
  final int answeredBlocks;
  @override
  @JsonKey()
  final int attemptCount;
  @override
  @JsonKey()
  final int incorrectAnswers;
  @override
  @JsonKey()
  final int earnedXp;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final String? lastBlockId;
  final List<String> _completedBlockIds;
  @override
  @JsonKey()
  List<String> get completedBlockIds {
    if (_completedBlockIds is EqualUnmodifiableListView)
      return _completedBlockIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedBlockIds);
  }

  @override
  final DateTime? lastAttemptAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'LessonProgress(lessonId: $lessonId, userId: $userId, currentBlockIndex: $currentBlockIndex, correctAnswers: $correctAnswers, answeredBlocks: $answeredBlocks, attemptCount: $attemptCount, incorrectAnswers: $incorrectAnswers, earnedXp: $earnedXp, isCompleted: $isCompleted, lastBlockId: $lastBlockId, completedBlockIds: $completedBlockIds, lastAttemptAt: $lastAttemptAt, updatedAt: $updatedAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonProgressImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.currentBlockIndex, currentBlockIndex) ||
                other.currentBlockIndex == currentBlockIndex) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.answeredBlocks, answeredBlocks) ||
                other.answeredBlocks == answeredBlocks) &&
            (identical(other.attemptCount, attemptCount) ||
                other.attemptCount == attemptCount) &&
            (identical(other.incorrectAnswers, incorrectAnswers) ||
                other.incorrectAnswers == incorrectAnswers) &&
            (identical(other.earnedXp, earnedXp) ||
                other.earnedXp == earnedXp) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.lastBlockId, lastBlockId) ||
                other.lastBlockId == lastBlockId) &&
            const DeepCollectionEquality()
                .equals(other._completedBlockIds, _completedBlockIds) &&
            (identical(other.lastAttemptAt, lastAttemptAt) ||
                other.lastAttemptAt == lastAttemptAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      userId,
      currentBlockIndex,
      correctAnswers,
      answeredBlocks,
      attemptCount,
      incorrectAnswers,
      earnedXp,
      isCompleted,
      lastBlockId,
      const DeepCollectionEquality().hash(_completedBlockIds),
      lastAttemptAt,
      updatedAt,
      completedAt);

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonProgressImplCopyWith<_$LessonProgressImpl> get copyWith =>
      __$$LessonProgressImplCopyWithImpl<_$LessonProgressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonProgressImplToJson(
      this,
    );
  }
}

abstract class _LessonProgress extends LessonProgress {
  const factory _LessonProgress(
      {required final String lessonId,
      required final String userId,
      final int currentBlockIndex,
      final int correctAnswers,
      final int answeredBlocks,
      final int attemptCount,
      final int incorrectAnswers,
      final int earnedXp,
      final bool isCompleted,
      final String? lastBlockId,
      final List<String> completedBlockIds,
      final DateTime? lastAttemptAt,
      final DateTime? updatedAt,
      final DateTime? completedAt}) = _$LessonProgressImpl;
  const _LessonProgress._() : super._();

  factory _LessonProgress.fromJson(Map<String, dynamic> json) =
      _$LessonProgressImpl.fromJson;

  @override
  String get lessonId;
  @override
  String get userId;
  @override
  int get currentBlockIndex;
  @override
  int get correctAnswers;
  @override
  int get answeredBlocks;
  @override
  int get attemptCount;
  @override
  int get incorrectAnswers;
  @override
  int get earnedXp;
  @override
  bool get isCompleted;
  @override
  String? get lastBlockId;
  @override
  List<String> get completedBlockIds;
  @override
  DateTime? get lastAttemptAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get completedAt;

  /// Create a copy of LessonProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonProgressImplCopyWith<_$LessonProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonBlockResult _$LessonBlockResultFromJson(Map<String, dynamic> json) {
  return _LessonBlockResult.fromJson(json);
}

/// @nodoc
mixin _$LessonBlockResult {
  String get lessonId => throw _privateConstructorUsedError;
  String get blockId => throw _privateConstructorUsedError;
  String get blockType => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  int get earnedXp => throw _privateConstructorUsedError;
  int get attemptNumber => throw _privateConstructorUsedError;
  int? get timeSpentSeconds => throw _privateConstructorUsedError;
  String? get submittedAnswer => throw _privateConstructorUsedError;
  String? get correctAnswerLabel => throw _privateConstructorUsedError;
  String? get feedbackMessage => throw _privateConstructorUsedError;
  bool get shouldRetry => throw _privateConstructorUsedError;
  List<String> get selectedOptionIds => throw _privateConstructorUsedError;

  /// Serializes this LessonBlockResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonBlockResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonBlockResultCopyWith<LessonBlockResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonBlockResultCopyWith<$Res> {
  factory $LessonBlockResultCopyWith(
          LessonBlockResult value, $Res Function(LessonBlockResult) then) =
      _$LessonBlockResultCopyWithImpl<$Res, LessonBlockResult>;
  @useResult
  $Res call(
      {String lessonId,
      String blockId,
      String blockType,
      bool isCorrect,
      int earnedXp,
      int attemptNumber,
      int? timeSpentSeconds,
      String? submittedAnswer,
      String? correctAnswerLabel,
      String? feedbackMessage,
      bool shouldRetry,
      List<String> selectedOptionIds});
}

/// @nodoc
class _$LessonBlockResultCopyWithImpl<$Res, $Val extends LessonBlockResult>
    implements $LessonBlockResultCopyWith<$Res> {
  _$LessonBlockResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonBlockResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? blockId = null,
    Object? blockType = null,
    Object? isCorrect = null,
    Object? earnedXp = null,
    Object? attemptNumber = null,
    Object? timeSpentSeconds = freezed,
    Object? submittedAnswer = freezed,
    Object? correctAnswerLabel = freezed,
    Object? feedbackMessage = freezed,
    Object? shouldRetry = null,
    Object? selectedOptionIds = null,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
      blockType: null == blockType
          ? _value.blockType
          : blockType // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpentSeconds: freezed == timeSpentSeconds
          ? _value.timeSpentSeconds
          : timeSpentSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedAnswer: freezed == submittedAnswer
          ? _value.submittedAnswer
          : submittedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswerLabel: freezed == correctAnswerLabel
          ? _value.correctAnswerLabel
          : correctAnswerLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackMessage: freezed == feedbackMessage
          ? _value.feedbackMessage
          : feedbackMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldRetry: null == shouldRetry
          ? _value.shouldRetry
          : shouldRetry // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOptionIds: null == selectedOptionIds
          ? _value.selectedOptionIds
          : selectedOptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonBlockResultImplCopyWith<$Res>
    implements $LessonBlockResultCopyWith<$Res> {
  factory _$$LessonBlockResultImplCopyWith(_$LessonBlockResultImpl value,
          $Res Function(_$LessonBlockResultImpl) then) =
      __$$LessonBlockResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lessonId,
      String blockId,
      String blockType,
      bool isCorrect,
      int earnedXp,
      int attemptNumber,
      int? timeSpentSeconds,
      String? submittedAnswer,
      String? correctAnswerLabel,
      String? feedbackMessage,
      bool shouldRetry,
      List<String> selectedOptionIds});
}

/// @nodoc
class __$$LessonBlockResultImplCopyWithImpl<$Res>
    extends _$LessonBlockResultCopyWithImpl<$Res, _$LessonBlockResultImpl>
    implements _$$LessonBlockResultImplCopyWith<$Res> {
  __$$LessonBlockResultImplCopyWithImpl(_$LessonBlockResultImpl _value,
      $Res Function(_$LessonBlockResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlockResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? blockId = null,
    Object? blockType = null,
    Object? isCorrect = null,
    Object? earnedXp = null,
    Object? attemptNumber = null,
    Object? timeSpentSeconds = freezed,
    Object? submittedAnswer = freezed,
    Object? correctAnswerLabel = freezed,
    Object? feedbackMessage = freezed,
    Object? shouldRetry = null,
    Object? selectedOptionIds = null,
  }) {
    return _then(_$LessonBlockResultImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
      blockType: null == blockType
          ? _value.blockType
          : blockType // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpentSeconds: freezed == timeSpentSeconds
          ? _value.timeSpentSeconds
          : timeSpentSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedAnswer: freezed == submittedAnswer
          ? _value.submittedAnswer
          : submittedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswerLabel: freezed == correctAnswerLabel
          ? _value.correctAnswerLabel
          : correctAnswerLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackMessage: freezed == feedbackMessage
          ? _value.feedbackMessage
          : feedbackMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldRetry: null == shouldRetry
          ? _value.shouldRetry
          : shouldRetry // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOptionIds: null == selectedOptionIds
          ? _value._selectedOptionIds
          : selectedOptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonBlockResultImpl implements _LessonBlockResult {
  const _$LessonBlockResultImpl(
      {required this.lessonId,
      required this.blockId,
      required this.blockType,
      required this.isCorrect,
      this.earnedXp = 0,
      this.attemptNumber = 1,
      this.timeSpentSeconds,
      this.submittedAnswer,
      this.correctAnswerLabel,
      this.feedbackMessage,
      this.shouldRetry = false,
      final List<String> selectedOptionIds = const <String>[]})
      : _selectedOptionIds = selectedOptionIds;

  factory _$LessonBlockResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonBlockResultImplFromJson(json);

  @override
  final String lessonId;
  @override
  final String blockId;
  @override
  final String blockType;
  @override
  final bool isCorrect;
  @override
  @JsonKey()
  final int earnedXp;
  @override
  @JsonKey()
  final int attemptNumber;
  @override
  final int? timeSpentSeconds;
  @override
  final String? submittedAnswer;
  @override
  final String? correctAnswerLabel;
  @override
  final String? feedbackMessage;
  @override
  @JsonKey()
  final bool shouldRetry;
  final List<String> _selectedOptionIds;
  @override
  @JsonKey()
  List<String> get selectedOptionIds {
    if (_selectedOptionIds is EqualUnmodifiableListView)
      return _selectedOptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptionIds);
  }

  @override
  String toString() {
    return 'LessonBlockResult(lessonId: $lessonId, blockId: $blockId, blockType: $blockType, isCorrect: $isCorrect, earnedXp: $earnedXp, attemptNumber: $attemptNumber, timeSpentSeconds: $timeSpentSeconds, submittedAnswer: $submittedAnswer, correctAnswerLabel: $correctAnswerLabel, feedbackMessage: $feedbackMessage, shouldRetry: $shouldRetry, selectedOptionIds: $selectedOptionIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonBlockResultImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.blockId, blockId) || other.blockId == blockId) &&
            (identical(other.blockType, blockType) ||
                other.blockType == blockType) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.earnedXp, earnedXp) ||
                other.earnedXp == earnedXp) &&
            (identical(other.attemptNumber, attemptNumber) ||
                other.attemptNumber == attemptNumber) &&
            (identical(other.timeSpentSeconds, timeSpentSeconds) ||
                other.timeSpentSeconds == timeSpentSeconds) &&
            (identical(other.submittedAnswer, submittedAnswer) ||
                other.submittedAnswer == submittedAnswer) &&
            (identical(other.correctAnswerLabel, correctAnswerLabel) ||
                other.correctAnswerLabel == correctAnswerLabel) &&
            (identical(other.feedbackMessage, feedbackMessage) ||
                other.feedbackMessage == feedbackMessage) &&
            (identical(other.shouldRetry, shouldRetry) ||
                other.shouldRetry == shouldRetry) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptionIds, _selectedOptionIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      blockId,
      blockType,
      isCorrect,
      earnedXp,
      attemptNumber,
      timeSpentSeconds,
      submittedAnswer,
      correctAnswerLabel,
      feedbackMessage,
      shouldRetry,
      const DeepCollectionEquality().hash(_selectedOptionIds));

  /// Create a copy of LessonBlockResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonBlockResultImplCopyWith<_$LessonBlockResultImpl> get copyWith =>
      __$$LessonBlockResultImplCopyWithImpl<_$LessonBlockResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonBlockResultImplToJson(
      this,
    );
  }
}

abstract class _LessonBlockResult implements LessonBlockResult {
  const factory _LessonBlockResult(
      {required final String lessonId,
      required final String blockId,
      required final String blockType,
      required final bool isCorrect,
      final int earnedXp,
      final int attemptNumber,
      final int? timeSpentSeconds,
      final String? submittedAnswer,
      final String? correctAnswerLabel,
      final String? feedbackMessage,
      final bool shouldRetry,
      final List<String> selectedOptionIds}) = _$LessonBlockResultImpl;

  factory _LessonBlockResult.fromJson(Map<String, dynamic> json) =
      _$LessonBlockResultImpl.fromJson;

  @override
  String get lessonId;
  @override
  String get blockId;
  @override
  String get blockType;
  @override
  bool get isCorrect;
  @override
  int get earnedXp;
  @override
  int get attemptNumber;
  @override
  int? get timeSpentSeconds;
  @override
  String? get submittedAnswer;
  @override
  String? get correctAnswerLabel;
  @override
  String? get feedbackMessage;
  @override
  bool get shouldRetry;
  @override
  List<String> get selectedOptionIds;

  /// Create a copy of LessonBlockResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonBlockResultImplCopyWith<_$LessonBlockResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonSummary _$LessonSummaryFromJson(Map<String, dynamic> json) {
  return _LessonSummary.fromJson(json);
}

/// @nodoc
mixin _$LessonSummary {
  String get lessonId => throw _privateConstructorUsedError;
  int get totalBlocks => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  int get earnedXp => throw _privateConstructorUsedError;
  double get accuracy => throw _privateConstructorUsedError;
  int get totalAttempts => throw _privateConstructorUsedError;
  int get levelBefore => throw _privateConstructorUsedError;
  int get levelAfter => throw _privateConstructorUsedError;
  int get totalXpAfter => throw _privateConstructorUsedError;
  String? get nextLessonId => throw _privateConstructorUsedError;

  /// Serializes this LessonSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonSummaryCopyWith<LessonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonSummaryCopyWith<$Res> {
  factory $LessonSummaryCopyWith(
          LessonSummary value, $Res Function(LessonSummary) then) =
      _$LessonSummaryCopyWithImpl<$Res, LessonSummary>;
  @useResult
  $Res call(
      {String lessonId,
      int totalBlocks,
      int correctAnswers,
      int earnedXp,
      double accuracy,
      int totalAttempts,
      int levelBefore,
      int levelAfter,
      int totalXpAfter,
      String? nextLessonId});
}

/// @nodoc
class _$LessonSummaryCopyWithImpl<$Res, $Val extends LessonSummary>
    implements $LessonSummaryCopyWith<$Res> {
  _$LessonSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? totalBlocks = null,
    Object? correctAnswers = null,
    Object? earnedXp = null,
    Object? accuracy = null,
    Object? totalAttempts = null,
    Object? levelBefore = null,
    Object? levelAfter = null,
    Object? totalXpAfter = null,
    Object? nextLessonId = freezed,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      totalBlocks: null == totalBlocks
          ? _value.totalBlocks
          : totalBlocks // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      totalAttempts: null == totalAttempts
          ? _value.totalAttempts
          : totalAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      levelBefore: null == levelBefore
          ? _value.levelBefore
          : levelBefore // ignore: cast_nullable_to_non_nullable
              as int,
      levelAfter: null == levelAfter
          ? _value.levelAfter
          : levelAfter // ignore: cast_nullable_to_non_nullable
              as int,
      totalXpAfter: null == totalXpAfter
          ? _value.totalXpAfter
          : totalXpAfter // ignore: cast_nullable_to_non_nullable
              as int,
      nextLessonId: freezed == nextLessonId
          ? _value.nextLessonId
          : nextLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonSummaryImplCopyWith<$Res>
    implements $LessonSummaryCopyWith<$Res> {
  factory _$$LessonSummaryImplCopyWith(
          _$LessonSummaryImpl value, $Res Function(_$LessonSummaryImpl) then) =
      __$$LessonSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lessonId,
      int totalBlocks,
      int correctAnswers,
      int earnedXp,
      double accuracy,
      int totalAttempts,
      int levelBefore,
      int levelAfter,
      int totalXpAfter,
      String? nextLessonId});
}

/// @nodoc
class __$$LessonSummaryImplCopyWithImpl<$Res>
    extends _$LessonSummaryCopyWithImpl<$Res, _$LessonSummaryImpl>
    implements _$$LessonSummaryImplCopyWith<$Res> {
  __$$LessonSummaryImplCopyWithImpl(
      _$LessonSummaryImpl _value, $Res Function(_$LessonSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? totalBlocks = null,
    Object? correctAnswers = null,
    Object? earnedXp = null,
    Object? accuracy = null,
    Object? totalAttempts = null,
    Object? levelBefore = null,
    Object? levelAfter = null,
    Object? totalXpAfter = null,
    Object? nextLessonId = freezed,
  }) {
    return _then(_$LessonSummaryImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      totalBlocks: null == totalBlocks
          ? _value.totalBlocks
          : totalBlocks // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      totalAttempts: null == totalAttempts
          ? _value.totalAttempts
          : totalAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      levelBefore: null == levelBefore
          ? _value.levelBefore
          : levelBefore // ignore: cast_nullable_to_non_nullable
              as int,
      levelAfter: null == levelAfter
          ? _value.levelAfter
          : levelAfter // ignore: cast_nullable_to_non_nullable
              as int,
      totalXpAfter: null == totalXpAfter
          ? _value.totalXpAfter
          : totalXpAfter // ignore: cast_nullable_to_non_nullable
              as int,
      nextLessonId: freezed == nextLessonId
          ? _value.nextLessonId
          : nextLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonSummaryImpl extends _LessonSummary {
  const _$LessonSummaryImpl(
      {required this.lessonId,
      required this.totalBlocks,
      required this.correctAnswers,
      required this.earnedXp,
      required this.accuracy,
      this.totalAttempts = 0,
      this.levelBefore = 1,
      this.levelAfter = 1,
      this.totalXpAfter = 0,
      this.nextLessonId})
      : super._();

  factory _$LessonSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonSummaryImplFromJson(json);

  @override
  final String lessonId;
  @override
  final int totalBlocks;
  @override
  final int correctAnswers;
  @override
  final int earnedXp;
  @override
  final double accuracy;
  @override
  @JsonKey()
  final int totalAttempts;
  @override
  @JsonKey()
  final int levelBefore;
  @override
  @JsonKey()
  final int levelAfter;
  @override
  @JsonKey()
  final int totalXpAfter;
  @override
  final String? nextLessonId;

  @override
  String toString() {
    return 'LessonSummary(lessonId: $lessonId, totalBlocks: $totalBlocks, correctAnswers: $correctAnswers, earnedXp: $earnedXp, accuracy: $accuracy, totalAttempts: $totalAttempts, levelBefore: $levelBefore, levelAfter: $levelAfter, totalXpAfter: $totalXpAfter, nextLessonId: $nextLessonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonSummaryImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.totalBlocks, totalBlocks) ||
                other.totalBlocks == totalBlocks) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.earnedXp, earnedXp) ||
                other.earnedXp == earnedXp) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.totalAttempts, totalAttempts) ||
                other.totalAttempts == totalAttempts) &&
            (identical(other.levelBefore, levelBefore) ||
                other.levelBefore == levelBefore) &&
            (identical(other.levelAfter, levelAfter) ||
                other.levelAfter == levelAfter) &&
            (identical(other.totalXpAfter, totalXpAfter) ||
                other.totalXpAfter == totalXpAfter) &&
            (identical(other.nextLessonId, nextLessonId) ||
                other.nextLessonId == nextLessonId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      totalBlocks,
      correctAnswers,
      earnedXp,
      accuracy,
      totalAttempts,
      levelBefore,
      levelAfter,
      totalXpAfter,
      nextLessonId);

  /// Create a copy of LessonSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonSummaryImplCopyWith<_$LessonSummaryImpl> get copyWith =>
      __$$LessonSummaryImplCopyWithImpl<_$LessonSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonSummaryImplToJson(
      this,
    );
  }
}

abstract class _LessonSummary extends LessonSummary {
  const factory _LessonSummary(
      {required final String lessonId,
      required final int totalBlocks,
      required final int correctAnswers,
      required final int earnedXp,
      required final double accuracy,
      final int totalAttempts,
      final int levelBefore,
      final int levelAfter,
      final int totalXpAfter,
      final String? nextLessonId}) = _$LessonSummaryImpl;
  const _LessonSummary._() : super._();

  factory _LessonSummary.fromJson(Map<String, dynamic> json) =
      _$LessonSummaryImpl.fromJson;

  @override
  String get lessonId;
  @override
  int get totalBlocks;
  @override
  int get correctAnswers;
  @override
  int get earnedXp;
  @override
  double get accuracy;
  @override
  int get totalAttempts;
  @override
  int get levelBefore;
  @override
  int get levelAfter;
  @override
  int get totalXpAfter;
  @override
  String? get nextLessonId;

  /// Create a copy of LessonSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonSummaryImplCopyWith<_$LessonSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStats _$UserStatsFromJson(Map<String, dynamic> json) {
  return _UserStats.fromJson(json);
}

/// @nodoc
mixin _$UserStats {
  String get userId => throw _privateConstructorUsedError;
  int get totalXp => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get totalLessonsCompleted => throw _privateConstructorUsedError;
  int get totalBlocksAnswered => throw _privateConstructorUsedError;
  int get totalCorrectBlocks => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatsCopyWith<UserStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatsCopyWith<$Res> {
  factory $UserStatsCopyWith(UserStats value, $Res Function(UserStats) then) =
      _$UserStatsCopyWithImpl<$Res, UserStats>;
  @useResult
  $Res call(
      {String userId,
      int totalXp,
      int level,
      int totalLessonsCompleted,
      int totalBlocksAnswered,
      int totalCorrectBlocks,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserStatsCopyWithImpl<$Res, $Val extends UserStats>
    implements $UserStatsCopyWith<$Res> {
  _$UserStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? totalXp = null,
    Object? level = null,
    Object? totalLessonsCompleted = null,
    Object? totalBlocksAnswered = null,
    Object? totalCorrectBlocks = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalXp: null == totalXp
          ? _value.totalXp
          : totalXp // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      totalLessonsCompleted: null == totalLessonsCompleted
          ? _value.totalLessonsCompleted
          : totalLessonsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      totalBlocksAnswered: null == totalBlocksAnswered
          ? _value.totalBlocksAnswered
          : totalBlocksAnswered // ignore: cast_nullable_to_non_nullable
              as int,
      totalCorrectBlocks: null == totalCorrectBlocks
          ? _value.totalCorrectBlocks
          : totalCorrectBlocks // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatsImplCopyWith<$Res>
    implements $UserStatsCopyWith<$Res> {
  factory _$$UserStatsImplCopyWith(
          _$UserStatsImpl value, $Res Function(_$UserStatsImpl) then) =
      __$$UserStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int totalXp,
      int level,
      int totalLessonsCompleted,
      int totalBlocksAnswered,
      int totalCorrectBlocks,
      DateTime? updatedAt});
}

/// @nodoc
class __$$UserStatsImplCopyWithImpl<$Res>
    extends _$UserStatsCopyWithImpl<$Res, _$UserStatsImpl>
    implements _$$UserStatsImplCopyWith<$Res> {
  __$$UserStatsImplCopyWithImpl(
      _$UserStatsImpl _value, $Res Function(_$UserStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? totalXp = null,
    Object? level = null,
    Object? totalLessonsCompleted = null,
    Object? totalBlocksAnswered = null,
    Object? totalCorrectBlocks = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserStatsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      totalXp: null == totalXp
          ? _value.totalXp
          : totalXp // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      totalLessonsCompleted: null == totalLessonsCompleted
          ? _value.totalLessonsCompleted
          : totalLessonsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      totalBlocksAnswered: null == totalBlocksAnswered
          ? _value.totalBlocksAnswered
          : totalBlocksAnswered // ignore: cast_nullable_to_non_nullable
              as int,
      totalCorrectBlocks: null == totalCorrectBlocks
          ? _value.totalCorrectBlocks
          : totalCorrectBlocks // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatsImpl implements _UserStats {
  const _$UserStatsImpl(
      {required this.userId,
      this.totalXp = 0,
      this.level = 1,
      this.totalLessonsCompleted = 0,
      this.totalBlocksAnswered = 0,
      this.totalCorrectBlocks = 0,
      this.updatedAt});

  factory _$UserStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatsImplFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey()
  final int totalXp;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final int totalLessonsCompleted;
  @override
  @JsonKey()
  final int totalBlocksAnswered;
  @override
  @JsonKey()
  final int totalCorrectBlocks;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserStats(userId: $userId, totalXp: $totalXp, level: $level, totalLessonsCompleted: $totalLessonsCompleted, totalBlocksAnswered: $totalBlocksAnswered, totalCorrectBlocks: $totalCorrectBlocks, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalXp, totalXp) || other.totalXp == totalXp) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.totalLessonsCompleted, totalLessonsCompleted) ||
                other.totalLessonsCompleted == totalLessonsCompleted) &&
            (identical(other.totalBlocksAnswered, totalBlocksAnswered) ||
                other.totalBlocksAnswered == totalBlocksAnswered) &&
            (identical(other.totalCorrectBlocks, totalCorrectBlocks) ||
                other.totalCorrectBlocks == totalCorrectBlocks) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      totalXp,
      level,
      totalLessonsCompleted,
      totalBlocksAnswered,
      totalCorrectBlocks,
      updatedAt);

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      __$$UserStatsImplCopyWithImpl<_$UserStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatsImplToJson(
      this,
    );
  }
}

abstract class _UserStats implements UserStats {
  const factory _UserStats(
      {required final String userId,
      final int totalXp,
      final int level,
      final int totalLessonsCompleted,
      final int totalBlocksAnswered,
      final int totalCorrectBlocks,
      final DateTime? updatedAt}) = _$UserStatsImpl;

  factory _UserStats.fromJson(Map<String, dynamic> json) =
      _$UserStatsImpl.fromJson;

  @override
  String get userId;
  @override
  int get totalXp;
  @override
  int get level;
  @override
  int get totalLessonsCompleted;
  @override
  int get totalBlocksAnswered;
  @override
  int get totalCorrectBlocks;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressSyncPayload _$ProgressSyncPayloadFromJson(Map<String, dynamic> json) {
  return _ProgressSyncPayload.fromJson(json);
}

/// @nodoc
mixin _$ProgressSyncPayload {
  LessonProgress get progress => throw _privateConstructorUsedError;
  UserStats get stats => throw _privateConstructorUsedError;
  LessonBlockResult get result => throw _privateConstructorUsedError;

  /// Serializes this ProgressSyncPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressSyncPayloadCopyWith<ProgressSyncPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressSyncPayloadCopyWith<$Res> {
  factory $ProgressSyncPayloadCopyWith(
          ProgressSyncPayload value, $Res Function(ProgressSyncPayload) then) =
      _$ProgressSyncPayloadCopyWithImpl<$Res, ProgressSyncPayload>;
  @useResult
  $Res call(
      {LessonProgress progress, UserStats stats, LessonBlockResult result});

  $LessonProgressCopyWith<$Res> get progress;
  $UserStatsCopyWith<$Res> get stats;
  $LessonBlockResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ProgressSyncPayloadCopyWithImpl<$Res, $Val extends ProgressSyncPayload>
    implements $ProgressSyncPayloadCopyWith<$Res> {
  _$ProgressSyncPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? stats = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as LessonProgress,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStats,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LessonBlockResult,
    ) as $Val);
  }

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonProgressCopyWith<$Res> get progress {
    return $LessonProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStatsCopyWith<$Res> get stats {
    return $UserStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonBlockResultCopyWith<$Res> get result {
    return $LessonBlockResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgressSyncPayloadImplCopyWith<$Res>
    implements $ProgressSyncPayloadCopyWith<$Res> {
  factory _$$ProgressSyncPayloadImplCopyWith(_$ProgressSyncPayloadImpl value,
          $Res Function(_$ProgressSyncPayloadImpl) then) =
      __$$ProgressSyncPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LessonProgress progress, UserStats stats, LessonBlockResult result});

  @override
  $LessonProgressCopyWith<$Res> get progress;
  @override
  $UserStatsCopyWith<$Res> get stats;
  @override
  $LessonBlockResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ProgressSyncPayloadImplCopyWithImpl<$Res>
    extends _$ProgressSyncPayloadCopyWithImpl<$Res, _$ProgressSyncPayloadImpl>
    implements _$$ProgressSyncPayloadImplCopyWith<$Res> {
  __$$ProgressSyncPayloadImplCopyWithImpl(_$ProgressSyncPayloadImpl _value,
      $Res Function(_$ProgressSyncPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? stats = null,
    Object? result = null,
  }) {
    return _then(_$ProgressSyncPayloadImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as LessonProgress,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStats,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LessonBlockResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressSyncPayloadImpl implements _ProgressSyncPayload {
  const _$ProgressSyncPayloadImpl(
      {required this.progress, required this.stats, required this.result});

  factory _$ProgressSyncPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressSyncPayloadImplFromJson(json);

  @override
  final LessonProgress progress;
  @override
  final UserStats stats;
  @override
  final LessonBlockResult result;

  @override
  String toString() {
    return 'ProgressSyncPayload(progress: $progress, stats: $stats, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressSyncPayloadImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, progress, stats, result);

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressSyncPayloadImplCopyWith<_$ProgressSyncPayloadImpl> get copyWith =>
      __$$ProgressSyncPayloadImplCopyWithImpl<_$ProgressSyncPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressSyncPayloadImplToJson(
      this,
    );
  }
}

abstract class _ProgressSyncPayload implements ProgressSyncPayload {
  const factory _ProgressSyncPayload(
      {required final LessonProgress progress,
      required final UserStats stats,
      required final LessonBlockResult result}) = _$ProgressSyncPayloadImpl;

  factory _ProgressSyncPayload.fromJson(Map<String, dynamic> json) =
      _$ProgressSyncPayloadImpl.fromJson;

  @override
  LessonProgress get progress;
  @override
  UserStats get stats;
  @override
  LessonBlockResult get result;

  /// Create a copy of ProgressSyncPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressSyncPayloadImplCopyWith<_$ProgressSyncPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonAttempt _$LessonAttemptFromJson(Map<String, dynamic> json) {
  return _LessonAttempt.fromJson(json);
}

/// @nodoc
mixin _$LessonAttempt {
  String get userId => throw _privateConstructorUsedError;
  String get lessonId => throw _privateConstructorUsedError;
  String get blockId => throw _privateConstructorUsedError;
  int get attemptNumber => throw _privateConstructorUsedError;
  String? get submittedAnswer => throw _privateConstructorUsedError;
  List<String> get selectedOptionIds => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  String? get feedbackMessage => throw _privateConstructorUsedError;
  int get earnedXp => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this LessonAttempt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonAttempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonAttemptCopyWith<LessonAttempt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonAttemptCopyWith<$Res> {
  factory $LessonAttemptCopyWith(
          LessonAttempt value, $Res Function(LessonAttempt) then) =
      _$LessonAttemptCopyWithImpl<$Res, LessonAttempt>;
  @useResult
  $Res call(
      {String userId,
      String lessonId,
      String blockId,
      int attemptNumber,
      String? submittedAnswer,
      List<String> selectedOptionIds,
      bool isCorrect,
      String? feedbackMessage,
      int earnedXp,
      DateTime? createdAt});
}

/// @nodoc
class _$LessonAttemptCopyWithImpl<$Res, $Val extends LessonAttempt>
    implements $LessonAttemptCopyWith<$Res> {
  _$LessonAttemptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonAttempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lessonId = null,
    Object? blockId = null,
    Object? attemptNumber = null,
    Object? submittedAnswer = freezed,
    Object? selectedOptionIds = null,
    Object? isCorrect = null,
    Object? feedbackMessage = freezed,
    Object? earnedXp = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      submittedAnswer: freezed == submittedAnswer
          ? _value.submittedAnswer
          : submittedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedOptionIds: null == selectedOptionIds
          ? _value.selectedOptionIds
          : selectedOptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackMessage: freezed == feedbackMessage
          ? _value.feedbackMessage
          : feedbackMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonAttemptImplCopyWith<$Res>
    implements $LessonAttemptCopyWith<$Res> {
  factory _$$LessonAttemptImplCopyWith(
          _$LessonAttemptImpl value, $Res Function(_$LessonAttemptImpl) then) =
      __$$LessonAttemptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String lessonId,
      String blockId,
      int attemptNumber,
      String? submittedAnswer,
      List<String> selectedOptionIds,
      bool isCorrect,
      String? feedbackMessage,
      int earnedXp,
      DateTime? createdAt});
}

/// @nodoc
class __$$LessonAttemptImplCopyWithImpl<$Res>
    extends _$LessonAttemptCopyWithImpl<$Res, _$LessonAttemptImpl>
    implements _$$LessonAttemptImplCopyWith<$Res> {
  __$$LessonAttemptImplCopyWithImpl(
      _$LessonAttemptImpl _value, $Res Function(_$LessonAttemptImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonAttempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lessonId = null,
    Object? blockId = null,
    Object? attemptNumber = null,
    Object? submittedAnswer = freezed,
    Object? selectedOptionIds = null,
    Object? isCorrect = null,
    Object? feedbackMessage = freezed,
    Object? earnedXp = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$LessonAttemptImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      submittedAnswer: freezed == submittedAnswer
          ? _value.submittedAnswer
          : submittedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedOptionIds: null == selectedOptionIds
          ? _value._selectedOptionIds
          : selectedOptionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackMessage: freezed == feedbackMessage
          ? _value.feedbackMessage
          : feedbackMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      earnedXp: null == earnedXp
          ? _value.earnedXp
          : earnedXp // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonAttemptImpl implements _LessonAttempt {
  const _$LessonAttemptImpl(
      {required this.userId,
      required this.lessonId,
      required this.blockId,
      required this.attemptNumber,
      this.submittedAnswer,
      final List<String> selectedOptionIds = const <String>[],
      required this.isCorrect,
      this.feedbackMessage,
      this.earnedXp = 0,
      this.createdAt})
      : _selectedOptionIds = selectedOptionIds;

  factory _$LessonAttemptImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonAttemptImplFromJson(json);

  @override
  final String userId;
  @override
  final String lessonId;
  @override
  final String blockId;
  @override
  final int attemptNumber;
  @override
  final String? submittedAnswer;
  final List<String> _selectedOptionIds;
  @override
  @JsonKey()
  List<String> get selectedOptionIds {
    if (_selectedOptionIds is EqualUnmodifiableListView)
      return _selectedOptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptionIds);
  }

  @override
  final bool isCorrect;
  @override
  final String? feedbackMessage;
  @override
  @JsonKey()
  final int earnedXp;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'LessonAttempt(userId: $userId, lessonId: $lessonId, blockId: $blockId, attemptNumber: $attemptNumber, submittedAnswer: $submittedAnswer, selectedOptionIds: $selectedOptionIds, isCorrect: $isCorrect, feedbackMessage: $feedbackMessage, earnedXp: $earnedXp, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonAttemptImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.blockId, blockId) || other.blockId == blockId) &&
            (identical(other.attemptNumber, attemptNumber) ||
                other.attemptNumber == attemptNumber) &&
            (identical(other.submittedAnswer, submittedAnswer) ||
                other.submittedAnswer == submittedAnswer) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptionIds, _selectedOptionIds) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.feedbackMessage, feedbackMessage) ||
                other.feedbackMessage == feedbackMessage) &&
            (identical(other.earnedXp, earnedXp) ||
                other.earnedXp == earnedXp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      lessonId,
      blockId,
      attemptNumber,
      submittedAnswer,
      const DeepCollectionEquality().hash(_selectedOptionIds),
      isCorrect,
      feedbackMessage,
      earnedXp,
      createdAt);

  /// Create a copy of LessonAttempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonAttemptImplCopyWith<_$LessonAttemptImpl> get copyWith =>
      __$$LessonAttemptImplCopyWithImpl<_$LessonAttemptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonAttemptImplToJson(
      this,
    );
  }
}

abstract class _LessonAttempt implements LessonAttempt {
  const factory _LessonAttempt(
      {required final String userId,
      required final String lessonId,
      required final String blockId,
      required final int attemptNumber,
      final String? submittedAnswer,
      final List<String> selectedOptionIds,
      required final bool isCorrect,
      final String? feedbackMessage,
      final int earnedXp,
      final DateTime? createdAt}) = _$LessonAttemptImpl;

  factory _LessonAttempt.fromJson(Map<String, dynamic> json) =
      _$LessonAttemptImpl.fromJson;

  @override
  String get userId;
  @override
  String get lessonId;
  @override
  String get blockId;
  @override
  int get attemptNumber;
  @override
  String? get submittedAnswer;
  @override
  List<String> get selectedOptionIds;
  @override
  bool get isCorrect;
  @override
  String? get feedbackMessage;
  @override
  int get earnedXp;
  @override
  DateTime? get createdAt;

  /// Create a copy of LessonAttempt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonAttemptImplCopyWith<_$LessonAttemptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
