// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_flashcard_draft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DictionaryFlashcardDraft {
  String get front => throw _privateConstructorUsedError;
  String get back => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryFlashcardDraft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryFlashcardDraftCopyWith<DictionaryFlashcardDraft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryFlashcardDraftCopyWith<$Res> {
  factory $DictionaryFlashcardDraftCopyWith(DictionaryFlashcardDraft value,
          $Res Function(DictionaryFlashcardDraft) then) =
      _$DictionaryFlashcardDraftCopyWithImpl<$Res, DictionaryFlashcardDraft>;
  @useResult
  $Res call({String front, String back, List<String> tags});
}

/// @nodoc
class _$DictionaryFlashcardDraftCopyWithImpl<$Res,
        $Val extends DictionaryFlashcardDraft>
    implements $DictionaryFlashcardDraftCopyWith<$Res> {
  _$DictionaryFlashcardDraftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryFlashcardDraft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryFlashcardDraftImplCopyWith<$Res>
    implements $DictionaryFlashcardDraftCopyWith<$Res> {
  factory _$$DictionaryFlashcardDraftImplCopyWith(
          _$DictionaryFlashcardDraftImpl value,
          $Res Function(_$DictionaryFlashcardDraftImpl) then) =
      __$$DictionaryFlashcardDraftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String front, String back, List<String> tags});
}

/// @nodoc
class __$$DictionaryFlashcardDraftImplCopyWithImpl<$Res>
    extends _$DictionaryFlashcardDraftCopyWithImpl<$Res,
        _$DictionaryFlashcardDraftImpl>
    implements _$$DictionaryFlashcardDraftImplCopyWith<$Res> {
  __$$DictionaryFlashcardDraftImplCopyWithImpl(
      _$DictionaryFlashcardDraftImpl _value,
      $Res Function(_$DictionaryFlashcardDraftImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryFlashcardDraft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front = null,
    Object? back = null,
    Object? tags = null,
  }) {
    return _then(_$DictionaryFlashcardDraftImpl(
      front: null == front
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      back: null == back
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DictionaryFlashcardDraftImpl implements _DictionaryFlashcardDraft {
  const _$DictionaryFlashcardDraftImpl(
      {required this.front,
      required this.back,
      final List<String> tags = const <String>[]})
      : _tags = tags;

  @override
  final String front;
  @override
  final String back;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'DictionaryFlashcardDraft(front: $front, back: $back, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryFlashcardDraftImpl &&
            (identical(other.front, front) || other.front == front) &&
            (identical(other.back, back) || other.back == back) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, front, back, const DeepCollectionEquality().hash(_tags));

  /// Create a copy of DictionaryFlashcardDraft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryFlashcardDraftImplCopyWith<_$DictionaryFlashcardDraftImpl>
      get copyWith => __$$DictionaryFlashcardDraftImplCopyWithImpl<
          _$DictionaryFlashcardDraftImpl>(this, _$identity);
}

abstract class _DictionaryFlashcardDraft implements DictionaryFlashcardDraft {
  const factory _DictionaryFlashcardDraft(
      {required final String front,
      required final String back,
      final List<String> tags}) = _$DictionaryFlashcardDraftImpl;

  @override
  String get front;
  @override
  String get back;
  @override
  List<String> get tags;

  /// Create a copy of DictionaryFlashcardDraft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryFlashcardDraftImplCopyWith<_$DictionaryFlashcardDraftImpl>
      get copyWith => throw _privateConstructorUsedError;
}
