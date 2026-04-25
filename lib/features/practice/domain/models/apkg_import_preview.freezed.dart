// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apkg_import_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApkgImportPreview _$ApkgImportPreviewFromJson(Map<String, dynamic> json) {
  return _ApkgImportPreview.fromJson(json);
}

/// @nodoc
mixin _$ApkgImportPreview {
  List<String> get deckNames => throw _privateConstructorUsedError;
  int get cardCount => throw _privateConstructorUsedError;
  int get mediaCount => throw _privateConstructorUsedError;
  String? get warning => throw _privateConstructorUsedError;

  /// Serializes this ApkgImportPreview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApkgImportPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApkgImportPreviewCopyWith<ApkgImportPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApkgImportPreviewCopyWith<$Res> {
  factory $ApkgImportPreviewCopyWith(
          ApkgImportPreview value, $Res Function(ApkgImportPreview) then) =
      _$ApkgImportPreviewCopyWithImpl<$Res, ApkgImportPreview>;
  @useResult
  $Res call(
      {List<String> deckNames, int cardCount, int mediaCount, String? warning});
}

/// @nodoc
class _$ApkgImportPreviewCopyWithImpl<$Res, $Val extends ApkgImportPreview>
    implements $ApkgImportPreviewCopyWith<$Res> {
  _$ApkgImportPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApkgImportPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckNames = null,
    Object? cardCount = null,
    Object? mediaCount = null,
    Object? warning = freezed,
  }) {
    return _then(_value.copyWith(
      deckNames: null == deckNames
          ? _value.deckNames
          : deckNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cardCount: null == cardCount
          ? _value.cardCount
          : cardCount // ignore: cast_nullable_to_non_nullable
              as int,
      mediaCount: null == mediaCount
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int,
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApkgImportPreviewImplCopyWith<$Res>
    implements $ApkgImportPreviewCopyWith<$Res> {
  factory _$$ApkgImportPreviewImplCopyWith(_$ApkgImportPreviewImpl value,
          $Res Function(_$ApkgImportPreviewImpl) then) =
      __$$ApkgImportPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> deckNames, int cardCount, int mediaCount, String? warning});
}

/// @nodoc
class __$$ApkgImportPreviewImplCopyWithImpl<$Res>
    extends _$ApkgImportPreviewCopyWithImpl<$Res, _$ApkgImportPreviewImpl>
    implements _$$ApkgImportPreviewImplCopyWith<$Res> {
  __$$ApkgImportPreviewImplCopyWithImpl(_$ApkgImportPreviewImpl _value,
      $Res Function(_$ApkgImportPreviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApkgImportPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckNames = null,
    Object? cardCount = null,
    Object? mediaCount = null,
    Object? warning = freezed,
  }) {
    return _then(_$ApkgImportPreviewImpl(
      deckNames: null == deckNames
          ? _value._deckNames
          : deckNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cardCount: null == cardCount
          ? _value.cardCount
          : cardCount // ignore: cast_nullable_to_non_nullable
              as int,
      mediaCount: null == mediaCount
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int,
      warning: freezed == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApkgImportPreviewImpl implements _ApkgImportPreview {
  const _$ApkgImportPreviewImpl(
      {final List<String> deckNames = const <String>[],
      this.cardCount = 0,
      this.mediaCount = 0,
      this.warning})
      : _deckNames = deckNames;

  factory _$ApkgImportPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApkgImportPreviewImplFromJson(json);

  final List<String> _deckNames;
  @override
  @JsonKey()
  List<String> get deckNames {
    if (_deckNames is EqualUnmodifiableListView) return _deckNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deckNames);
  }

  @override
  @JsonKey()
  final int cardCount;
  @override
  @JsonKey()
  final int mediaCount;
  @override
  final String? warning;

  @override
  String toString() {
    return 'ApkgImportPreview(deckNames: $deckNames, cardCount: $cardCount, mediaCount: $mediaCount, warning: $warning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApkgImportPreviewImpl &&
            const DeepCollectionEquality()
                .equals(other._deckNames, _deckNames) &&
            (identical(other.cardCount, cardCount) ||
                other.cardCount == cardCount) &&
            (identical(other.mediaCount, mediaCount) ||
                other.mediaCount == mediaCount) &&
            (identical(other.warning, warning) || other.warning == warning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deckNames),
      cardCount,
      mediaCount,
      warning);

  /// Create a copy of ApkgImportPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApkgImportPreviewImplCopyWith<_$ApkgImportPreviewImpl> get copyWith =>
      __$$ApkgImportPreviewImplCopyWithImpl<_$ApkgImportPreviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApkgImportPreviewImplToJson(
      this,
    );
  }
}

abstract class _ApkgImportPreview implements ApkgImportPreview {
  const factory _ApkgImportPreview(
      {final List<String> deckNames,
      final int cardCount,
      final int mediaCount,
      final String? warning}) = _$ApkgImportPreviewImpl;

  factory _ApkgImportPreview.fromJson(Map<String, dynamic> json) =
      _$ApkgImportPreviewImpl.fromJson;

  @override
  List<String> get deckNames;
  @override
  int get cardCount;
  @override
  int get mediaCount;
  @override
  String? get warning;

  /// Create a copy of ApkgImportPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApkgImportPreviewImplCopyWith<_$ApkgImportPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
