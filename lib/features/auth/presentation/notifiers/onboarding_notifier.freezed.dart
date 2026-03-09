// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingState {
  String get targetLanguage => throw _privateConstructorUsedError;
  String get cefrLevel => throw _privateConstructorUsedError;
  int get dailyGoalMinutes => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call({String targetLanguage, String cefrLevel, int dailyGoalMinutes});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetLanguage = null,
    Object? cefrLevel = null,
    Object? dailyGoalMinutes = null,
  }) {
    return _then(_value.copyWith(
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      cefrLevel: null == cefrLevel
          ? _value.cefrLevel
          : cefrLevel // ignore: cast_nullable_to_non_nullable
              as String,
      dailyGoalMinutes: null == dailyGoalMinutes
          ? _value.dailyGoalMinutes
          : dailyGoalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$OnboardingStateImplCopyWith(_$OnboardingStateImpl value,
          $Res Function(_$OnboardingStateImpl) then) =
      __$$OnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetLanguage, String cefrLevel, int dailyGoalMinutes});
}

/// @nodoc
class __$$OnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnboardingStateImpl>
    implements _$$OnboardingStateImplCopyWith<$Res> {
  __$$OnboardingStateImplCopyWithImpl(
      _$OnboardingStateImpl _value, $Res Function(_$OnboardingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetLanguage = null,
    Object? cefrLevel = null,
    Object? dailyGoalMinutes = null,
  }) {
    return _then(_$OnboardingStateImpl(
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      cefrLevel: null == cefrLevel
          ? _value.cefrLevel
          : cefrLevel // ignore: cast_nullable_to_non_nullable
              as String,
      dailyGoalMinutes: null == dailyGoalMinutes
          ? _value.dailyGoalMinutes
          : dailyGoalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnboardingStateImpl implements _OnboardingState {
  const _$OnboardingStateImpl(
      {this.targetLanguage = 'ja',
      this.cefrLevel = 'A1',
      this.dailyGoalMinutes = 10});

  @override
  @JsonKey()
  final String targetLanguage;
  @override
  @JsonKey()
  final String cefrLevel;
  @override
  @JsonKey()
  final int dailyGoalMinutes;

  @override
  String toString() {
    return 'OnboardingState(targetLanguage: $targetLanguage, cefrLevel: $cefrLevel, dailyGoalMinutes: $dailyGoalMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStateImpl &&
            (identical(other.targetLanguage, targetLanguage) ||
                other.targetLanguage == targetLanguage) &&
            (identical(other.cefrLevel, cefrLevel) ||
                other.cefrLevel == cefrLevel) &&
            (identical(other.dailyGoalMinutes, dailyGoalMinutes) ||
                other.dailyGoalMinutes == dailyGoalMinutes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, targetLanguage, cefrLevel, dailyGoalMinutes);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      __$$OnboardingStateImplCopyWithImpl<_$OnboardingStateImpl>(
          this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState(
      {final String targetLanguage,
      final String cefrLevel,
      final int dailyGoalMinutes}) = _$OnboardingStateImpl;

  @override
  String get targetLanguage;
  @override
  String get cefrLevel;
  @override
  int get dailyGoalMinutes;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingStateImplCopyWith<_$OnboardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
