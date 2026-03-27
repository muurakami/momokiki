// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessonSessionState {
  bool get isLoading => throw _privateConstructorUsedError;
  Lesson? get lesson => throw _privateConstructorUsedError;
  LessonProgress? get progress => throw _privateConstructorUsedError;
  UserStats? get stats => throw _privateConstructorUsedError;
  LessonSummary? get summary => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get submitting => throw _privateConstructorUsedError;

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonSessionStateCopyWith<LessonSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonSessionStateCopyWith<$Res> {
  factory $LessonSessionStateCopyWith(
          LessonSessionState value, $Res Function(LessonSessionState) then) =
      _$LessonSessionStateCopyWithImpl<$Res, LessonSessionState>;
  @useResult
  $Res call(
      {bool isLoading,
      Lesson? lesson,
      LessonProgress? progress,
      UserStats? stats,
      LessonSummary? summary,
      String? errorMessage,
      bool submitting});

  $LessonCopyWith<$Res>? get lesson;
  $LessonProgressCopyWith<$Res>? get progress;
  $UserStatsCopyWith<$Res>? get stats;
  $LessonSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$LessonSessionStateCopyWithImpl<$Res, $Val extends LessonSessionState>
    implements $LessonSessionStateCopyWith<$Res> {
  _$LessonSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? lesson = freezed,
    Object? progress = freezed,
    Object? stats = freezed,
    Object? summary = freezed,
    Object? errorMessage = freezed,
    Object? submitting = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lesson: freezed == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as LessonProgress?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStats?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as LessonSummary?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      submitting: null == submitting
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res>? get lesson {
    if (_value.lesson == null) {
      return null;
    }

    return $LessonCopyWith<$Res>(_value.lesson!, (value) {
      return _then(_value.copyWith(lesson: value) as $Val);
    });
  }

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonProgressCopyWith<$Res>? get progress {
    if (_value.progress == null) {
      return null;
    }

    return $LessonProgressCopyWith<$Res>(_value.progress!, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $UserStatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $LessonSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonSessionStateImplCopyWith<$Res>
    implements $LessonSessionStateCopyWith<$Res> {
  factory _$$LessonSessionStateImplCopyWith(_$LessonSessionStateImpl value,
          $Res Function(_$LessonSessionStateImpl) then) =
      __$$LessonSessionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Lesson? lesson,
      LessonProgress? progress,
      UserStats? stats,
      LessonSummary? summary,
      String? errorMessage,
      bool submitting});

  @override
  $LessonCopyWith<$Res>? get lesson;
  @override
  $LessonProgressCopyWith<$Res>? get progress;
  @override
  $UserStatsCopyWith<$Res>? get stats;
  @override
  $LessonSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$LessonSessionStateImplCopyWithImpl<$Res>
    extends _$LessonSessionStateCopyWithImpl<$Res, _$LessonSessionStateImpl>
    implements _$$LessonSessionStateImplCopyWith<$Res> {
  __$$LessonSessionStateImplCopyWithImpl(_$LessonSessionStateImpl _value,
      $Res Function(_$LessonSessionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? lesson = freezed,
    Object? progress = freezed,
    Object? stats = freezed,
    Object? summary = freezed,
    Object? errorMessage = freezed,
    Object? submitting = null,
  }) {
    return _then(_$LessonSessionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lesson: freezed == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as LessonProgress?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStats?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as LessonSummary?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      submitting: null == submitting
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LessonSessionStateImpl extends _LessonSessionState {
  const _$LessonSessionStateImpl(
      {this.isLoading = false,
      this.lesson,
      this.progress,
      this.stats,
      this.summary,
      this.errorMessage,
      this.submitting = false})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Lesson? lesson;
  @override
  final LessonProgress? progress;
  @override
  final UserStats? stats;
  @override
  final LessonSummary? summary;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool submitting;

  @override
  String toString() {
    return 'LessonSessionState(isLoading: $isLoading, lesson: $lesson, progress: $progress, stats: $stats, summary: $summary, errorMessage: $errorMessage, submitting: $submitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonSessionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.submitting, submitting) ||
                other.submitting == submitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, lesson, progress,
      stats, summary, errorMessage, submitting);

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonSessionStateImplCopyWith<_$LessonSessionStateImpl> get copyWith =>
      __$$LessonSessionStateImplCopyWithImpl<_$LessonSessionStateImpl>(
          this, _$identity);
}

abstract class _LessonSessionState extends LessonSessionState {
  const factory _LessonSessionState(
      {final bool isLoading,
      final Lesson? lesson,
      final LessonProgress? progress,
      final UserStats? stats,
      final LessonSummary? summary,
      final String? errorMessage,
      final bool submitting}) = _$LessonSessionStateImpl;
  const _LessonSessionState._() : super._();

  @override
  bool get isLoading;
  @override
  Lesson? get lesson;
  @override
  LessonProgress? get progress;
  @override
  UserStats? get stats;
  @override
  LessonSummary? get summary;
  @override
  String? get errorMessage;
  @override
  bool get submitting;

  /// Create a copy of LessonSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonSessionStateImplCopyWith<_$LessonSessionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
