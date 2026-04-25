// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashcardReview _$FlashcardReviewFromJson(Map<String, dynamic> json) {
  return _FlashcardReview.fromJson(json);
}

/// @nodoc
mixin _$FlashcardReview {
  String get id => throw _privateConstructorUsedError;
  String get cardId => throw _privateConstructorUsedError;
  DateTime get reviewedAt => throw _privateConstructorUsedError;
  ReviewRating get rating => throw _privateConstructorUsedError;
  String get queueBefore => throw _privateConstructorUsedError;
  String get queueAfter => throw _privateConstructorUsedError;
  int get intervalBeforeDays => throw _privateConstructorUsedError;
  int get intervalAfterDays => throw _privateConstructorUsedError;
  int get easeBeforeMilli => throw _privateConstructorUsedError;
  int get easeAfterMilli => throw _privateConstructorUsedError;
  int? get elapsedMs => throw _privateConstructorUsedError;

  /// Serializes this FlashcardReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardReviewCopyWith<FlashcardReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardReviewCopyWith<$Res> {
  factory $FlashcardReviewCopyWith(
          FlashcardReview value, $Res Function(FlashcardReview) then) =
      _$FlashcardReviewCopyWithImpl<$Res, FlashcardReview>;
  @useResult
  $Res call(
      {String id,
      String cardId,
      DateTime reviewedAt,
      ReviewRating rating,
      String queueBefore,
      String queueAfter,
      int intervalBeforeDays,
      int intervalAfterDays,
      int easeBeforeMilli,
      int easeAfterMilli,
      int? elapsedMs});
}

/// @nodoc
class _$FlashcardReviewCopyWithImpl<$Res, $Val extends FlashcardReview>
    implements $FlashcardReviewCopyWith<$Res> {
  _$FlashcardReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardId = null,
    Object? reviewedAt = null,
    Object? rating = null,
    Object? queueBefore = null,
    Object? queueAfter = null,
    Object? intervalBeforeDays = null,
    Object? intervalAfterDays = null,
    Object? easeBeforeMilli = null,
    Object? easeAfterMilli = null,
    Object? elapsedMs = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewedAt: null == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as ReviewRating,
      queueBefore: null == queueBefore
          ? _value.queueBefore
          : queueBefore // ignore: cast_nullable_to_non_nullable
              as String,
      queueAfter: null == queueAfter
          ? _value.queueAfter
          : queueAfter // ignore: cast_nullable_to_non_nullable
              as String,
      intervalBeforeDays: null == intervalBeforeDays
          ? _value.intervalBeforeDays
          : intervalBeforeDays // ignore: cast_nullable_to_non_nullable
              as int,
      intervalAfterDays: null == intervalAfterDays
          ? _value.intervalAfterDays
          : intervalAfterDays // ignore: cast_nullable_to_non_nullable
              as int,
      easeBeforeMilli: null == easeBeforeMilli
          ? _value.easeBeforeMilli
          : easeBeforeMilli // ignore: cast_nullable_to_non_nullable
              as int,
      easeAfterMilli: null == easeAfterMilli
          ? _value.easeAfterMilli
          : easeAfterMilli // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedMs: freezed == elapsedMs
          ? _value.elapsedMs
          : elapsedMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardReviewImplCopyWith<$Res>
    implements $FlashcardReviewCopyWith<$Res> {
  factory _$$FlashcardReviewImplCopyWith(_$FlashcardReviewImpl value,
          $Res Function(_$FlashcardReviewImpl) then) =
      __$$FlashcardReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String cardId,
      DateTime reviewedAt,
      ReviewRating rating,
      String queueBefore,
      String queueAfter,
      int intervalBeforeDays,
      int intervalAfterDays,
      int easeBeforeMilli,
      int easeAfterMilli,
      int? elapsedMs});
}

/// @nodoc
class __$$FlashcardReviewImplCopyWithImpl<$Res>
    extends _$FlashcardReviewCopyWithImpl<$Res, _$FlashcardReviewImpl>
    implements _$$FlashcardReviewImplCopyWith<$Res> {
  __$$FlashcardReviewImplCopyWithImpl(
      _$FlashcardReviewImpl _value, $Res Function(_$FlashcardReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardId = null,
    Object? reviewedAt = null,
    Object? rating = null,
    Object? queueBefore = null,
    Object? queueAfter = null,
    Object? intervalBeforeDays = null,
    Object? intervalAfterDays = null,
    Object? easeBeforeMilli = null,
    Object? easeAfterMilli = null,
    Object? elapsedMs = freezed,
  }) {
    return _then(_$FlashcardReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewedAt: null == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as ReviewRating,
      queueBefore: null == queueBefore
          ? _value.queueBefore
          : queueBefore // ignore: cast_nullable_to_non_nullable
              as String,
      queueAfter: null == queueAfter
          ? _value.queueAfter
          : queueAfter // ignore: cast_nullable_to_non_nullable
              as String,
      intervalBeforeDays: null == intervalBeforeDays
          ? _value.intervalBeforeDays
          : intervalBeforeDays // ignore: cast_nullable_to_non_nullable
              as int,
      intervalAfterDays: null == intervalAfterDays
          ? _value.intervalAfterDays
          : intervalAfterDays // ignore: cast_nullable_to_non_nullable
              as int,
      easeBeforeMilli: null == easeBeforeMilli
          ? _value.easeBeforeMilli
          : easeBeforeMilli // ignore: cast_nullable_to_non_nullable
              as int,
      easeAfterMilli: null == easeAfterMilli
          ? _value.easeAfterMilli
          : easeAfterMilli // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedMs: freezed == elapsedMs
          ? _value.elapsedMs
          : elapsedMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardReviewImpl implements _FlashcardReview {
  const _$FlashcardReviewImpl(
      {required this.id,
      required this.cardId,
      required this.reviewedAt,
      required this.rating,
      required this.queueBefore,
      required this.queueAfter,
      this.intervalBeforeDays = 0,
      this.intervalAfterDays = 0,
      this.easeBeforeMilli = 2500,
      this.easeAfterMilli = 2500,
      this.elapsedMs});

  factory _$FlashcardReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardReviewImplFromJson(json);

  @override
  final String id;
  @override
  final String cardId;
  @override
  final DateTime reviewedAt;
  @override
  final ReviewRating rating;
  @override
  final String queueBefore;
  @override
  final String queueAfter;
  @override
  @JsonKey()
  final int intervalBeforeDays;
  @override
  @JsonKey()
  final int intervalAfterDays;
  @override
  @JsonKey()
  final int easeBeforeMilli;
  @override
  @JsonKey()
  final int easeAfterMilli;
  @override
  final int? elapsedMs;

  @override
  String toString() {
    return 'FlashcardReview(id: $id, cardId: $cardId, reviewedAt: $reviewedAt, rating: $rating, queueBefore: $queueBefore, queueAfter: $queueAfter, intervalBeforeDays: $intervalBeforeDays, intervalAfterDays: $intervalAfterDays, easeBeforeMilli: $easeBeforeMilli, easeAfterMilli: $easeAfterMilli, elapsedMs: $elapsedMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.queueBefore, queueBefore) ||
                other.queueBefore == queueBefore) &&
            (identical(other.queueAfter, queueAfter) ||
                other.queueAfter == queueAfter) &&
            (identical(other.intervalBeforeDays, intervalBeforeDays) ||
                other.intervalBeforeDays == intervalBeforeDays) &&
            (identical(other.intervalAfterDays, intervalAfterDays) ||
                other.intervalAfterDays == intervalAfterDays) &&
            (identical(other.easeBeforeMilli, easeBeforeMilli) ||
                other.easeBeforeMilli == easeBeforeMilli) &&
            (identical(other.easeAfterMilli, easeAfterMilli) ||
                other.easeAfterMilli == easeAfterMilli) &&
            (identical(other.elapsedMs, elapsedMs) ||
                other.elapsedMs == elapsedMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
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

  /// Create a copy of FlashcardReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardReviewImplCopyWith<_$FlashcardReviewImpl> get copyWith =>
      __$$FlashcardReviewImplCopyWithImpl<_$FlashcardReviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardReviewImplToJson(
      this,
    );
  }
}

abstract class _FlashcardReview implements FlashcardReview {
  const factory _FlashcardReview(
      {required final String id,
      required final String cardId,
      required final DateTime reviewedAt,
      required final ReviewRating rating,
      required final String queueBefore,
      required final String queueAfter,
      final int intervalBeforeDays,
      final int intervalAfterDays,
      final int easeBeforeMilli,
      final int easeAfterMilli,
      final int? elapsedMs}) = _$FlashcardReviewImpl;

  factory _FlashcardReview.fromJson(Map<String, dynamic> json) =
      _$FlashcardReviewImpl.fromJson;

  @override
  String get id;
  @override
  String get cardId;
  @override
  DateTime get reviewedAt;
  @override
  ReviewRating get rating;
  @override
  String get queueBefore;
  @override
  String get queueAfter;
  @override
  int get intervalBeforeDays;
  @override
  int get intervalAfterDays;
  @override
  int get easeBeforeMilli;
  @override
  int get easeAfterMilli;
  @override
  int? get elapsedMs;

  /// Create a copy of FlashcardReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardReviewImplCopyWith<_$FlashcardReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
