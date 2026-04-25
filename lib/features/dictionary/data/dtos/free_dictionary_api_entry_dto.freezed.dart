// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_dictionary_api_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreeDictionaryApiEntryDto _$FreeDictionaryApiEntryDtoFromJson(
    Map<String, dynamic> json) {
  return _FreeDictionaryApiEntryDto.fromJson(json);
}

/// @nodoc
mixin _$FreeDictionaryApiEntryDto {
  String get word => throw _privateConstructorUsedError;
  String? get phonetic => throw _privateConstructorUsedError;
  List<FreeDictionaryApiPhoneticDto> get phonetics =>
      throw _privateConstructorUsedError;
  List<FreeDictionaryApiMeaningDto> get meanings =>
      throw _privateConstructorUsedError;

  /// Serializes this FreeDictionaryApiEntryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreeDictionaryApiEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreeDictionaryApiEntryDtoCopyWith<FreeDictionaryApiEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDictionaryApiEntryDtoCopyWith<$Res> {
  factory $FreeDictionaryApiEntryDtoCopyWith(FreeDictionaryApiEntryDto value,
          $Res Function(FreeDictionaryApiEntryDto) then) =
      _$FreeDictionaryApiEntryDtoCopyWithImpl<$Res, FreeDictionaryApiEntryDto>;
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<FreeDictionaryApiPhoneticDto> phonetics,
      List<FreeDictionaryApiMeaningDto> meanings});
}

/// @nodoc
class _$FreeDictionaryApiEntryDtoCopyWithImpl<$Res,
        $Val extends FreeDictionaryApiEntryDto>
    implements $FreeDictionaryApiEntryDtoCopyWith<$Res> {
  _$FreeDictionaryApiEntryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeDictionaryApiEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = null,
    Object? meanings = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: null == phonetics
          ? _value.phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<FreeDictionaryApiPhoneticDto>,
      meanings: null == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<FreeDictionaryApiMeaningDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeDictionaryApiEntryDtoImplCopyWith<$Res>
    implements $FreeDictionaryApiEntryDtoCopyWith<$Res> {
  factory _$$FreeDictionaryApiEntryDtoImplCopyWith(
          _$FreeDictionaryApiEntryDtoImpl value,
          $Res Function(_$FreeDictionaryApiEntryDtoImpl) then) =
      __$$FreeDictionaryApiEntryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<FreeDictionaryApiPhoneticDto> phonetics,
      List<FreeDictionaryApiMeaningDto> meanings});
}

/// @nodoc
class __$$FreeDictionaryApiEntryDtoImplCopyWithImpl<$Res>
    extends _$FreeDictionaryApiEntryDtoCopyWithImpl<$Res,
        _$FreeDictionaryApiEntryDtoImpl>
    implements _$$FreeDictionaryApiEntryDtoImplCopyWith<$Res> {
  __$$FreeDictionaryApiEntryDtoImplCopyWithImpl(
      _$FreeDictionaryApiEntryDtoImpl _value,
      $Res Function(_$FreeDictionaryApiEntryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeDictionaryApiEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = null,
    Object? meanings = null,
  }) {
    return _then(_$FreeDictionaryApiEntryDtoImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: null == phonetics
          ? _value._phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<FreeDictionaryApiPhoneticDto>,
      meanings: null == meanings
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<FreeDictionaryApiMeaningDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeDictionaryApiEntryDtoImpl implements _FreeDictionaryApiEntryDto {
  const _$FreeDictionaryApiEntryDtoImpl(
      {required this.word,
      this.phonetic,
      final List<FreeDictionaryApiPhoneticDto> phonetics =
          const <FreeDictionaryApiPhoneticDto>[],
      final List<FreeDictionaryApiMeaningDto> meanings =
          const <FreeDictionaryApiMeaningDto>[]})
      : _phonetics = phonetics,
        _meanings = meanings;

  factory _$FreeDictionaryApiEntryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeDictionaryApiEntryDtoImplFromJson(json);

  @override
  final String word;
  @override
  final String? phonetic;
  final List<FreeDictionaryApiPhoneticDto> _phonetics;
  @override
  @JsonKey()
  List<FreeDictionaryApiPhoneticDto> get phonetics {
    if (_phonetics is EqualUnmodifiableListView) return _phonetics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phonetics);
  }

  final List<FreeDictionaryApiMeaningDto> _meanings;
  @override
  @JsonKey()
  List<FreeDictionaryApiMeaningDto> get meanings {
    if (_meanings is EqualUnmodifiableListView) return _meanings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meanings);
  }

  @override
  String toString() {
    return 'FreeDictionaryApiEntryDto(word: $word, phonetic: $phonetic, phonetics: $phonetics, meanings: $meanings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDictionaryApiEntryDtoImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      phonetic,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings));

  /// Create a copy of FreeDictionaryApiEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeDictionaryApiEntryDtoImplCopyWith<_$FreeDictionaryApiEntryDtoImpl>
      get copyWith => __$$FreeDictionaryApiEntryDtoImplCopyWithImpl<
          _$FreeDictionaryApiEntryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDictionaryApiEntryDtoImplToJson(
      this,
    );
  }
}

abstract class _FreeDictionaryApiEntryDto implements FreeDictionaryApiEntryDto {
  const factory _FreeDictionaryApiEntryDto(
          {required final String word,
          final String? phonetic,
          final List<FreeDictionaryApiPhoneticDto> phonetics,
          final List<FreeDictionaryApiMeaningDto> meanings}) =
      _$FreeDictionaryApiEntryDtoImpl;

  factory _FreeDictionaryApiEntryDto.fromJson(Map<String, dynamic> json) =
      _$FreeDictionaryApiEntryDtoImpl.fromJson;

  @override
  String get word;
  @override
  String? get phonetic;
  @override
  List<FreeDictionaryApiPhoneticDto> get phonetics;
  @override
  List<FreeDictionaryApiMeaningDto> get meanings;

  /// Create a copy of FreeDictionaryApiEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreeDictionaryApiEntryDtoImplCopyWith<_$FreeDictionaryApiEntryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
