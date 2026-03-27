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
  int get earnedXp => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String? get lastBlockId => throw _privateConstructorUsedError;
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
      int earnedXp,
      bool isCompleted,
      String? lastBlockId,
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
    Object? earnedXp = null,
    Object? isCompleted = null,
    Object? lastBlockId = freezed,
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
      int earnedXp,
      bool isCompleted,
      String? lastBlockId,
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
    Object? earnedXp = null,
    Object? isCompleted = null,
    Object? lastBlockId = freezed,
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
      this.earnedXp = 0,
      this.isCompleted = false,
      this.lastBlockId,
      this.updatedAt,
      this.completedAt})
      : super._();

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
  final int earnedXp;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final String? lastBlockId;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'LessonProgress(lessonId: $lessonId, userId: $userId, currentBlockIndex: $currentBlockIndex, correctAnswers: $correctAnswers, answeredBlocks: $answeredBlocks, earnedXp: $earnedXp, isCompleted: $isCompleted, lastBlockId: $lastBlockId, updatedAt: $updatedAt, completedAt: $completedAt)';
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
            (identical(other.earnedXp, earnedXp) ||
                other.earnedXp == earnedXp) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.lastBlockId, lastBlockId) ||
                other.lastBlockId == lastBlockId) &&
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
      earnedXp,
      isCompleted,
      lastBlockId,
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
      final int earnedXp,
      final bool isCompleted,
      final String? lastBlockId,
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
  int get earnedXp;
  @override
  bool get isCompleted;
  @override
  String? get lastBlockId;
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
  int? get timeSpentSeconds => throw _privateConstructorUsedError;
  String? get submittedAnswer => throw _privateConstructorUsedError;
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
      int? timeSpentSeconds,
      String? submittedAnswer,
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
    Object? timeSpentSeconds = freezed,
    Object? submittedAnswer = freezed,
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
      timeSpentSeconds: freezed == timeSpentSeconds
          ? _value.timeSpentSeconds
          : timeSpentSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedAnswer: freezed == submittedAnswer
          ? _value.submittedAnswer
          : submittedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
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
      int? timeSpentSeconds,
      String? submittedAnswer,
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
    Object? timeSpentSeconds = freezed,
    Object? submittedAnswer = freezed,
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
      timeSpentSeconds: freezed == timeSpentSeconds
          ? _value.timeSpentSeconds
          : timeSpentSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedAnswer: freezed == submittedAnswer
          ? _value.submittedAnswer
          : submittedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.timeSpentSeconds,
      this.submittedAnswer,
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
  final int? timeSpentSeconds;
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
  String toString() {
    return 'LessonBlockResult(lessonId: $lessonId, blockId: $blockId, blockType: $blockType, isCorrect: $isCorrect, earnedXp: $earnedXp, timeSpentSeconds: $timeSpentSeconds, submittedAnswer: $submittedAnswer, selectedOptionIds: $selectedOptionIds)';
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
            (identical(other.timeSpentSeconds, timeSpentSeconds) ||
                other.timeSpentSeconds == timeSpentSeconds) &&
            (identical(other.submittedAnswer, submittedAnswer) ||
                other.submittedAnswer == submittedAnswer) &&
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
      timeSpentSeconds,
      submittedAnswer,
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
      final int? timeSpentSeconds,
      final String? submittedAnswer,
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
  int? get timeSpentSeconds;
  @override
  String? get submittedAnswer;
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
  final String? nextLessonId;

  @override
  String toString() {
    return 'LessonSummary(lessonId: $lessonId, totalBlocks: $totalBlocks, correctAnswers: $correctAnswers, earnedXp: $earnedXp, accuracy: $accuracy, nextLessonId: $nextLessonId)';
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
            (identical(other.nextLessonId, nextLessonId) ||
                other.nextLessonId == nextLessonId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lessonId, totalBlocks,
      correctAnswers, earnedXp, accuracy, nextLessonId);

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
