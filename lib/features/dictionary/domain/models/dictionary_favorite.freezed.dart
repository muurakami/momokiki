// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DictionaryFavorite _$DictionaryFavoriteFromJson(Map<String, dynamic> json) {
  return _DictionaryFavorite.fromJson(json);
}

/// @nodoc
mixin _$DictionaryFavorite {
  String get id => throw _privateConstructorUsedError;
  String get entryKey => throw _privateConstructorUsedError;
  DictionaryLanguage get language => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  DictionaryEntry get entry => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DictionaryFavorite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryFavorite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryFavoriteCopyWith<DictionaryFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryFavoriteCopyWith<$Res> {
  factory $DictionaryFavoriteCopyWith(
          DictionaryFavorite value, $Res Function(DictionaryFavorite) then) =
      _$DictionaryFavoriteCopyWithImpl<$Res, DictionaryFavorite>;
  @useResult
  $Res call(
      {String id,
      String entryKey,
      DictionaryLanguage language,
      String title,
      String? subtitle,
      DictionaryEntry entry,
      DateTime createdAt});

  $DictionaryEntryCopyWith<$Res> get entry;
}

/// @nodoc
class _$DictionaryFavoriteCopyWithImpl<$Res, $Val extends DictionaryFavorite>
    implements $DictionaryFavoriteCopyWith<$Res> {
  _$DictionaryFavoriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryFavorite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entryKey = null,
    Object? language = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? entry = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entryKey: null == entryKey
          ? _value.entryKey
          : entryKey // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as DictionaryLanguage,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as DictionaryEntry,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of DictionaryFavorite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DictionaryEntryCopyWith<$Res> get entry {
    return $DictionaryEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DictionaryFavoriteImplCopyWith<$Res>
    implements $DictionaryFavoriteCopyWith<$Res> {
  factory _$$DictionaryFavoriteImplCopyWith(_$DictionaryFavoriteImpl value,
          $Res Function(_$DictionaryFavoriteImpl) then) =
      __$$DictionaryFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String entryKey,
      DictionaryLanguage language,
      String title,
      String? subtitle,
      DictionaryEntry entry,
      DateTime createdAt});

  @override
  $DictionaryEntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$DictionaryFavoriteImplCopyWithImpl<$Res>
    extends _$DictionaryFavoriteCopyWithImpl<$Res, _$DictionaryFavoriteImpl>
    implements _$$DictionaryFavoriteImplCopyWith<$Res> {
  __$$DictionaryFavoriteImplCopyWithImpl(_$DictionaryFavoriteImpl _value,
      $Res Function(_$DictionaryFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryFavorite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entryKey = null,
    Object? language = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? entry = null,
    Object? createdAt = null,
  }) {
    return _then(_$DictionaryFavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entryKey: null == entryKey
          ? _value.entryKey
          : entryKey // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as DictionaryLanguage,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as DictionaryEntry,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryFavoriteImpl extends _DictionaryFavorite {
  const _$DictionaryFavoriteImpl(
      {required this.id,
      required this.entryKey,
      required this.language,
      required this.title,
      this.subtitle,
      required this.entry,
      required this.createdAt})
      : super._();

  factory _$DictionaryFavoriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryFavoriteImplFromJson(json);

  @override
  final String id;
  @override
  final String entryKey;
  @override
  final DictionaryLanguage language;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final DictionaryEntry entry;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DictionaryFavorite(id: $id, entryKey: $entryKey, language: $language, title: $title, subtitle: $subtitle, entry: $entry, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryFavoriteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entryKey, entryKey) ||
                other.entryKey == entryKey) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.entry, entry) || other.entry == entry) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, entryKey, language, title, subtitle, entry, createdAt);

  /// Create a copy of DictionaryFavorite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryFavoriteImplCopyWith<_$DictionaryFavoriteImpl> get copyWith =>
      __$$DictionaryFavoriteImplCopyWithImpl<_$DictionaryFavoriteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryFavoriteImplToJson(
      this,
    );
  }
}

abstract class _DictionaryFavorite extends DictionaryFavorite {
  const factory _DictionaryFavorite(
      {required final String id,
      required final String entryKey,
      required final DictionaryLanguage language,
      required final String title,
      final String? subtitle,
      required final DictionaryEntry entry,
      required final DateTime createdAt}) = _$DictionaryFavoriteImpl;
  const _DictionaryFavorite._() : super._();

  factory _DictionaryFavorite.fromJson(Map<String, dynamic> json) =
      _$DictionaryFavoriteImpl.fromJson;

  @override
  String get id;
  @override
  String get entryKey;
  @override
  DictionaryLanguage get language;
  @override
  String get title;
  @override
  String? get subtitle;
  @override
  DictionaryEntry get entry;
  @override
  DateTime get createdAt;

  /// Create a copy of DictionaryFavorite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryFavoriteImplCopyWith<_$DictionaryFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
