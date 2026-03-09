// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_language')
  String get targetLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'native_language')
  String get nativeLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'cefr_level')
  String get cefrLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_goal_minutes')
  int get dailyGoalMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'xp_total')
  int get xpTotal => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'streak_days')
  int get streakDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'longest_streak')
  int get longestStreak => throw _privateConstructorUsedError;
  @JsonKey(name: 'streak_last_date')
  DateTime? get streakLastDate => throw _privateConstructorUsedError;
  int get hearts => throw _privateConstructorUsedError;
  @JsonKey(name: 'hearts_refill_at')
  DateTime? get heartsRefillAt => throw _privateConstructorUsedError;
  int get crystals => throw _privateConstructorUsedError;
  @JsonKey(name: 'freezes_available')
  int get freezesAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_guest')
  bool get isGuest => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'onboarding_completed')
  bool get onboardingCompleted => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String id,
      String? email,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'target_language') String targetLanguage,
      @JsonKey(name: 'native_language') String nativeLanguage,
      @JsonKey(name: 'cefr_level') String cefrLevel,
      @JsonKey(name: 'daily_goal_minutes') int dailyGoalMinutes,
      @JsonKey(name: 'xp_total') int xpTotal,
      int level,
      @JsonKey(name: 'streak_days') int streakDays,
      @JsonKey(name: 'longest_streak') int longestStreak,
      @JsonKey(name: 'streak_last_date') DateTime? streakLastDate,
      int hearts,
      @JsonKey(name: 'hearts_refill_at') DateTime? heartsRefillAt,
      int crystals,
      @JsonKey(name: 'freezes_available') int freezesAvailable,
      @JsonKey(name: 'is_guest') bool isGuest,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'onboarding_completed') bool onboardingCompleted});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? targetLanguage = null,
    Object? nativeLanguage = null,
    Object? cefrLevel = null,
    Object? dailyGoalMinutes = null,
    Object? xpTotal = null,
    Object? level = null,
    Object? streakDays = null,
    Object? longestStreak = null,
    Object? streakLastDate = freezed,
    Object? hearts = null,
    Object? heartsRefillAt = freezed,
    Object? crystals = null,
    Object? freezesAvailable = null,
    Object? isGuest = null,
    Object? createdAt = null,
    Object? onboardingCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      nativeLanguage: null == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      cefrLevel: null == cefrLevel
          ? _value.cefrLevel
          : cefrLevel // ignore: cast_nullable_to_non_nullable
              as String,
      dailyGoalMinutes: null == dailyGoalMinutes
          ? _value.dailyGoalMinutes
          : dailyGoalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      xpTotal: null == xpTotal
          ? _value.xpTotal
          : xpTotal // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      streakDays: null == streakDays
          ? _value.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      streakLastDate: freezed == streakLastDate
          ? _value.streakLastDate
          : streakLastDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hearts: null == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int,
      heartsRefillAt: freezed == heartsRefillAt
          ? _value.heartsRefillAt
          : heartsRefillAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crystals: null == crystals
          ? _value.crystals
          : crystals // ignore: cast_nullable_to_non_nullable
              as int,
      freezesAvailable: null == freezesAvailable
          ? _value.freezesAvailable
          : freezesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      isGuest: null == isGuest
          ? _value.isGuest
          : isGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      onboardingCompleted: null == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? email,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'target_language') String targetLanguage,
      @JsonKey(name: 'native_language') String nativeLanguage,
      @JsonKey(name: 'cefr_level') String cefrLevel,
      @JsonKey(name: 'daily_goal_minutes') int dailyGoalMinutes,
      @JsonKey(name: 'xp_total') int xpTotal,
      int level,
      @JsonKey(name: 'streak_days') int streakDays,
      @JsonKey(name: 'longest_streak') int longestStreak,
      @JsonKey(name: 'streak_last_date') DateTime? streakLastDate,
      int hearts,
      @JsonKey(name: 'hearts_refill_at') DateTime? heartsRefillAt,
      int crystals,
      @JsonKey(name: 'freezes_available') int freezesAvailable,
      @JsonKey(name: 'is_guest') bool isGuest,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'onboarding_completed') bool onboardingCompleted});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? targetLanguage = null,
    Object? nativeLanguage = null,
    Object? cefrLevel = null,
    Object? dailyGoalMinutes = null,
    Object? xpTotal = null,
    Object? level = null,
    Object? streakDays = null,
    Object? longestStreak = null,
    Object? streakLastDate = freezed,
    Object? hearts = null,
    Object? heartsRefillAt = freezed,
    Object? crystals = null,
    Object? freezesAvailable = null,
    Object? isGuest = null,
    Object? createdAt = null,
    Object? onboardingCompleted = null,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetLanguage: null == targetLanguage
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      nativeLanguage: null == nativeLanguage
          ? _value.nativeLanguage
          : nativeLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      cefrLevel: null == cefrLevel
          ? _value.cefrLevel
          : cefrLevel // ignore: cast_nullable_to_non_nullable
              as String,
      dailyGoalMinutes: null == dailyGoalMinutes
          ? _value.dailyGoalMinutes
          : dailyGoalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      xpTotal: null == xpTotal
          ? _value.xpTotal
          : xpTotal // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      streakDays: null == streakDays
          ? _value.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      streakLastDate: freezed == streakLastDate
          ? _value.streakLastDate
          : streakLastDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hearts: null == hearts
          ? _value.hearts
          : hearts // ignore: cast_nullable_to_non_nullable
              as int,
      heartsRefillAt: freezed == heartsRefillAt
          ? _value.heartsRefillAt
          : heartsRefillAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crystals: null == crystals
          ? _value.crystals
          : crystals // ignore: cast_nullable_to_non_nullable
              as int,
      freezesAvailable: null == freezesAvailable
          ? _value.freezesAvailable
          : freezesAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      isGuest: null == isGuest
          ? _value.isGuest
          : isGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      onboardingCompleted: null == onboardingCompleted
          ? _value.onboardingCompleted
          : onboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.id,
      this.email,
      @JsonKey(name: 'display_name') this.displayName = 'Guest',
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'target_language') this.targetLanguage = 'ja',
      @JsonKey(name: 'native_language') this.nativeLanguage = 'en',
      @JsonKey(name: 'cefr_level') this.cefrLevel = 'A1',
      @JsonKey(name: 'daily_goal_minutes') this.dailyGoalMinutes = 10,
      @JsonKey(name: 'xp_total') this.xpTotal = 0,
      this.level = 1,
      @JsonKey(name: 'streak_days') this.streakDays = 0,
      @JsonKey(name: 'longest_streak') this.longestStreak = 0,
      @JsonKey(name: 'streak_last_date') this.streakLastDate,
      this.hearts = 5,
      @JsonKey(name: 'hearts_refill_at') this.heartsRefillAt,
      this.crystals = 0,
      @JsonKey(name: 'freezes_available') this.freezesAvailable = 0,
      @JsonKey(name: 'is_guest') this.isGuest = false,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'onboarding_completed') this.onboardingCompleted = false});

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'target_language')
  final String targetLanguage;
  @override
  @JsonKey(name: 'native_language')
  final String nativeLanguage;
  @override
  @JsonKey(name: 'cefr_level')
  final String cefrLevel;
  @override
  @JsonKey(name: 'daily_goal_minutes')
  final int dailyGoalMinutes;
  @override
  @JsonKey(name: 'xp_total')
  final int xpTotal;
  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey(name: 'streak_days')
  final int streakDays;
  @override
  @JsonKey(name: 'longest_streak')
  final int longestStreak;
  @override
  @JsonKey(name: 'streak_last_date')
  final DateTime? streakLastDate;
  @override
  @JsonKey()
  final int hearts;
  @override
  @JsonKey(name: 'hearts_refill_at')
  final DateTime? heartsRefillAt;
  @override
  @JsonKey()
  final int crystals;
  @override
  @JsonKey(name: 'freezes_available')
  final int freezesAvailable;
  @override
  @JsonKey(name: 'is_guest')
  final bool isGuest;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'onboarding_completed')
  final bool onboardingCompleted;

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, targetLanguage: $targetLanguage, nativeLanguage: $nativeLanguage, cefrLevel: $cefrLevel, dailyGoalMinutes: $dailyGoalMinutes, xpTotal: $xpTotal, level: $level, streakDays: $streakDays, longestStreak: $longestStreak, streakLastDate: $streakLastDate, hearts: $hearts, heartsRefillAt: $heartsRefillAt, crystals: $crystals, freezesAvailable: $freezesAvailable, isGuest: $isGuest, createdAt: $createdAt, onboardingCompleted: $onboardingCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.targetLanguage, targetLanguage) ||
                other.targetLanguage == targetLanguage) &&
            (identical(other.nativeLanguage, nativeLanguage) ||
                other.nativeLanguage == nativeLanguage) &&
            (identical(other.cefrLevel, cefrLevel) ||
                other.cefrLevel == cefrLevel) &&
            (identical(other.dailyGoalMinutes, dailyGoalMinutes) ||
                other.dailyGoalMinutes == dailyGoalMinutes) &&
            (identical(other.xpTotal, xpTotal) || other.xpTotal == xpTotal) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.streakLastDate, streakLastDate) ||
                other.streakLastDate == streakLastDate) &&
            (identical(other.hearts, hearts) || other.hearts == hearts) &&
            (identical(other.heartsRefillAt, heartsRefillAt) ||
                other.heartsRefillAt == heartsRefillAt) &&
            (identical(other.crystals, crystals) ||
                other.crystals == crystals) &&
            (identical(other.freezesAvailable, freezesAvailable) ||
                other.freezesAvailable == freezesAvailable) &&
            (identical(other.isGuest, isGuest) || other.isGuest == isGuest) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.onboardingCompleted, onboardingCompleted) ||
                other.onboardingCompleted == onboardingCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        displayName,
        avatarUrl,
        targetLanguage,
        nativeLanguage,
        cefrLevel,
        dailyGoalMinutes,
        xpTotal,
        level,
        streakDays,
        longestStreak,
        streakLastDate,
        hearts,
        heartsRefillAt,
        crystals,
        freezesAvailable,
        isGuest,
        createdAt,
        onboardingCompleted
      ]);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String id,
      final String? email,
      @JsonKey(name: 'display_name') final String displayName,
      @JsonKey(name: 'avatar_url') final String? avatarUrl,
      @JsonKey(name: 'target_language') final String targetLanguage,
      @JsonKey(name: 'native_language') final String nativeLanguage,
      @JsonKey(name: 'cefr_level') final String cefrLevel,
      @JsonKey(name: 'daily_goal_minutes') final int dailyGoalMinutes,
      @JsonKey(name: 'xp_total') final int xpTotal,
      final int level,
      @JsonKey(name: 'streak_days') final int streakDays,
      @JsonKey(name: 'longest_streak') final int longestStreak,
      @JsonKey(name: 'streak_last_date') final DateTime? streakLastDate,
      final int hearts,
      @JsonKey(name: 'hearts_refill_at') final DateTime? heartsRefillAt,
      final int crystals,
      @JsonKey(name: 'freezes_available') final int freezesAvailable,
      @JsonKey(name: 'is_guest') final bool isGuest,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'onboarding_completed')
      final bool onboardingCompleted}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get id;
  @override
  String? get email;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'target_language')
  String get targetLanguage;
  @override
  @JsonKey(name: 'native_language')
  String get nativeLanguage;
  @override
  @JsonKey(name: 'cefr_level')
  String get cefrLevel;
  @override
  @JsonKey(name: 'daily_goal_minutes')
  int get dailyGoalMinutes;
  @override
  @JsonKey(name: 'xp_total')
  int get xpTotal;
  @override
  int get level;
  @override
  @JsonKey(name: 'streak_days')
  int get streakDays;
  @override
  @JsonKey(name: 'longest_streak')
  int get longestStreak;
  @override
  @JsonKey(name: 'streak_last_date')
  DateTime? get streakLastDate;
  @override
  int get hearts;
  @override
  @JsonKey(name: 'hearts_refill_at')
  DateTime? get heartsRefillAt;
  @override
  int get crystals;
  @override
  @JsonKey(name: 'freezes_available')
  int get freezesAvailable;
  @override
  @JsonKey(name: 'is_guest')
  bool get isGuest;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'onboarding_completed')
  bool get onboardingCompleted;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
