// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_deck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashcardDeck _$FlashcardDeckFromJson(Map<String, dynamic> json) {
  return _FlashcardDeck.fromJson(json);
}

/// @nodoc
mixin _$FlashcardDeck {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get sourceType => throw _privateConstructorUsedError;
  int? get ankiDeckId => throw _privateConstructorUsedError;
  int get maxNewPerDay => throw _privateConstructorUsedError;
  int get maxReviewsPerDay => throw _privateConstructorUsedError;
  int get dueCount => throw _privateConstructorUsedError;
  int get newCount => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FlashcardDeck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardDeck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardDeckCopyWith<FlashcardDeck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardDeckCopyWith<$Res> {
  factory $FlashcardDeckCopyWith(
          FlashcardDeck value, $Res Function(FlashcardDeck) then) =
      _$FlashcardDeckCopyWithImpl<$Res, FlashcardDeck>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String sourceType,
      int? ankiDeckId,
      int maxNewPerDay,
      int maxReviewsPerDay,
      int dueCount,
      int newCount,
      int reviewCount,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$FlashcardDeckCopyWithImpl<$Res, $Val extends FlashcardDeck>
    implements $FlashcardDeckCopyWith<$Res> {
  _$FlashcardDeckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardDeck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? sourceType = null,
    Object? ankiDeckId = freezed,
    Object? maxNewPerDay = null,
    Object? maxReviewsPerDay = null,
    Object? dueCount = null,
    Object? newCount = null,
    Object? reviewCount = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      ankiDeckId: freezed == ankiDeckId
          ? _value.ankiDeckId
          : ankiDeckId // ignore: cast_nullable_to_non_nullable
              as int?,
      maxNewPerDay: null == maxNewPerDay
          ? _value.maxNewPerDay
          : maxNewPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      maxReviewsPerDay: null == maxReviewsPerDay
          ? _value.maxReviewsPerDay
          : maxReviewsPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      dueCount: null == dueCount
          ? _value.dueCount
          : dueCount // ignore: cast_nullable_to_non_nullable
              as int,
      newCount: null == newCount
          ? _value.newCount
          : newCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardDeckImplCopyWith<$Res>
    implements $FlashcardDeckCopyWith<$Res> {
  factory _$$FlashcardDeckImplCopyWith(
          _$FlashcardDeckImpl value, $Res Function(_$FlashcardDeckImpl) then) =
      __$$FlashcardDeckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String sourceType,
      int? ankiDeckId,
      int maxNewPerDay,
      int maxReviewsPerDay,
      int dueCount,
      int newCount,
      int reviewCount,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$FlashcardDeckImplCopyWithImpl<$Res>
    extends _$FlashcardDeckCopyWithImpl<$Res, _$FlashcardDeckImpl>
    implements _$$FlashcardDeckImplCopyWith<$Res> {
  __$$FlashcardDeckImplCopyWithImpl(
      _$FlashcardDeckImpl _value, $Res Function(_$FlashcardDeckImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardDeck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? sourceType = null,
    Object? ankiDeckId = freezed,
    Object? maxNewPerDay = null,
    Object? maxReviewsPerDay = null,
    Object? dueCount = null,
    Object? newCount = null,
    Object? reviewCount = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FlashcardDeckImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      ankiDeckId: freezed == ankiDeckId
          ? _value.ankiDeckId
          : ankiDeckId // ignore: cast_nullable_to_non_nullable
              as int?,
      maxNewPerDay: null == maxNewPerDay
          ? _value.maxNewPerDay
          : maxNewPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      maxReviewsPerDay: null == maxReviewsPerDay
          ? _value.maxReviewsPerDay
          : maxReviewsPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      dueCount: null == dueCount
          ? _value.dueCount
          : dueCount // ignore: cast_nullable_to_non_nullable
              as int,
      newCount: null == newCount
          ? _value.newCount
          : newCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardDeckImpl implements _FlashcardDeck {
  const _$FlashcardDeckImpl(
      {required this.id,
      required this.name,
      this.description,
      this.sourceType = 'manual',
      this.ankiDeckId,
      this.maxNewPerDay = 20,
      this.maxReviewsPerDay = 200,
      this.dueCount = 0,
      this.newCount = 0,
      this.reviewCount = 0,
      this.createdAt,
      this.updatedAt});

  factory _$FlashcardDeckImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardDeckImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final String sourceType;
  @override
  final int? ankiDeckId;
  @override
  @JsonKey()
  final int maxNewPerDay;
  @override
  @JsonKey()
  final int maxReviewsPerDay;
  @override
  @JsonKey()
  final int dueCount;
  @override
  @JsonKey()
  final int newCount;
  @override
  @JsonKey()
  final int reviewCount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FlashcardDeck(id: $id, name: $name, description: $description, sourceType: $sourceType, ankiDeckId: $ankiDeckId, maxNewPerDay: $maxNewPerDay, maxReviewsPerDay: $maxReviewsPerDay, dueCount: $dueCount, newCount: $newCount, reviewCount: $reviewCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardDeckImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.ankiDeckId, ankiDeckId) ||
                other.ankiDeckId == ankiDeckId) &&
            (identical(other.maxNewPerDay, maxNewPerDay) ||
                other.maxNewPerDay == maxNewPerDay) &&
            (identical(other.maxReviewsPerDay, maxReviewsPerDay) ||
                other.maxReviewsPerDay == maxReviewsPerDay) &&
            (identical(other.dueCount, dueCount) ||
                other.dueCount == dueCount) &&
            (identical(other.newCount, newCount) ||
                other.newCount == newCount) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      sourceType,
      ankiDeckId,
      maxNewPerDay,
      maxReviewsPerDay,
      dueCount,
      newCount,
      reviewCount,
      createdAt,
      updatedAt);

  /// Create a copy of FlashcardDeck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardDeckImplCopyWith<_$FlashcardDeckImpl> get copyWith =>
      __$$FlashcardDeckImplCopyWithImpl<_$FlashcardDeckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardDeckImplToJson(
      this,
    );
  }
}

abstract class _FlashcardDeck implements FlashcardDeck {
  const factory _FlashcardDeck(
      {required final String id,
      required final String name,
      final String? description,
      final String sourceType,
      final int? ankiDeckId,
      final int maxNewPerDay,
      final int maxReviewsPerDay,
      final int dueCount,
      final int newCount,
      final int reviewCount,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$FlashcardDeckImpl;

  factory _FlashcardDeck.fromJson(Map<String, dynamic> json) =
      _$FlashcardDeckImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get sourceType;
  @override
  int? get ankiDeckId;
  @override
  int get maxNewPerDay;
  @override
  int get maxReviewsPerDay;
  @override
  int get dueCount;
  @override
  int get newCount;
  @override
  int get reviewCount;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of FlashcardDeck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardDeckImplCopyWith<_$FlashcardDeckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
