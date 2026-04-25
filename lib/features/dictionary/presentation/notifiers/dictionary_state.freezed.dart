// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DictionaryState {
  String get query => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get isExporting => throw _privateConstructorUsedError;
  Set<String> get favoriteIds => throw _privateConstructorUsedError;
  DictionarySearchResult? get searchResult =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryStateCopyWith<DictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
  @useResult
  $Res call(
      {String query,
      bool isSearching,
      bool isExporting,
      Set<String> favoriteIds,
      DictionarySearchResult? searchResult,
      String? errorMessage});

  $DictionarySearchResultCopyWith<$Res>? get searchResult;
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? isSearching = null,
    Object? isExporting = null,
    Object? favoriteIds = null,
    Object? searchResult = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isExporting: null == isExporting
          ? _value.isExporting
          : isExporting // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteIds: null == favoriteIds
          ? _value.favoriteIds
          : favoriteIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as DictionarySearchResult?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DictionarySearchResultCopyWith<$Res>? get searchResult {
    if (_value.searchResult == null) {
      return null;
    }

    return $DictionarySearchResultCopyWith<$Res>(_value.searchResult!, (value) {
      return _then(_value.copyWith(searchResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DictionaryStateImplCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$$DictionaryStateImplCopyWith(_$DictionaryStateImpl value,
          $Res Function(_$DictionaryStateImpl) then) =
      __$$DictionaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      bool isSearching,
      bool isExporting,
      Set<String> favoriteIds,
      DictionarySearchResult? searchResult,
      String? errorMessage});

  @override
  $DictionarySearchResultCopyWith<$Res>? get searchResult;
}

/// @nodoc
class __$$DictionaryStateImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryStateImpl>
    implements _$$DictionaryStateImplCopyWith<$Res> {
  __$$DictionaryStateImplCopyWithImpl(
      _$DictionaryStateImpl _value, $Res Function(_$DictionaryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? isSearching = null,
    Object? isExporting = null,
    Object? favoriteIds = null,
    Object? searchResult = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DictionaryStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isExporting: null == isExporting
          ? _value.isExporting
          : isExporting // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteIds: null == favoriteIds
          ? _value._favoriteIds
          : favoriteIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as DictionarySearchResult?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DictionaryStateImpl extends _DictionaryState {
  const _$DictionaryStateImpl(
      {this.query = '',
      this.isSearching = false,
      this.isExporting = false,
      final Set<String> favoriteIds = const <String>{},
      this.searchResult,
      this.errorMessage})
      : _favoriteIds = favoriteIds,
        super._();

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool isSearching;
  @override
  @JsonKey()
  final bool isExporting;
  final Set<String> _favoriteIds;
  @override
  @JsonKey()
  Set<String> get favoriteIds {
    if (_favoriteIds is EqualUnmodifiableSetView) return _favoriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favoriteIds);
  }

  @override
  final DictionarySearchResult? searchResult;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DictionaryState(query: $query, isSearching: $isSearching, isExporting: $isExporting, favoriteIds: $favoriteIds, searchResult: $searchResult, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.isExporting, isExporting) ||
                other.isExporting == isExporting) &&
            const DeepCollectionEquality()
                .equals(other._favoriteIds, _favoriteIds) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      isSearching,
      isExporting,
      const DeepCollectionEquality().hash(_favoriteIds),
      searchResult,
      errorMessage);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      __$$DictionaryStateImplCopyWithImpl<_$DictionaryStateImpl>(
          this, _$identity);
}

abstract class _DictionaryState extends DictionaryState {
  const factory _DictionaryState(
      {final String query,
      final bool isSearching,
      final bool isExporting,
      final Set<String> favoriteIds,
      final DictionarySearchResult? searchResult,
      final String? errorMessage}) = _$DictionaryStateImpl;
  const _DictionaryState._() : super._();

  @override
  String get query;
  @override
  bool get isSearching;
  @override
  bool get isExporting;
  @override
  Set<String> get favoriteIds;
  @override
  DictionarySearchResult? get searchResult;
  @override
  String? get errorMessage;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
