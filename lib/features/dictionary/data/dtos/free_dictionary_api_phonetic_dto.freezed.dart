// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_dictionary_api_phonetic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreeDictionaryApiPhoneticDto _$FreeDictionaryApiPhoneticDtoFromJson(
    Map<String, dynamic> json) {
  return _FreeDictionaryApiPhoneticDto.fromJson(json);
}

/// @nodoc
mixin _$FreeDictionaryApiPhoneticDto {
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio')
  String? get audioUrl => throw _privateConstructorUsedError;

  /// Serializes this FreeDictionaryApiPhoneticDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreeDictionaryApiPhoneticDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreeDictionaryApiPhoneticDtoCopyWith<FreeDictionaryApiPhoneticDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDictionaryApiPhoneticDtoCopyWith<$Res> {
  factory $FreeDictionaryApiPhoneticDtoCopyWith(
          FreeDictionaryApiPhoneticDto value,
          $Res Function(FreeDictionaryApiPhoneticDto) then) =
      _$FreeDictionaryApiPhoneticDtoCopyWithImpl<$Res,
          FreeDictionaryApiPhoneticDto>;
  @useResult
  $Res call({String? text, @JsonKey(name: 'audio') String? audioUrl});
}

/// @nodoc
class _$FreeDictionaryApiPhoneticDtoCopyWithImpl<$Res,
        $Val extends FreeDictionaryApiPhoneticDto>
    implements $FreeDictionaryApiPhoneticDtoCopyWith<$Res> {
  _$FreeDictionaryApiPhoneticDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeDictionaryApiPhoneticDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? audioUrl = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeDictionaryApiPhoneticDtoImplCopyWith<$Res>
    implements $FreeDictionaryApiPhoneticDtoCopyWith<$Res> {
  factory _$$FreeDictionaryApiPhoneticDtoImplCopyWith(
          _$FreeDictionaryApiPhoneticDtoImpl value,
          $Res Function(_$FreeDictionaryApiPhoneticDtoImpl) then) =
      __$$FreeDictionaryApiPhoneticDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, @JsonKey(name: 'audio') String? audioUrl});
}

/// @nodoc
class __$$FreeDictionaryApiPhoneticDtoImplCopyWithImpl<$Res>
    extends _$FreeDictionaryApiPhoneticDtoCopyWithImpl<$Res,
        _$FreeDictionaryApiPhoneticDtoImpl>
    implements _$$FreeDictionaryApiPhoneticDtoImplCopyWith<$Res> {
  __$$FreeDictionaryApiPhoneticDtoImplCopyWithImpl(
      _$FreeDictionaryApiPhoneticDtoImpl _value,
      $Res Function(_$FreeDictionaryApiPhoneticDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeDictionaryApiPhoneticDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? audioUrl = freezed,
  }) {
    return _then(_$FreeDictionaryApiPhoneticDtoImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeDictionaryApiPhoneticDtoImpl
    implements _FreeDictionaryApiPhoneticDto {
  const _$FreeDictionaryApiPhoneticDtoImpl(
      {this.text, @JsonKey(name: 'audio') this.audioUrl});

  factory _$FreeDictionaryApiPhoneticDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FreeDictionaryApiPhoneticDtoImplFromJson(json);

  @override
  final String? text;
  @override
  @JsonKey(name: 'audio')
  final String? audioUrl;

  @override
  String toString() {
    return 'FreeDictionaryApiPhoneticDto(text: $text, audioUrl: $audioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeDictionaryApiPhoneticDtoImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, audioUrl);

  /// Create a copy of FreeDictionaryApiPhoneticDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeDictionaryApiPhoneticDtoImplCopyWith<
          _$FreeDictionaryApiPhoneticDtoImpl>
      get copyWith => __$$FreeDictionaryApiPhoneticDtoImplCopyWithImpl<
          _$FreeDictionaryApiPhoneticDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeDictionaryApiPhoneticDtoImplToJson(
      this,
    );
  }
}

abstract class _FreeDictionaryApiPhoneticDto
    implements FreeDictionaryApiPhoneticDto {
  const factory _FreeDictionaryApiPhoneticDto(
          {final String? text,
          @JsonKey(name: 'audio') final String? audioUrl}) =
      _$FreeDictionaryApiPhoneticDtoImpl;

  factory _FreeDictionaryApiPhoneticDto.fromJson(Map<String, dynamic> json) =
      _$FreeDictionaryApiPhoneticDtoImpl.fromJson;

  @override
  String? get text;
  @override
  @JsonKey(name: 'audio')
  String? get audioUrl;

  /// Create a copy of FreeDictionaryApiPhoneticDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreeDictionaryApiPhoneticDtoImplCopyWith<
          _$FreeDictionaryApiPhoneticDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
