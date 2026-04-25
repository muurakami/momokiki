// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_dictionary_api_meaning_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreeDictionaryApiMeaningDto _$FreeDictionaryApiMeaningDtoFromJson(
    Map<String, dynamic> json) {
  return _FreeDictionaryApiMeaningDto.fromJson(json);
}

/// @nodoc
mixin _$FreeDictionaryApiMeaningDto {
  String get partOfSpeech => throw _privateConstructorUsedError;
  List<FreeDictionaryApiDefinitionDto> get definitions =>
      throw _privateConstructorUsedError;

  /// Serializes this FreeDictionaryApiMeaningDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreeDictionaryApiMeaningDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreeDictionaryApiMeaningDtoCopyWith<FreeDictionaryApiMeaningDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDictionaryApiMeaningDtoCopyWith<$Res> {
  factory $FreeDictionaryApiMeaningDtoCopyWith(
          FreeDictionaryApiMeaningDto value,
          $Res Function(FreeDictionaryApiMeaningDto) then) =
      _$FreeDictionaryApiMeaningDtoCopyWithImpl<$Res,
          FreeDictionaryApiMeaningDto>;
  @useResult
  $Res call(
      {String partOfSpeech, List<FreeDictionaryApiDefinitionDto> definitions});
}

/// @nodoc
class _$FreeDictionaryApiMeaningDtoCopyWithImpl<$Res,
        $Val extends FreeDictionaryApiMeaningDto>
    implements $FreeDictionaryApiMeaningDtoCopyWith<$Res> {
  _$FreeDictionaryApiMeaningDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeDictionaryApiMeaningDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
  }) {
    return _then(_value.copyWith(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<FreeDictionaryApiDefinitionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeDictionaryApiMeaningDtoImplCopyWith<$Res>
    implements $FreeDictionaryApiMeaningDtoCopyWith<$Res> {
  factory _$$FreeDictionaryApiMeaningDtoImplCopyWith(
          _$FreeDictionaryApiMeaningDtoImpl value,
          $Res Function(_$FreeDictionaryApiMeaningDtoImpl) then) =
      __$$FreeDictionaryApiMeaningDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partOfSpeech, List<FreeDictionaryApiDefinitionDto> definitions});
}

/// @nodoc
class __$$FreeDictionaryApiMeaningDtoImplCopyWithImpl<$Res>
    extends _$FreeDictionaryApiMeaningDtoCopyWithImpl<$Res,
        _$FreeDictionaryApiMeaningDtoImpl>
    implements _$$FreeDictionaryApiMeaningDtoImplCopyWith<$Res> {
  __$$FreeDictionaryApiMeaningDtoImplCopyWithImpl(
      _$FreeDictionaryApiMeaningDtoImpl _value,
      $Res Function(_$FreeDictionaryApiMeaningDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeDictionaryApiMeaningDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
  }) {
    return _then(_$FreeDictionaryApiMeaningDtoImpl(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<FreeDictionaryApiDefinitionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeDictionaryApiMeaningDtoImpl
    implements _FreeDictionaryApiMeaningDto {
  const _$FreeDictionaryApiMeaningDtoImpl(
      {required this.partOfSpeech,
      final List<FreeDictionaryApiDefinitionDto> definitions =
          const <FreeDictionaryApiDefinitionDto>[]})
      : _definitions = definitions;

  factory _$FreeDictionaryApiMeaningDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FreeDictionaryApiMeaningDtoImplFromJson(json);

  @override
  final String partOfSpeech;
  final List<FreeDictionaryApiDefinitionDto> _definitions;
  @override
  @JsonKey()
  List<FreeDictionaryApiDefinitionDto> get definitions {
    if (_definitions is EqualUnmodifiableListView) return _definitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  @override
  String toString() {
    return 'FreeDictionaryApiMeaningDto(partOfSpeech: $partOfSpeech, definitions: $definitions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDictionaryApiMeaningDtoImpl &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partOfSpeech,
      const DeepCollectionEquality().hash(_definitions));

  /// Create a copy of FreeDictionaryApiMeaningDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeDictionaryApiMeaningDtoImplCopyWith<_$FreeDictionaryApiMeaningDtoImpl>
      get copyWith => __$$FreeDictionaryApiMeaningDtoImplCopyWithImpl<
          _$FreeDictionaryApiMeaningDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDictionaryApiMeaningDtoImplToJson(
      this,
    );
  }
}

abstract class _FreeDictionaryApiMeaningDto
    implements FreeDictionaryApiMeaningDto {
  const factory _FreeDictionaryApiMeaningDto(
          {required final String partOfSpeech,
          final List<FreeDictionaryApiDefinitionDto> definitions}) =
      _$FreeDictionaryApiMeaningDtoImpl;

  factory _FreeDictionaryApiMeaningDto.fromJson(Map<String, dynamic> json) =
      _$FreeDictionaryApiMeaningDtoImpl.fromJson;

  @override
  String get partOfSpeech;
  @override
  List<FreeDictionaryApiDefinitionDto> get definitions;

  /// Create a copy of FreeDictionaryApiMeaningDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreeDictionaryApiMeaningDtoImplCopyWith<_$FreeDictionaryApiMeaningDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
