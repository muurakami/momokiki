// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatsProfileSnapshot {
  String get userId => throw _privateConstructorUsedError;
  DateTime get registeredAt => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  int get currentStreak => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;
  int get fallbackTotalXp => throw _privateConstructorUsedError;

  /// Create a copy of StatsProfileSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsProfileSnapshotCopyWith<StatsProfileSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsProfileSnapshotCopyWith<$Res> {
  factory $StatsProfileSnapshotCopyWith(StatsProfileSnapshot value,
          $Res Function(StatsProfileSnapshot) then) =
      _$StatsProfileSnapshotCopyWithImpl<$Res, StatsProfileSnapshot>;
  @useResult
  $Res call(
      {String userId,
      DateTime registeredAt,
      String displayName,
      int currentStreak,
      int longestStreak,
      int fallbackTotalXp});
}

/// @nodoc
class _$StatsProfileSnapshotCopyWithImpl<$Res,
        $Val extends StatsProfileSnapshot>
    implements $StatsProfileSnapshotCopyWith<$Res> {
  _$StatsProfileSnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsProfileSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? registeredAt = null,
    Object? displayName = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? fallbackTotalXp = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      fallbackTotalXp: null == fallbackTotalXp
          ? _value.fallbackTotalXp
          : fallbackTotalXp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsProfileSnapshotImplCopyWith<$Res>
    implements $StatsProfileSnapshotCopyWith<$Res> {
  factory _$$StatsProfileSnapshotImplCopyWith(_$StatsProfileSnapshotImpl value,
          $Res Function(_$StatsProfileSnapshotImpl) then) =
      __$$StatsProfileSnapshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      DateTime registeredAt,
      String displayName,
      int currentStreak,
      int longestStreak,
      int fallbackTotalXp});
}

/// @nodoc
class __$$StatsProfileSnapshotImplCopyWithImpl<$Res>
    extends _$StatsProfileSnapshotCopyWithImpl<$Res, _$StatsProfileSnapshotImpl>
    implements _$$StatsProfileSnapshotImplCopyWith<$Res> {
  __$$StatsProfileSnapshotImplCopyWithImpl(_$StatsProfileSnapshotImpl _value,
      $Res Function(_$StatsProfileSnapshotImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsProfileSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? registeredAt = null,
    Object? displayName = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? fallbackTotalXp = null,
  }) {
    return _then(_$StatsProfileSnapshotImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      fallbackTotalXp: null == fallbackTotalXp
          ? _value.fallbackTotalXp
          : fallbackTotalXp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatsProfileSnapshotImpl implements _StatsProfileSnapshot {
  const _$StatsProfileSnapshotImpl(
      {required this.userId,
      required this.registeredAt,
      this.displayName = 'Learner',
      this.currentStreak = 0,
      this.longestStreak = 0,
      this.fallbackTotalXp = 0});

  @override
  final String userId;
  @override
  final DateTime registeredAt;
  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final int currentStreak;
  @override
  @JsonKey()
  final int longestStreak;
  @override
  @JsonKey()
  final int fallbackTotalXp;

  @override
  String toString() {
    return 'StatsProfileSnapshot(userId: $userId, registeredAt: $registeredAt, displayName: $displayName, currentStreak: $currentStreak, longestStreak: $longestStreak, fallbackTotalXp: $fallbackTotalXp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsProfileSnapshotImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.fallbackTotalXp, fallbackTotalXp) ||
                other.fallbackTotalXp == fallbackTotalXp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, registeredAt,
      displayName, currentStreak, longestStreak, fallbackTotalXp);

  /// Create a copy of StatsProfileSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsProfileSnapshotImplCopyWith<_$StatsProfileSnapshotImpl>
      get copyWith =>
          __$$StatsProfileSnapshotImplCopyWithImpl<_$StatsProfileSnapshotImpl>(
              this, _$identity);
}

abstract class _StatsProfileSnapshot implements StatsProfileSnapshot {
  const factory _StatsProfileSnapshot(
      {required final String userId,
      required final DateTime registeredAt,
      final String displayName,
      final int currentStreak,
      final int longestStreak,
      final int fallbackTotalXp}) = _$StatsProfileSnapshotImpl;

  @override
  String get userId;
  @override
  DateTime get registeredAt;
  @override
  String get displayName;
  @override
  int get currentStreak;
  @override
  int get longestStreak;
  @override
  int get fallbackTotalXp;

  /// Create a copy of StatsProfileSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsProfileSnapshotImplCopyWith<_$StatsProfileSnapshotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatsOverview {
  DateTime get registeredAt => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  int get lessonsCompleted => throw _privateConstructorUsedError;
  int get cardsLearned => throw _privateConstructorUsedError;
  int get totalXp => throw _privateConstructorUsedError;
  int get currentStreak => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;

  /// Create a copy of StatsOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsOverviewCopyWith<StatsOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsOverviewCopyWith<$Res> {
  factory $StatsOverviewCopyWith(
          StatsOverview value, $Res Function(StatsOverview) then) =
      _$StatsOverviewCopyWithImpl<$Res, StatsOverview>;
  @useResult
  $Res call(
      {DateTime registeredAt,
      String displayName,
      int lessonsCompleted,
      int cardsLearned,
      int totalXp,
      int currentStreak,
      int longestStreak});
}

/// @nodoc
class _$StatsOverviewCopyWithImpl<$Res, $Val extends StatsOverview>
    implements $StatsOverviewCopyWith<$Res> {
  _$StatsOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredAt = null,
    Object? displayName = null,
    Object? lessonsCompleted = null,
    Object? cardsLearned = null,
    Object? totalXp = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
  }) {
    return _then(_value.copyWith(
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      lessonsCompleted: null == lessonsCompleted
          ? _value.lessonsCompleted
          : lessonsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      cardsLearned: null == cardsLearned
          ? _value.cardsLearned
          : cardsLearned // ignore: cast_nullable_to_non_nullable
              as int,
      totalXp: null == totalXp
          ? _value.totalXp
          : totalXp // ignore: cast_nullable_to_non_nullable
              as int,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsOverviewImplCopyWith<$Res>
    implements $StatsOverviewCopyWith<$Res> {
  factory _$$StatsOverviewImplCopyWith(
          _$StatsOverviewImpl value, $Res Function(_$StatsOverviewImpl) then) =
      __$$StatsOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime registeredAt,
      String displayName,
      int lessonsCompleted,
      int cardsLearned,
      int totalXp,
      int currentStreak,
      int longestStreak});
}

/// @nodoc
class __$$StatsOverviewImplCopyWithImpl<$Res>
    extends _$StatsOverviewCopyWithImpl<$Res, _$StatsOverviewImpl>
    implements _$$StatsOverviewImplCopyWith<$Res> {
  __$$StatsOverviewImplCopyWithImpl(
      _$StatsOverviewImpl _value, $Res Function(_$StatsOverviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredAt = null,
    Object? displayName = null,
    Object? lessonsCompleted = null,
    Object? cardsLearned = null,
    Object? totalXp = null,
    Object? currentStreak = null,
    Object? longestStreak = null,
  }) {
    return _then(_$StatsOverviewImpl(
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      lessonsCompleted: null == lessonsCompleted
          ? _value.lessonsCompleted
          : lessonsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      cardsLearned: null == cardsLearned
          ? _value.cardsLearned
          : cardsLearned // ignore: cast_nullable_to_non_nullable
              as int,
      totalXp: null == totalXp
          ? _value.totalXp
          : totalXp // ignore: cast_nullable_to_non_nullable
              as int,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatsOverviewImpl implements _StatsOverview {
  const _$StatsOverviewImpl(
      {required this.registeredAt,
      this.displayName = 'Learner',
      this.lessonsCompleted = 0,
      this.cardsLearned = 0,
      this.totalXp = 0,
      this.currentStreak = 0,
      this.longestStreak = 0});

  @override
  final DateTime registeredAt;
  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final int lessonsCompleted;
  @override
  @JsonKey()
  final int cardsLearned;
  @override
  @JsonKey()
  final int totalXp;
  @override
  @JsonKey()
  final int currentStreak;
  @override
  @JsonKey()
  final int longestStreak;

  @override
  String toString() {
    return 'StatsOverview(registeredAt: $registeredAt, displayName: $displayName, lessonsCompleted: $lessonsCompleted, cardsLearned: $cardsLearned, totalXp: $totalXp, currentStreak: $currentStreak, longestStreak: $longestStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsOverviewImpl &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.lessonsCompleted, lessonsCompleted) ||
                other.lessonsCompleted == lessonsCompleted) &&
            (identical(other.cardsLearned, cardsLearned) ||
                other.cardsLearned == cardsLearned) &&
            (identical(other.totalXp, totalXp) || other.totalXp == totalXp) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registeredAt, displayName,
      lessonsCompleted, cardsLearned, totalXp, currentStreak, longestStreak);

  /// Create a copy of StatsOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsOverviewImplCopyWith<_$StatsOverviewImpl> get copyWith =>
      __$$StatsOverviewImplCopyWithImpl<_$StatsOverviewImpl>(this, _$identity);
}

abstract class _StatsOverview implements StatsOverview {
  const factory _StatsOverview(
      {required final DateTime registeredAt,
      final String displayName,
      final int lessonsCompleted,
      final int cardsLearned,
      final int totalXp,
      final int currentStreak,
      final int longestStreak}) = _$StatsOverviewImpl;

  @override
  DateTime get registeredAt;
  @override
  String get displayName;
  @override
  int get lessonsCompleted;
  @override
  int get cardsLearned;
  @override
  int get totalXp;
  @override
  int get currentStreak;
  @override
  int get longestStreak;

  /// Create a copy of StatsOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsOverviewImplCopyWith<_$StatsOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatsActivityEvent {
  DateTime get occurredAt => throw _privateConstructorUsedError;
  StatsActivitySource get source => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of StatsActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsActivityEventCopyWith<StatsActivityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsActivityEventCopyWith<$Res> {
  factory $StatsActivityEventCopyWith(
          StatsActivityEvent value, $Res Function(StatsActivityEvent) then) =
      _$StatsActivityEventCopyWithImpl<$Res, StatsActivityEvent>;
  @useResult
  $Res call({DateTime occurredAt, StatsActivitySource source, int count});
}

/// @nodoc
class _$StatsActivityEventCopyWithImpl<$Res, $Val extends StatsActivityEvent>
    implements $StatsActivityEventCopyWith<$Res> {
  _$StatsActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurredAt = null,
    Object? source = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      occurredAt: null == occurredAt
          ? _value.occurredAt
          : occurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StatsActivitySource,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsActivityEventImplCopyWith<$Res>
    implements $StatsActivityEventCopyWith<$Res> {
  factory _$$StatsActivityEventImplCopyWith(_$StatsActivityEventImpl value,
          $Res Function(_$StatsActivityEventImpl) then) =
      __$$StatsActivityEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime occurredAt, StatsActivitySource source, int count});
}

/// @nodoc
class __$$StatsActivityEventImplCopyWithImpl<$Res>
    extends _$StatsActivityEventCopyWithImpl<$Res, _$StatsActivityEventImpl>
    implements _$$StatsActivityEventImplCopyWith<$Res> {
  __$$StatsActivityEventImplCopyWithImpl(_$StatsActivityEventImpl _value,
      $Res Function(_$StatsActivityEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occurredAt = null,
    Object? source = null,
    Object? count = null,
  }) {
    return _then(_$StatsActivityEventImpl(
      occurredAt: null == occurredAt
          ? _value.occurredAt
          : occurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StatsActivitySource,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatsActivityEventImpl implements _StatsActivityEvent {
  const _$StatsActivityEventImpl(
      {required this.occurredAt, required this.source, this.count = 1});

  @override
  final DateTime occurredAt;
  @override
  final StatsActivitySource source;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'StatsActivityEvent(occurredAt: $occurredAt, source: $source, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsActivityEventImpl &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, occurredAt, source, count);

  /// Create a copy of StatsActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsActivityEventImplCopyWith<_$StatsActivityEventImpl> get copyWith =>
      __$$StatsActivityEventImplCopyWithImpl<_$StatsActivityEventImpl>(
          this, _$identity);
}

abstract class _StatsActivityEvent implements StatsActivityEvent {
  const factory _StatsActivityEvent(
      {required final DateTime occurredAt,
      required final StatsActivitySource source,
      final int count}) = _$StatsActivityEventImpl;

  @override
  DateTime get occurredAt;
  @override
  StatsActivitySource get source;
  @override
  int get count;

  /// Create a copy of StatsActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsActivityEventImplCopyWith<_$StatsActivityEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatsDashboard {
  StatsOverview get overview => throw _privateConstructorUsedError;
  List<StatsActivityEvent> get activityEvents =>
      throw _privateConstructorUsedError;

  /// Create a copy of StatsDashboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsDashboardCopyWith<StatsDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsDashboardCopyWith<$Res> {
  factory $StatsDashboardCopyWith(
          StatsDashboard value, $Res Function(StatsDashboard) then) =
      _$StatsDashboardCopyWithImpl<$Res, StatsDashboard>;
  @useResult
  $Res call({StatsOverview overview, List<StatsActivityEvent> activityEvents});

  $StatsOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class _$StatsDashboardCopyWithImpl<$Res, $Val extends StatsDashboard>
    implements $StatsDashboardCopyWith<$Res> {
  _$StatsDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsDashboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? activityEvents = null,
  }) {
    return _then(_value.copyWith(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as StatsOverview,
      activityEvents: null == activityEvents
          ? _value.activityEvents
          : activityEvents // ignore: cast_nullable_to_non_nullable
              as List<StatsActivityEvent>,
    ) as $Val);
  }

  /// Create a copy of StatsDashboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatsOverviewCopyWith<$Res> get overview {
    return $StatsOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsDashboardImplCopyWith<$Res>
    implements $StatsDashboardCopyWith<$Res> {
  factory _$$StatsDashboardImplCopyWith(_$StatsDashboardImpl value,
          $Res Function(_$StatsDashboardImpl) then) =
      __$$StatsDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatsOverview overview, List<StatsActivityEvent> activityEvents});

  @override
  $StatsOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class __$$StatsDashboardImplCopyWithImpl<$Res>
    extends _$StatsDashboardCopyWithImpl<$Res, _$StatsDashboardImpl>
    implements _$$StatsDashboardImplCopyWith<$Res> {
  __$$StatsDashboardImplCopyWithImpl(
      _$StatsDashboardImpl _value, $Res Function(_$StatsDashboardImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsDashboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? activityEvents = null,
  }) {
    return _then(_$StatsDashboardImpl(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as StatsOverview,
      activityEvents: null == activityEvents
          ? _value._activityEvents
          : activityEvents // ignore: cast_nullable_to_non_nullable
              as List<StatsActivityEvent>,
    ));
  }
}

/// @nodoc

class _$StatsDashboardImpl implements _StatsDashboard {
  const _$StatsDashboardImpl(
      {required this.overview,
      final List<StatsActivityEvent> activityEvents =
          const <StatsActivityEvent>[]})
      : _activityEvents = activityEvents;

  @override
  final StatsOverview overview;
  final List<StatsActivityEvent> _activityEvents;
  @override
  @JsonKey()
  List<StatsActivityEvent> get activityEvents {
    if (_activityEvents is EqualUnmodifiableListView) return _activityEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activityEvents);
  }

  @override
  String toString() {
    return 'StatsDashboard(overview: $overview, activityEvents: $activityEvents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsDashboardImpl &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality()
                .equals(other._activityEvents, _activityEvents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, overview,
      const DeepCollectionEquality().hash(_activityEvents));

  /// Create a copy of StatsDashboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsDashboardImplCopyWith<_$StatsDashboardImpl> get copyWith =>
      __$$StatsDashboardImplCopyWithImpl<_$StatsDashboardImpl>(
          this, _$identity);
}

abstract class _StatsDashboard implements StatsDashboard {
  const factory _StatsDashboard(
      {required final StatsOverview overview,
      final List<StatsActivityEvent> activityEvents}) = _$StatsDashboardImpl;

  @override
  StatsOverview get overview;
  @override
  List<StatsActivityEvent> get activityEvents;

  /// Create a copy of StatsDashboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsDashboardImplCopyWith<_$StatsDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatsChartBucket {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get shortLabel => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of StatsChartBucket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsChartBucketCopyWith<StatsChartBucket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsChartBucketCopyWith<$Res> {
  factory $StatsChartBucketCopyWith(
          StatsChartBucket value, $Res Function(StatsChartBucket) then) =
      _$StatsChartBucketCopyWithImpl<$Res, StatsChartBucket>;
  @useResult
  $Res call(
      {DateTime start,
      DateTime end,
      String label,
      String shortLabel,
      int count});
}

/// @nodoc
class _$StatsChartBucketCopyWithImpl<$Res, $Val extends StatsChartBucket>
    implements $StatsChartBucketCopyWith<$Res> {
  _$StatsChartBucketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsChartBucket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? label = null,
    Object? shortLabel = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      shortLabel: null == shortLabel
          ? _value.shortLabel
          : shortLabel // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsChartBucketImplCopyWith<$Res>
    implements $StatsChartBucketCopyWith<$Res> {
  factory _$$StatsChartBucketImplCopyWith(_$StatsChartBucketImpl value,
          $Res Function(_$StatsChartBucketImpl) then) =
      __$$StatsChartBucketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime start,
      DateTime end,
      String label,
      String shortLabel,
      int count});
}

/// @nodoc
class __$$StatsChartBucketImplCopyWithImpl<$Res>
    extends _$StatsChartBucketCopyWithImpl<$Res, _$StatsChartBucketImpl>
    implements _$$StatsChartBucketImplCopyWith<$Res> {
  __$$StatsChartBucketImplCopyWithImpl(_$StatsChartBucketImpl _value,
      $Res Function(_$StatsChartBucketImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsChartBucket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? label = null,
    Object? shortLabel = null,
    Object? count = null,
  }) {
    return _then(_$StatsChartBucketImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      shortLabel: null == shortLabel
          ? _value.shortLabel
          : shortLabel // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatsChartBucketImpl implements _StatsChartBucket {
  const _$StatsChartBucketImpl(
      {required this.start,
      required this.end,
      required this.label,
      required this.shortLabel,
      this.count = 0});

  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String label;
  @override
  final String shortLabel;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'StatsChartBucket(start: $start, end: $end, label: $label, shortLabel: $shortLabel, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsChartBucketImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.shortLabel, shortLabel) ||
                other.shortLabel == shortLabel) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, start, end, label, shortLabel, count);

  /// Create a copy of StatsChartBucket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsChartBucketImplCopyWith<_$StatsChartBucketImpl> get copyWith =>
      __$$StatsChartBucketImplCopyWithImpl<_$StatsChartBucketImpl>(
          this, _$identity);
}

abstract class _StatsChartBucket implements StatsChartBucket {
  const factory _StatsChartBucket(
      {required final DateTime start,
      required final DateTime end,
      required final String label,
      required final String shortLabel,
      final int count}) = _$StatsChartBucketImpl;

  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  String get label;
  @override
  String get shortLabel;
  @override
  int get count;

  /// Create a copy of StatsChartBucket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsChartBucketImplCopyWith<_$StatsChartBucketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatsHeatmapCell {
  DateTime get day => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get intensity => throw _privateConstructorUsedError;

  /// Create a copy of StatsHeatmapCell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsHeatmapCellCopyWith<StatsHeatmapCell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsHeatmapCellCopyWith<$Res> {
  factory $StatsHeatmapCellCopyWith(
          StatsHeatmapCell value, $Res Function(StatsHeatmapCell) then) =
      _$StatsHeatmapCellCopyWithImpl<$Res, StatsHeatmapCell>;
  @useResult
  $Res call({DateTime day, int count, int intensity});
}

/// @nodoc
class _$StatsHeatmapCellCopyWithImpl<$Res, $Val extends StatsHeatmapCell>
    implements $StatsHeatmapCellCopyWith<$Res> {
  _$StatsHeatmapCellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsHeatmapCell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? count = null,
    Object? intensity = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsHeatmapCellImplCopyWith<$Res>
    implements $StatsHeatmapCellCopyWith<$Res> {
  factory _$$StatsHeatmapCellImplCopyWith(_$StatsHeatmapCellImpl value,
          $Res Function(_$StatsHeatmapCellImpl) then) =
      __$$StatsHeatmapCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime day, int count, int intensity});
}

/// @nodoc
class __$$StatsHeatmapCellImplCopyWithImpl<$Res>
    extends _$StatsHeatmapCellCopyWithImpl<$Res, _$StatsHeatmapCellImpl>
    implements _$$StatsHeatmapCellImplCopyWith<$Res> {
  __$$StatsHeatmapCellImplCopyWithImpl(_$StatsHeatmapCellImpl _value,
      $Res Function(_$StatsHeatmapCellImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsHeatmapCell
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? count = null,
    Object? intensity = null,
  }) {
    return _then(_$StatsHeatmapCellImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatsHeatmapCellImpl implements _StatsHeatmapCell {
  const _$StatsHeatmapCellImpl(
      {required this.day, this.count = 0, this.intensity = 0});

  @override
  final DateTime day;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int intensity;

  @override
  String toString() {
    return 'StatsHeatmapCell(day: $day, count: $count, intensity: $intensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsHeatmapCellImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, count, intensity);

  /// Create a copy of StatsHeatmapCell
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsHeatmapCellImplCopyWith<_$StatsHeatmapCellImpl> get copyWith =>
      __$$StatsHeatmapCellImplCopyWithImpl<_$StatsHeatmapCellImpl>(
          this, _$identity);
}

abstract class _StatsHeatmapCell implements StatsHeatmapCell {
  const factory _StatsHeatmapCell(
      {required final DateTime day,
      final int count,
      final int intensity}) = _$StatsHeatmapCellImpl;

  @override
  DateTime get day;
  @override
  int get count;
  @override
  int get intensity;

  /// Create a copy of StatsHeatmapCell
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsHeatmapCellImplCopyWith<_$StatsHeatmapCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatsScreenState {
  StatsOverview get overview => throw _privateConstructorUsedError;
  StatsPeriod get period => throw _privateConstructorUsedError;
  List<StatsChartBucket> get chartBuckets => throw _privateConstructorUsedError;
  List<StatsHeatmapCell> get heatmapCells => throw _privateConstructorUsedError;
  int get totalActivity => throw _privateConstructorUsedError;
  int get peakBucketValue => throw _privateConstructorUsedError;
  int get heatmapMaxCount => throw _privateConstructorUsedError;
  int get activeDays => throw _privateConstructorUsedError;

  /// Create a copy of StatsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsScreenStateCopyWith<StatsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsScreenStateCopyWith<$Res> {
  factory $StatsScreenStateCopyWith(
          StatsScreenState value, $Res Function(StatsScreenState) then) =
      _$StatsScreenStateCopyWithImpl<$Res, StatsScreenState>;
  @useResult
  $Res call(
      {StatsOverview overview,
      StatsPeriod period,
      List<StatsChartBucket> chartBuckets,
      List<StatsHeatmapCell> heatmapCells,
      int totalActivity,
      int peakBucketValue,
      int heatmapMaxCount,
      int activeDays});

  $StatsOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class _$StatsScreenStateCopyWithImpl<$Res, $Val extends StatsScreenState>
    implements $StatsScreenStateCopyWith<$Res> {
  _$StatsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? period = null,
    Object? chartBuckets = null,
    Object? heatmapCells = null,
    Object? totalActivity = null,
    Object? peakBucketValue = null,
    Object? heatmapMaxCount = null,
    Object? activeDays = null,
  }) {
    return _then(_value.copyWith(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as StatsOverview,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as StatsPeriod,
      chartBuckets: null == chartBuckets
          ? _value.chartBuckets
          : chartBuckets // ignore: cast_nullable_to_non_nullable
              as List<StatsChartBucket>,
      heatmapCells: null == heatmapCells
          ? _value.heatmapCells
          : heatmapCells // ignore: cast_nullable_to_non_nullable
              as List<StatsHeatmapCell>,
      totalActivity: null == totalActivity
          ? _value.totalActivity
          : totalActivity // ignore: cast_nullable_to_non_nullable
              as int,
      peakBucketValue: null == peakBucketValue
          ? _value.peakBucketValue
          : peakBucketValue // ignore: cast_nullable_to_non_nullable
              as int,
      heatmapMaxCount: null == heatmapMaxCount
          ? _value.heatmapMaxCount
          : heatmapMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      activeDays: null == activeDays
          ? _value.activeDays
          : activeDays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of StatsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatsOverviewCopyWith<$Res> get overview {
    return $StatsOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsScreenStateImplCopyWith<$Res>
    implements $StatsScreenStateCopyWith<$Res> {
  factory _$$StatsScreenStateImplCopyWith(_$StatsScreenStateImpl value,
          $Res Function(_$StatsScreenStateImpl) then) =
      __$$StatsScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatsOverview overview,
      StatsPeriod period,
      List<StatsChartBucket> chartBuckets,
      List<StatsHeatmapCell> heatmapCells,
      int totalActivity,
      int peakBucketValue,
      int heatmapMaxCount,
      int activeDays});

  @override
  $StatsOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class __$$StatsScreenStateImplCopyWithImpl<$Res>
    extends _$StatsScreenStateCopyWithImpl<$Res, _$StatsScreenStateImpl>
    implements _$$StatsScreenStateImplCopyWith<$Res> {
  __$$StatsScreenStateImplCopyWithImpl(_$StatsScreenStateImpl _value,
      $Res Function(_$StatsScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? period = null,
    Object? chartBuckets = null,
    Object? heatmapCells = null,
    Object? totalActivity = null,
    Object? peakBucketValue = null,
    Object? heatmapMaxCount = null,
    Object? activeDays = null,
  }) {
    return _then(_$StatsScreenStateImpl(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as StatsOverview,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as StatsPeriod,
      chartBuckets: null == chartBuckets
          ? _value._chartBuckets
          : chartBuckets // ignore: cast_nullable_to_non_nullable
              as List<StatsChartBucket>,
      heatmapCells: null == heatmapCells
          ? _value._heatmapCells
          : heatmapCells // ignore: cast_nullable_to_non_nullable
              as List<StatsHeatmapCell>,
      totalActivity: null == totalActivity
          ? _value.totalActivity
          : totalActivity // ignore: cast_nullable_to_non_nullable
              as int,
      peakBucketValue: null == peakBucketValue
          ? _value.peakBucketValue
          : peakBucketValue // ignore: cast_nullable_to_non_nullable
              as int,
      heatmapMaxCount: null == heatmapMaxCount
          ? _value.heatmapMaxCount
          : heatmapMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      activeDays: null == activeDays
          ? _value.activeDays
          : activeDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatsScreenStateImpl extends _StatsScreenState {
  const _$StatsScreenStateImpl(
      {required this.overview,
      required this.period,
      final List<StatsChartBucket> chartBuckets = const <StatsChartBucket>[],
      final List<StatsHeatmapCell> heatmapCells = const <StatsHeatmapCell>[],
      this.totalActivity = 0,
      this.peakBucketValue = 0,
      this.heatmapMaxCount = 0,
      this.activeDays = 0})
      : _chartBuckets = chartBuckets,
        _heatmapCells = heatmapCells,
        super._();

  @override
  final StatsOverview overview;
  @override
  final StatsPeriod period;
  final List<StatsChartBucket> _chartBuckets;
  @override
  @JsonKey()
  List<StatsChartBucket> get chartBuckets {
    if (_chartBuckets is EqualUnmodifiableListView) return _chartBuckets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartBuckets);
  }

  final List<StatsHeatmapCell> _heatmapCells;
  @override
  @JsonKey()
  List<StatsHeatmapCell> get heatmapCells {
    if (_heatmapCells is EqualUnmodifiableListView) return _heatmapCells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heatmapCells);
  }

  @override
  @JsonKey()
  final int totalActivity;
  @override
  @JsonKey()
  final int peakBucketValue;
  @override
  @JsonKey()
  final int heatmapMaxCount;
  @override
  @JsonKey()
  final int activeDays;

  @override
  String toString() {
    return 'StatsScreenState(overview: $overview, period: $period, chartBuckets: $chartBuckets, heatmapCells: $heatmapCells, totalActivity: $totalActivity, peakBucketValue: $peakBucketValue, heatmapMaxCount: $heatmapMaxCount, activeDays: $activeDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsScreenStateImpl &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.period, period) || other.period == period) &&
            const DeepCollectionEquality()
                .equals(other._chartBuckets, _chartBuckets) &&
            const DeepCollectionEquality()
                .equals(other._heatmapCells, _heatmapCells) &&
            (identical(other.totalActivity, totalActivity) ||
                other.totalActivity == totalActivity) &&
            (identical(other.peakBucketValue, peakBucketValue) ||
                other.peakBucketValue == peakBucketValue) &&
            (identical(other.heatmapMaxCount, heatmapMaxCount) ||
                other.heatmapMaxCount == heatmapMaxCount) &&
            (identical(other.activeDays, activeDays) ||
                other.activeDays == activeDays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      overview,
      period,
      const DeepCollectionEquality().hash(_chartBuckets),
      const DeepCollectionEquality().hash(_heatmapCells),
      totalActivity,
      peakBucketValue,
      heatmapMaxCount,
      activeDays);

  /// Create a copy of StatsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsScreenStateImplCopyWith<_$StatsScreenStateImpl> get copyWith =>
      __$$StatsScreenStateImplCopyWithImpl<_$StatsScreenStateImpl>(
          this, _$identity);
}

abstract class _StatsScreenState extends StatsScreenState {
  const factory _StatsScreenState(
      {required final StatsOverview overview,
      required final StatsPeriod period,
      final List<StatsChartBucket> chartBuckets,
      final List<StatsHeatmapCell> heatmapCells,
      final int totalActivity,
      final int peakBucketValue,
      final int heatmapMaxCount,
      final int activeDays}) = _$StatsScreenStateImpl;
  const _StatsScreenState._() : super._();

  @override
  StatsOverview get overview;
  @override
  StatsPeriod get period;
  @override
  List<StatsChartBucket> get chartBuckets;
  @override
  List<StatsHeatmapCell> get heatmapCells;
  @override
  int get totalActivity;
  @override
  int get peakBucketValue;
  @override
  int get heatmapMaxCount;
  @override
  int get activeDays;

  /// Create a copy of StatsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsScreenStateImplCopyWith<_$StatsScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
