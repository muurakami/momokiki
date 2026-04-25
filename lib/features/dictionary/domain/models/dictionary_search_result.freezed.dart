// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DictionarySearchResult {
  String get query => throw _privateConstructorUsedError;
  DictionaryQueryLanguageMode get mode => throw _privateConstructorUsedError;
  List<DictionaryJapaneseEntry> get japaneseEntries =>
      throw _privateConstructorUsedError;
  List<DictionaryEnglishEntry> get englishEntries =>
      throw _privateConstructorUsedError;

  /// Create a copy of DictionarySearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionarySearchResultCopyWith<DictionarySearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionarySearchResultCopyWith<$Res> {
  factory $DictionarySearchResultCopyWith(DictionarySearchResult value,
          $Res Function(DictionarySearchResult) then) =
      _$DictionarySearchResultCopyWithImpl<$Res, DictionarySearchResult>;
  @useResult
  $Res call(
      {String query,
      DictionaryQueryLanguageMode mode,
      List<DictionaryJapaneseEntry> japaneseEntries,
      List<DictionaryEnglishEntry> englishEntries});
}

/// @nodoc
class _$DictionarySearchResultCopyWithImpl<$Res,
        $Val extends DictionarySearchResult>
    implements $DictionarySearchResultCopyWith<$Res> {
  _$DictionarySearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionarySearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? mode = null,
    Object? japaneseEntries = null,
    Object? englishEntries = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DictionaryQueryLanguageMode,
      japaneseEntries: null == japaneseEntries
          ? _value.japaneseEntries
          : japaneseEntries // ignore: cast_nullable_to_non_nullable
              as List<DictionaryJapaneseEntry>,
      englishEntries: null == englishEntries
          ? _value.englishEntries
          : englishEntries // ignore: cast_nullable_to_non_nullable
              as List<DictionaryEnglishEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionarySearchResultImplCopyWith<$Res>
    implements $DictionarySearchResultCopyWith<$Res> {
  factory _$$DictionarySearchResultImplCopyWith(
          _$DictionarySearchResultImpl value,
          $Res Function(_$DictionarySearchResultImpl) then) =
      __$$DictionarySearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      DictionaryQueryLanguageMode mode,
      List<DictionaryJapaneseEntry> japaneseEntries,
      List<DictionaryEnglishEntry> englishEntries});
}

/// @nodoc
class __$$DictionarySearchResultImplCopyWithImpl<$Res>
    extends _$DictionarySearchResultCopyWithImpl<$Res,
        _$DictionarySearchResultImpl>
    implements _$$DictionarySearchResultImplCopyWith<$Res> {
  __$$DictionarySearchResultImplCopyWithImpl(
      _$DictionarySearchResultImpl _value,
      $Res Function(_$DictionarySearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionarySearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? mode = null,
    Object? japaneseEntries = null,
    Object? englishEntries = null,
  }) {
    return _then(_$DictionarySearchResultImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DictionaryQueryLanguageMode,
      japaneseEntries: null == japaneseEntries
          ? _value._japaneseEntries
          : japaneseEntries // ignore: cast_nullable_to_non_nullable
              as List<DictionaryJapaneseEntry>,
      englishEntries: null == englishEntries
          ? _value._englishEntries
          : englishEntries // ignore: cast_nullable_to_non_nullable
              as List<DictionaryEnglishEntry>,
    ));
  }
}

/// @nodoc

class _$DictionarySearchResultImpl extends _DictionarySearchResult {
  const _$DictionarySearchResultImpl(
      {required this.query,
      required this.mode,
      final List<DictionaryJapaneseEntry> japaneseEntries =
          const <DictionaryJapaneseEntry>[],
      final List<DictionaryEnglishEntry> englishEntries =
          const <DictionaryEnglishEntry>[]})
      : _japaneseEntries = japaneseEntries,
        _englishEntries = englishEntries,
        super._();

  @override
  final String query;
  @override
  final DictionaryQueryLanguageMode mode;
  final List<DictionaryJapaneseEntry> _japaneseEntries;
  @override
  @JsonKey()
  List<DictionaryJapaneseEntry> get japaneseEntries {
    if (_japaneseEntries is EqualUnmodifiableListView) return _japaneseEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_japaneseEntries);
  }

  final List<DictionaryEnglishEntry> _englishEntries;
  @override
  @JsonKey()
  List<DictionaryEnglishEntry> get englishEntries {
    if (_englishEntries is EqualUnmodifiableListView) return _englishEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_englishEntries);
  }

  @override
  String toString() {
    return 'DictionarySearchResult(query: $query, mode: $mode, japaneseEntries: $japaneseEntries, englishEntries: $englishEntries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionarySearchResultImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality()
                .equals(other._japaneseEntries, _japaneseEntries) &&
            const DeepCollectionEquality()
                .equals(other._englishEntries, _englishEntries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      mode,
      const DeepCollectionEquality().hash(_japaneseEntries),
      const DeepCollectionEquality().hash(_englishEntries));

  /// Create a copy of DictionarySearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionarySearchResultImplCopyWith<_$DictionarySearchResultImpl>
      get copyWith => __$$DictionarySearchResultImplCopyWithImpl<
          _$DictionarySearchResultImpl>(this, _$identity);
}

abstract class _DictionarySearchResult extends DictionarySearchResult {
  const factory _DictionarySearchResult(
          {required final String query,
          required final DictionaryQueryLanguageMode mode,
          final List<DictionaryJapaneseEntry> japaneseEntries,
          final List<DictionaryEnglishEntry> englishEntries}) =
      _$DictionarySearchResultImpl;
  const _DictionarySearchResult._() : super._();

  @override
  String get query;
  @override
  DictionaryQueryLanguageMode get mode;
  @override
  List<DictionaryJapaneseEntry> get japaneseEntries;
  @override
  List<DictionaryEnglishEntry> get englishEntries;

  /// Create a copy of DictionarySearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionarySearchResultImplCopyWith<_$DictionarySearchResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
