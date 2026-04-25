// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_dictionary_api_definition_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreeDictionaryApiDefinitionDto _$FreeDictionaryApiDefinitionDtoFromJson(
    Map<String, dynamic> json) {
  return _FreeDictionaryApiDefinitionDto.fromJson(json);
}

/// @nodoc
mixin _$FreeDictionaryApiDefinitionDto {
  String get definition => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;

  /// Serializes this FreeDictionaryApiDefinitionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreeDictionaryApiDefinitionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreeDictionaryApiDefinitionDtoCopyWith<FreeDictionaryApiDefinitionDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDictionaryApiDefinitionDtoCopyWith<$Res> {
  factory $FreeDictionaryApiDefinitionDtoCopyWith(
          FreeDictionaryApiDefinitionDto value,
          $Res Function(FreeDictionaryApiDefinitionDto) then) =
      _$FreeDictionaryApiDefinitionDtoCopyWithImpl<$Res,
          FreeDictionaryApiDefinitionDto>;
  @useResult
  $Res call({String definition, String? example, List<String> synonyms});
}

/// @nodoc
class _$FreeDictionaryApiDefinitionDtoCopyWithImpl<$Res,
        $Val extends FreeDictionaryApiDefinitionDto>
    implements $FreeDictionaryApiDefinitionDtoCopyWith<$Res> {
  _$FreeDictionaryApiDefinitionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeDictionaryApiDefinitionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? example = freezed,
    Object? synonyms = null,
  }) {
    return _then(_value.copyWith(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeDictionaryApiDefinitionDtoImplCopyWith<$Res>
    implements $FreeDictionaryApiDefinitionDtoCopyWith<$Res> {
  factory _$$FreeDictionaryApiDefinitionDtoImplCopyWith(
          _$FreeDictionaryApiDefinitionDtoImpl value,
          $Res Function(_$FreeDictionaryApiDefinitionDtoImpl) then) =
      __$$FreeDictionaryApiDefinitionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String definition, String? example, List<String> synonyms});
}

/// @nodoc
class __$$FreeDictionaryApiDefinitionDtoImplCopyWithImpl<$Res>
    extends _$FreeDictionaryApiDefinitionDtoCopyWithImpl<$Res,
        _$FreeDictionaryApiDefinitionDtoImpl>
    implements _$$FreeDictionaryApiDefinitionDtoImplCopyWith<$Res> {
  __$$FreeDictionaryApiDefinitionDtoImplCopyWithImpl(
      _$FreeDictionaryApiDefinitionDtoImpl _value,
      $Res Function(_$FreeDictionaryApiDefinitionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeDictionaryApiDefinitionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? example = freezed,
    Object? synonyms = null,
  }) {
    return _then(_$FreeDictionaryApiDefinitionDtoImpl(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeDictionaryApiDefinitionDtoImpl
    implements _FreeDictionaryApiDefinitionDto {
  const _$FreeDictionaryApiDefinitionDtoImpl(
      {required this.definition,
      this.example,
      final List<String> synonyms = const <String>[]})
      : _synonyms = synonyms;

  factory _$FreeDictionaryApiDefinitionDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FreeDictionaryApiDefinitionDtoImplFromJson(json);

  @override
  final String definition;
  @override
  final String? example;
  final List<String> _synonyms;
  @override
  @JsonKey()
  List<String> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  @override
  String toString() {
    return 'FreeDictionaryApiDefinitionDto(definition: $definition, example: $example, synonyms: $synonyms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDictionaryApiDefinitionDtoImpl &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.example, example) || other.example == example) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, definition, example,
      const DeepCollectionEquality().hash(_synonyms));

  /// Create a copy of FreeDictionaryApiDefinitionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeDictionaryApiDefinitionDtoImplCopyWith<
          _$FreeDictionaryApiDefinitionDtoImpl>
      get copyWith => __$$FreeDictionaryApiDefinitionDtoImplCopyWithImpl<
          _$FreeDictionaryApiDefinitionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDictionaryApiDefinitionDtoImplToJson(
      this,
    );
  }
}

abstract class _FreeDictionaryApiDefinitionDto
    implements FreeDictionaryApiDefinitionDto {
  const factory _FreeDictionaryApiDefinitionDto(
      {required final String definition,
      final String? example,
      final List<String> synonyms}) = _$FreeDictionaryApiDefinitionDtoImpl;

  factory _FreeDictionaryApiDefinitionDto.fromJson(Map<String, dynamic> json) =
      _$FreeDictionaryApiDefinitionDtoImpl.fromJson;

  @override
  String get definition;
  @override
  String? get example;
  @override
  List<String> get synonyms;

  /// Create a copy of FreeDictionaryApiDefinitionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreeDictionaryApiDefinitionDtoImplCopyWith<
          _$FreeDictionaryApiDefinitionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
