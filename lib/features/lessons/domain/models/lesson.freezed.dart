// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  LessonMeta get meta => throw _privateConstructorUsedError;
  List<LessonBlock> get blocks => throw _privateConstructorUsedError;
  SupportedLanguage get language => throw _privateConstructorUsedError;
  String? get nextLessonId => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {String id,
      int version,
      String title,
      LessonMeta meta,
      List<LessonBlock> blocks,
      SupportedLanguage language,
      String? nextLessonId});

  $LessonMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? title = null,
    Object? meta = null,
    Object? blocks = null,
    Object? language = null,
    Object? nextLessonId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as LessonMeta,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<LessonBlock>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      nextLessonId: freezed == nextLessonId
          ? _value.nextLessonId
          : nextLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonMetaCopyWith<$Res> get meta {
    return $LessonMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int version,
      String title,
      LessonMeta meta,
      List<LessonBlock> blocks,
      SupportedLanguage language,
      String? nextLessonId});

  @override
  $LessonMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? version = null,
    Object? title = null,
    Object? meta = null,
    Object? blocks = null,
    Object? language = null,
    Object? nextLessonId = freezed,
  }) {
    return _then(_$LessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as LessonMeta,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<LessonBlock>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      nextLessonId: freezed == nextLessonId
          ? _value.nextLessonId
          : nextLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl(
      {required this.id,
      this.version = 1,
      required this.title,
      required this.meta,
      final List<LessonBlock> blocks = const <LessonBlock>[],
      this.language = SupportedLanguage.english,
      this.nextLessonId})
      : _blocks = blocks;

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final int version;
  @override
  final String title;
  @override
  final LessonMeta meta;
  final List<LessonBlock> _blocks;
  @override
  @JsonKey()
  List<LessonBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey()
  final SupportedLanguage language;
  @override
  final String? nextLessonId;

  @override
  String toString() {
    return 'Lesson(id: $id, version: $version, title: $title, meta: $meta, blocks: $blocks, language: $language, nextLessonId: $nextLessonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.nextLessonId, nextLessonId) ||
                other.nextLessonId == nextLessonId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, version, title, meta,
      const DeepCollectionEquality().hash(_blocks), language, nextLessonId);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {required final String id,
      final int version,
      required final String title,
      required final LessonMeta meta,
      final List<LessonBlock> blocks,
      final SupportedLanguage language,
      final String? nextLessonId}) = _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  String get id;
  @override
  int get version;
  @override
  String get title;
  @override
  LessonMeta get meta;
  @override
  List<LessonBlock> get blocks;
  @override
  SupportedLanguage get language;
  @override
  String? get nextLessonId;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonMeta _$LessonMetaFromJson(Map<String, dynamic> json) {
  return _LessonMeta.fromJson(json);
}

/// @nodoc
mixin _$LessonMeta {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_xp')
  int get estimatedXp => throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  Map<String, Object?> get extras => throw _privateConstructorUsedError;

  /// Serializes this LessonMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonMetaCopyWith<LessonMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonMetaCopyWith<$Res> {
  factory $LessonMetaCopyWith(
          LessonMeta value, $Res Function(LessonMeta) then) =
      _$LessonMetaCopyWithImpl<$Res, LessonMeta>;
  @useResult
  $Res call(
      {String title,
      String? description,
      @JsonKey(name: 'estimated_xp') int estimatedXp,
      int difficulty,
      double? rating,
      String? language,
      List<String> tags,
      Map<String, Object?> extras});
}

/// @nodoc
class _$LessonMetaCopyWithImpl<$Res, $Val extends LessonMeta>
    implements $LessonMetaCopyWith<$Res> {
  _$LessonMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? estimatedXp = null,
    Object? difficulty = null,
    Object? rating = freezed,
    Object? language = freezed,
    Object? tags = null,
    Object? extras = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedXp: null == estimatedXp
          ? _value.estimatedXp
          : estimatedXp // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonMetaImplCopyWith<$Res>
    implements $LessonMetaCopyWith<$Res> {
  factory _$$LessonMetaImplCopyWith(
          _$LessonMetaImpl value, $Res Function(_$LessonMetaImpl) then) =
      __$$LessonMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      @JsonKey(name: 'estimated_xp') int estimatedXp,
      int difficulty,
      double? rating,
      String? language,
      List<String> tags,
      Map<String, Object?> extras});
}

/// @nodoc
class __$$LessonMetaImplCopyWithImpl<$Res>
    extends _$LessonMetaCopyWithImpl<$Res, _$LessonMetaImpl>
    implements _$$LessonMetaImplCopyWith<$Res> {
  __$$LessonMetaImplCopyWithImpl(
      _$LessonMetaImpl _value, $Res Function(_$LessonMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? estimatedXp = null,
    Object? difficulty = null,
    Object? rating = freezed,
    Object? language = freezed,
    Object? tags = null,
    Object? extras = null,
  }) {
    return _then(_$LessonMetaImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedXp: null == estimatedXp
          ? _value.estimatedXp
          : estimatedXp // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonMetaImpl implements _LessonMeta {
  const _$LessonMetaImpl(
      {required this.title,
      this.description,
      @JsonKey(name: 'estimated_xp') this.estimatedXp = 0,
      this.difficulty = 1,
      this.rating,
      this.language,
      final List<String> tags = const <String>[],
      final Map<String, Object?> extras = const <String, Object?>{}})
      : _tags = tags,
        _extras = extras;

  factory _$LessonMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonMetaImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'estimated_xp')
  final int estimatedXp;
  @override
  @JsonKey()
  final int difficulty;
  @override
  final double? rating;
  @override
  final String? language;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final Map<String, Object?> _extras;
  @override
  @JsonKey()
  Map<String, Object?> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'LessonMeta(title: $title, description: $description, estimatedXp: $estimatedXp, difficulty: $difficulty, rating: $rating, language: $language, tags: $tags, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonMetaImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.estimatedXp, estimatedXp) ||
                other.estimatedXp == estimatedXp) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      estimatedXp,
      difficulty,
      rating,
      language,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_extras));

  /// Create a copy of LessonMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonMetaImplCopyWith<_$LessonMetaImpl> get copyWith =>
      __$$LessonMetaImplCopyWithImpl<_$LessonMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonMetaImplToJson(
      this,
    );
  }
}

abstract class _LessonMeta implements LessonMeta {
  const factory _LessonMeta(
      {required final String title,
      final String? description,
      @JsonKey(name: 'estimated_xp') final int estimatedXp,
      final int difficulty,
      final double? rating,
      final String? language,
      final List<String> tags,
      final Map<String, Object?> extras}) = _$LessonMetaImpl;

  factory _LessonMeta.fromJson(Map<String, dynamic> json) =
      _$LessonMetaImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'estimated_xp')
  int get estimatedXp;
  @override
  int get difficulty;
  @override
  double? get rating;
  @override
  String? get language;
  @override
  List<String> get tags;
  @override
  Map<String, Object?> get extras;

  /// Create a copy of LessonMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonMetaImplCopyWith<_$LessonMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonBlock _$LessonBlockFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'text':
      return _TextBlock.fromJson(json);
    case 'quiz':
      return _QuizBlock.fromJson(json);
    case 'video':
      return _VideoBlock.fromJson(json);
    case 'code':
      return _CodeBlock.fromJson(json);
    case 'choice':
      return _ChoiceBlock.fromJson(json);
    case 'sentenceBuilder':
      return _SentenceBuilderBlock.fromJson(json);

    default:
      return _UnknownLessonBlock.fromJson(json);
  }
}

/// @nodoc
mixin _$LessonBlock {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this LessonBlock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonBlockCopyWith<LessonBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonBlockCopyWith<$Res> {
  factory $LessonBlockCopyWith(
          LessonBlock value, $Res Function(LessonBlock) then) =
      _$LessonBlockCopyWithImpl<$Res, LessonBlock>;
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class _$LessonBlockCopyWithImpl<$Res, $Val extends LessonBlock>
    implements $LessonBlockCopyWith<$Res> {
  _$LessonBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextBlockImplCopyWith<$Res>
    implements $LessonBlockCopyWith<$Res> {
  factory _$$TextBlockImplCopyWith(
          _$TextBlockImpl value, $Res Function(_$TextBlockImpl) then) =
      __$$TextBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String content,
      bool skippable,
      List<String> bullets,
      Map<String, Object?> extras});
}

/// @nodoc
class __$$TextBlockImplCopyWithImpl<$Res>
    extends _$LessonBlockCopyWithImpl<$Res, _$TextBlockImpl>
    implements _$$TextBlockImplCopyWith<$Res> {
  __$$TextBlockImplCopyWithImpl(
      _$TextBlockImpl _value, $Res Function(_$TextBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? content = null,
    Object? skippable = null,
    Object? bullets = null,
    Object? extras = null,
  }) {
    return _then(_$TextBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      skippable: null == skippable
          ? _value.skippable
          : skippable // ignore: cast_nullable_to_non_nullable
              as bool,
      bullets: null == bullets
          ? _value._bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextBlockImpl extends _TextBlock {
  const _$TextBlockImpl(
      {required this.id,
      this.type = 'text',
      required this.title,
      required this.content,
      this.skippable = false,
      final List<String> bullets = const <String>[],
      final Map<String, Object?> extras = const <String, Object?>{}})
      : _bullets = bullets,
        _extras = extras,
        super._();

  factory _$TextBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextBlockImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey()
  final bool skippable;
  final List<String> _bullets;
  @override
  @JsonKey()
  List<String> get bullets {
    if (_bullets is EqualUnmodifiableListView) return _bullets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bullets);
  }

  final Map<String, Object?> _extras;
  @override
  @JsonKey()
  Map<String, Object?> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'LessonBlock.text(id: $id, type: $type, title: $title, content: $content, skippable: $skippable, bullets: $bullets, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.skippable, skippable) ||
                other.skippable == skippable) &&
            const DeepCollectionEquality().equals(other._bullets, _bullets) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      content,
      skippable,
      const DeepCollectionEquality().hash(_bullets),
      const DeepCollectionEquality().hash(_extras));

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextBlockImplCopyWith<_$TextBlockImpl> get copyWith =>
      __$$TextBlockImplCopyWithImpl<_$TextBlockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) {
    return text(id, type, title, content, skippable, bullets, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) {
    return text?.call(id, type, title, content, skippable, bullets, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(id, type, title, content, skippable, bullets, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextBlockImplToJson(
      this,
    );
  }
}

abstract class _TextBlock extends LessonBlock {
  const factory _TextBlock(
      {required final String id,
      final String type,
      required final String title,
      required final String content,
      final bool skippable,
      final List<String> bullets,
      final Map<String, Object?> extras}) = _$TextBlockImpl;
  const _TextBlock._() : super._();

  factory _TextBlock.fromJson(Map<String, dynamic> json) =
      _$TextBlockImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  String get title;
  String get content;
  bool get skippable;
  List<String> get bullets;
  Map<String, Object?> get extras;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextBlockImplCopyWith<_$TextBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizBlockImplCopyWith<$Res>
    implements $LessonBlockCopyWith<$Res> {
  factory _$$QuizBlockImplCopyWith(
          _$QuizBlockImpl value, $Res Function(_$QuizBlockImpl) then) =
      __$$QuizBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String question,
      List<String> options,
      @JsonKey(name: 'correct_answer') String correctAnswer,
      String? explanation,
      Map<String, Object?> extras});
}

/// @nodoc
class __$$QuizBlockImplCopyWithImpl<$Res>
    extends _$LessonBlockCopyWithImpl<$Res, _$QuizBlockImpl>
    implements _$$QuizBlockImplCopyWith<$Res> {
  __$$QuizBlockImplCopyWithImpl(
      _$QuizBlockImpl _value, $Res Function(_$QuizBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? explanation = freezed,
    Object? extras = null,
  }) {
    return _then(_$QuizBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizBlockImpl extends _QuizBlock {
  const _$QuizBlockImpl(
      {required this.id,
      this.type = 'quiz',
      required this.question,
      final List<String> options = const <String>[],
      @JsonKey(name: 'correct_answer') required this.correctAnswer,
      this.explanation,
      final Map<String, Object?> extras = const <String, Object?>{}})
      : _options = options,
        _extras = extras,
        super._();

  factory _$QuizBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizBlockImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  final String question;
  final List<String> _options;
  @override
  @JsonKey()
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey(name: 'correct_answer')
  final String correctAnswer;
  @override
  final String? explanation;
  final Map<String, Object?> _extras;
  @override
  @JsonKey()
  Map<String, Object?> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'LessonBlock.quiz(id: $id, type: $type, question: $question, options: $options, correctAnswer: $correctAnswer, explanation: $explanation, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      question,
      const DeepCollectionEquality().hash(_options),
      correctAnswer,
      explanation,
      const DeepCollectionEquality().hash(_extras));

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizBlockImplCopyWith<_$QuizBlockImpl> get copyWith =>
      __$$QuizBlockImplCopyWithImpl<_$QuizBlockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) {
    return quiz(
        id, type, question, options, correctAnswer, explanation, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) {
    return quiz?.call(
        id, type, question, options, correctAnswer, explanation, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) {
    if (quiz != null) {
      return quiz(
          id, type, question, options, correctAnswer, explanation, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) {
    return quiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) {
    return quiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) {
    if (quiz != null) {
      return quiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizBlockImplToJson(
      this,
    );
  }
}

abstract class _QuizBlock extends LessonBlock {
  const factory _QuizBlock(
      {required final String id,
      final String type,
      required final String question,
      final List<String> options,
      @JsonKey(name: 'correct_answer') required final String correctAnswer,
      final String? explanation,
      final Map<String, Object?> extras}) = _$QuizBlockImpl;
  const _QuizBlock._() : super._();

  factory _QuizBlock.fromJson(Map<String, dynamic> json) =
      _$QuizBlockImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  String get question;
  List<String> get options;
  @JsonKey(name: 'correct_answer')
  String get correctAnswer;
  String? get explanation;
  Map<String, Object?> get extras;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizBlockImplCopyWith<_$QuizBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoBlockImplCopyWith<$Res>
    implements $LessonBlockCopyWith<$Res> {
  factory _$$VideoBlockImplCopyWith(
          _$VideoBlockImpl value, $Res Function(_$VideoBlockImpl) then) =
      __$$VideoBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      @JsonKey(name: 'video_url') String videoUrl,
      String? caption,
      int durationSeconds,
      Map<String, Object?> extras});
}

/// @nodoc
class __$$VideoBlockImplCopyWithImpl<$Res>
    extends _$LessonBlockCopyWithImpl<$Res, _$VideoBlockImpl>
    implements _$$VideoBlockImplCopyWith<$Res> {
  __$$VideoBlockImplCopyWithImpl(
      _$VideoBlockImpl _value, $Res Function(_$VideoBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? videoUrl = null,
    Object? caption = freezed,
    Object? durationSeconds = null,
    Object? extras = null,
  }) {
    return _then(_$VideoBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoBlockImpl extends _VideoBlock {
  const _$VideoBlockImpl(
      {required this.id,
      this.type = 'video',
      required this.title,
      @JsonKey(name: 'video_url') required this.videoUrl,
      this.caption,
      this.durationSeconds = 0,
      final Map<String, Object?> extras = const <String, Object?>{}})
      : _extras = extras,
        super._();

  factory _$VideoBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoBlockImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  final String title;
  @override
  @JsonKey(name: 'video_url')
  final String videoUrl;
  @override
  final String? caption;
  @override
  @JsonKey()
  final int durationSeconds;
  final Map<String, Object?> _extras;
  @override
  @JsonKey()
  Map<String, Object?> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'LessonBlock.video(id: $id, type: $type, title: $title, videoUrl: $videoUrl, caption: $caption, durationSeconds: $durationSeconds, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, title, videoUrl,
      caption, durationSeconds, const DeepCollectionEquality().hash(_extras));

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoBlockImplCopyWith<_$VideoBlockImpl> get copyWith =>
      __$$VideoBlockImplCopyWithImpl<_$VideoBlockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) {
    return video(id, type, title, videoUrl, caption, durationSeconds, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) {
    return video?.call(
        id, type, title, videoUrl, caption, durationSeconds, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(id, type, title, videoUrl, caption, durationSeconds, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoBlockImplToJson(
      this,
    );
  }
}

abstract class _VideoBlock extends LessonBlock {
  const factory _VideoBlock(
      {required final String id,
      final String type,
      required final String title,
      @JsonKey(name: 'video_url') required final String videoUrl,
      final String? caption,
      final int durationSeconds,
      final Map<String, Object?> extras}) = _$VideoBlockImpl;
  const _VideoBlock._() : super._();

  factory _VideoBlock.fromJson(Map<String, dynamic> json) =
      _$VideoBlockImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  String get title;
  @JsonKey(name: 'video_url')
  String get videoUrl;
  String? get caption;
  int get durationSeconds;
  Map<String, Object?> get extras;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoBlockImplCopyWith<_$VideoBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeBlockImplCopyWith<$Res>
    implements $LessonBlockCopyWith<$Res> {
  factory _$$CodeBlockImplCopyWith(
          _$CodeBlockImpl value, $Res Function(_$CodeBlockImpl) then) =
      __$$CodeBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String prompt,
      @JsonKey(name: 'code_snippet') String codeSnippet,
      String? language,
      @JsonKey(name: 'expected_answer') String? expectedAnswer,
      List<String> hints,
      Map<String, Object?> extras});
}

/// @nodoc
class __$$CodeBlockImplCopyWithImpl<$Res>
    extends _$LessonBlockCopyWithImpl<$Res, _$CodeBlockImpl>
    implements _$$CodeBlockImplCopyWith<$Res> {
  __$$CodeBlockImplCopyWithImpl(
      _$CodeBlockImpl _value, $Res Function(_$CodeBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? prompt = null,
    Object? codeSnippet = null,
    Object? language = freezed,
    Object? expectedAnswer = freezed,
    Object? hints = null,
    Object? extras = null,
  }) {
    return _then(_$CodeBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      codeSnippet: null == codeSnippet
          ? _value.codeSnippet
          : codeSnippet // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedAnswer: freezed == expectedAnswer
          ? _value.expectedAnswer
          : expectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      hints: null == hints
          ? _value._hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeBlockImpl extends _CodeBlock {
  const _$CodeBlockImpl(
      {required this.id,
      this.type = 'code',
      required this.prompt,
      @JsonKey(name: 'code_snippet') required this.codeSnippet,
      this.language,
      @JsonKey(name: 'expected_answer') this.expectedAnswer,
      final List<String> hints = const <String>[],
      final Map<String, Object?> extras = const <String, Object?>{}})
      : _hints = hints,
        _extras = extras,
        super._();

  factory _$CodeBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeBlockImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  final String prompt;
  @override
  @JsonKey(name: 'code_snippet')
  final String codeSnippet;
  @override
  final String? language;
  @override
  @JsonKey(name: 'expected_answer')
  final String? expectedAnswer;
  final List<String> _hints;
  @override
  @JsonKey()
  List<String> get hints {
    if (_hints is EqualUnmodifiableListView) return _hints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hints);
  }

  final Map<String, Object?> _extras;
  @override
  @JsonKey()
  Map<String, Object?> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'LessonBlock.code(id: $id, type: $type, prompt: $prompt, codeSnippet: $codeSnippet, language: $language, expectedAnswer: $expectedAnswer, hints: $hints, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.codeSnippet, codeSnippet) ||
                other.codeSnippet == codeSnippet) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.expectedAnswer, expectedAnswer) ||
                other.expectedAnswer == expectedAnswer) &&
            const DeepCollectionEquality().equals(other._hints, _hints) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      prompt,
      codeSnippet,
      language,
      expectedAnswer,
      const DeepCollectionEquality().hash(_hints),
      const DeepCollectionEquality().hash(_extras));

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeBlockImplCopyWith<_$CodeBlockImpl> get copyWith =>
      __$$CodeBlockImplCopyWithImpl<_$CodeBlockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) {
    return code(
        id, type, prompt, codeSnippet, language, expectedAnswer, hints, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) {
    return code?.call(
        id, type, prompt, codeSnippet, language, expectedAnswer, hints, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) {
    if (code != null) {
      return code(id, type, prompt, codeSnippet, language, expectedAnswer,
          hints, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) {
    return code(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) {
    return code?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) {
    if (code != null) {
      return code(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeBlockImplToJson(
      this,
    );
  }
}

abstract class _CodeBlock extends LessonBlock {
  const factory _CodeBlock(
      {required final String id,
      final String type,
      required final String prompt,
      @JsonKey(name: 'code_snippet') required final String codeSnippet,
      final String? language,
      @JsonKey(name: 'expected_answer') final String? expectedAnswer,
      final List<String> hints,
      final Map<String, Object?> extras}) = _$CodeBlockImpl;
  const _CodeBlock._() : super._();

  factory _CodeBlock.fromJson(Map<String, dynamic> json) =
      _$CodeBlockImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  String get prompt;
  @JsonKey(name: 'code_snippet')
  String get codeSnippet;
  String? get language;
  @JsonKey(name: 'expected_answer')
  String? get expectedAnswer;
  List<String> get hints;
  Map<String, Object?> get extras;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeBlockImplCopyWith<_$CodeBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChoiceBlockImplCopyWith<$Res>
    implements $LessonBlockCopyWith<$Res> {
  factory _$$ChoiceBlockImplCopyWith(
          _$ChoiceBlockImpl value, $Res Function(_$ChoiceBlockImpl) then) =
      __$$ChoiceBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String prompt,
      List<ChoiceOption> options,
      @JsonKey(name: 'correct_option_id') String correctOptionId,
      bool? multiple,
      Map<String, Object?> extras});
}

/// @nodoc
class __$$ChoiceBlockImplCopyWithImpl<$Res>
    extends _$LessonBlockCopyWithImpl<$Res, _$ChoiceBlockImpl>
    implements _$$ChoiceBlockImplCopyWith<$Res> {
  __$$ChoiceBlockImplCopyWithImpl(
      _$ChoiceBlockImpl _value, $Res Function(_$ChoiceBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? prompt = null,
    Object? options = null,
    Object? correctOptionId = null,
    Object? multiple = freezed,
    Object? extras = null,
  }) {
    return _then(_$ChoiceBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ChoiceOption>,
      correctOptionId: null == correctOptionId
          ? _value.correctOptionId
          : correctOptionId // ignore: cast_nullable_to_non_nullable
              as String,
      multiple: freezed == multiple
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool?,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceBlockImpl extends _ChoiceBlock {
  const _$ChoiceBlockImpl(
      {required this.id,
      this.type = 'choice',
      required this.prompt,
      final List<ChoiceOption> options = const <ChoiceOption>[],
      @JsonKey(name: 'correct_option_id') required this.correctOptionId,
      this.multiple,
      final Map<String, Object?> extras = const <String, Object?>{}})
      : _options = options,
        _extras = extras,
        super._();

  factory _$ChoiceBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceBlockImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  final String prompt;
  final List<ChoiceOption> _options;
  @override
  @JsonKey()
  List<ChoiceOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey(name: 'correct_option_id')
  final String correctOptionId;
  @override
  final bool? multiple;
  final Map<String, Object?> _extras;
  @override
  @JsonKey()
  Map<String, Object?> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'LessonBlock.choice(id: $id, type: $type, prompt: $prompt, options: $options, correctOptionId: $correctOptionId, multiple: $multiple, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctOptionId, correctOptionId) ||
                other.correctOptionId == correctOptionId) &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      prompt,
      const DeepCollectionEquality().hash(_options),
      correctOptionId,
      multiple,
      const DeepCollectionEquality().hash(_extras));

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceBlockImplCopyWith<_$ChoiceBlockImpl> get copyWith =>
      __$$ChoiceBlockImplCopyWithImpl<_$ChoiceBlockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) {
    return choice(id, type, prompt, options, correctOptionId, multiple, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) {
    return choice?.call(
        id, type, prompt, options, correctOptionId, multiple, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(
          id, type, prompt, options, correctOptionId, multiple, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceBlockImplToJson(
      this,
    );
  }
}

abstract class _ChoiceBlock extends LessonBlock {
  const factory _ChoiceBlock(
      {required final String id,
      final String type,
      required final String prompt,
      final List<ChoiceOption> options,
      @JsonKey(name: 'correct_option_id') required final String correctOptionId,
      final bool? multiple,
      final Map<String, Object?> extras}) = _$ChoiceBlockImpl;
  const _ChoiceBlock._() : super._();

  factory _ChoiceBlock.fromJson(Map<String, dynamic> json) =
      _$ChoiceBlockImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  String get prompt;
  List<ChoiceOption> get options;
  @JsonKey(name: 'correct_option_id')
  String get correctOptionId;
  bool? get multiple;
  Map<String, Object?> get extras;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceBlockImplCopyWith<_$ChoiceBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SentenceBuilderBlockImplCopyWith<$Res>
    implements $LessonBlockCopyWith<$Res> {
  factory _$$SentenceBuilderBlockImplCopyWith(_$SentenceBuilderBlockImpl value,
          $Res Function(_$SentenceBuilderBlockImpl) then) =
      __$$SentenceBuilderBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String prompt,
      List<SentenceToken> tokens,
      @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
      @JsonKey(name: 'correct_answer') String? correctAnswer,
      String? explanation,
      Map<String, Object?> extras});
}

/// @nodoc
class __$$SentenceBuilderBlockImplCopyWithImpl<$Res>
    extends _$LessonBlockCopyWithImpl<$Res, _$SentenceBuilderBlockImpl>
    implements _$$SentenceBuilderBlockImplCopyWith<$Res> {
  __$$SentenceBuilderBlockImplCopyWithImpl(_$SentenceBuilderBlockImpl _value,
      $Res Function(_$SentenceBuilderBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? prompt = null,
    Object? tokens = null,
    Object? correctTokenIds = null,
    Object? correctAnswer = freezed,
    Object? explanation = freezed,
    Object? extras = null,
  }) {
    return _then(_$SentenceBuilderBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<SentenceToken>,
      correctTokenIds: null == correctTokenIds
          ? _value._correctTokenIds
          : correctTokenIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentenceBuilderBlockImpl extends _SentenceBuilderBlock {
  const _$SentenceBuilderBlockImpl(
      {required this.id,
      this.type = 'sentence_builder',
      required this.prompt,
      final List<SentenceToken> tokens = const <SentenceToken>[],
      @JsonKey(name: 'correct_token_ids')
      final List<String> correctTokenIds = const <String>[],
      @JsonKey(name: 'correct_answer') this.correctAnswer,
      this.explanation,
      final Map<String, Object?> extras = const <String, Object?>{}})
      : _tokens = tokens,
        _correctTokenIds = correctTokenIds,
        _extras = extras,
        super._();

  factory _$SentenceBuilderBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentenceBuilderBlockImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  final String prompt;
  final List<SentenceToken> _tokens;
  @override
  @JsonKey()
  List<SentenceToken> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  final List<String> _correctTokenIds;
  @override
  @JsonKey(name: 'correct_token_ids')
  List<String> get correctTokenIds {
    if (_correctTokenIds is EqualUnmodifiableListView) return _correctTokenIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_correctTokenIds);
  }

  @override
  @JsonKey(name: 'correct_answer')
  final String? correctAnswer;
  @override
  final String? explanation;
  final Map<String, Object?> _extras;
  @override
  @JsonKey()
  Map<String, Object?> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'LessonBlock.sentenceBuilder(id: $id, type: $type, prompt: $prompt, tokens: $tokens, correctTokenIds: $correctTokenIds, correctAnswer: $correctAnswer, explanation: $explanation, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentenceBuilderBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens) &&
            const DeepCollectionEquality()
                .equals(other._correctTokenIds, _correctTokenIds) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      prompt,
      const DeepCollectionEquality().hash(_tokens),
      const DeepCollectionEquality().hash(_correctTokenIds),
      correctAnswer,
      explanation,
      const DeepCollectionEquality().hash(_extras));

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentenceBuilderBlockImplCopyWith<_$SentenceBuilderBlockImpl>
      get copyWith =>
          __$$SentenceBuilderBlockImplCopyWithImpl<_$SentenceBuilderBlockImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) {
    return sentenceBuilder(id, type, prompt, tokens, correctTokenIds,
        correctAnswer, explanation, extras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) {
    return sentenceBuilder?.call(id, type, prompt, tokens, correctTokenIds,
        correctAnswer, explanation, extras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) {
    if (sentenceBuilder != null) {
      return sentenceBuilder(id, type, prompt, tokens, correctTokenIds,
          correctAnswer, explanation, extras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) {
    return sentenceBuilder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) {
    return sentenceBuilder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) {
    if (sentenceBuilder != null) {
      return sentenceBuilder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SentenceBuilderBlockImplToJson(
      this,
    );
  }
}

abstract class _SentenceBuilderBlock extends LessonBlock {
  const factory _SentenceBuilderBlock(
      {required final String id,
      final String type,
      required final String prompt,
      final List<SentenceToken> tokens,
      @JsonKey(name: 'correct_token_ids') final List<String> correctTokenIds,
      @JsonKey(name: 'correct_answer') final String? correctAnswer,
      final String? explanation,
      final Map<String, Object?> extras}) = _$SentenceBuilderBlockImpl;
  const _SentenceBuilderBlock._() : super._();

  factory _SentenceBuilderBlock.fromJson(Map<String, dynamic> json) =
      _$SentenceBuilderBlockImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  String get prompt;
  List<SentenceToken> get tokens;
  @JsonKey(name: 'correct_token_ids')
  List<String> get correctTokenIds;
  @JsonKey(name: 'correct_answer')
  String? get correctAnswer;
  String? get explanation;
  Map<String, Object?> get extras;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentenceBuilderBlockImplCopyWith<_$SentenceBuilderBlockImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownLessonBlockImplCopyWith<$Res>
    implements $LessonBlockCopyWith<$Res> {
  factory _$$UnknownLessonBlockImplCopyWith(_$UnknownLessonBlockImpl value,
          $Res Function(_$UnknownLessonBlockImpl) then) =
      __$$UnknownLessonBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String? rawType,
      Map<String, Object?> raw});
}

/// @nodoc
class __$$UnknownLessonBlockImplCopyWithImpl<$Res>
    extends _$LessonBlockCopyWithImpl<$Res, _$UnknownLessonBlockImpl>
    implements _$$UnknownLessonBlockImplCopyWith<$Res> {
  __$$UnknownLessonBlockImplCopyWithImpl(_$UnknownLessonBlockImpl _value,
      $Res Function(_$UnknownLessonBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? rawType = freezed,
    Object? raw = null,
  }) {
    return _then(_$UnknownLessonBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rawType: freezed == rawType
          ? _value.rawType
          : rawType // ignore: cast_nullable_to_non_nullable
              as String?,
      raw: null == raw
          ? _value._raw
          : raw // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnknownLessonBlockImpl extends _UnknownLessonBlock {
  const _$UnknownLessonBlockImpl(
      {required this.id,
      this.type = 'unknown',
      this.title = 'Unsupported block',
      this.rawType,
      final Map<String, Object?> raw = const <String, Object?>{}})
      : _raw = raw,
        super._();

  factory _$UnknownLessonBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownLessonBlockImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String title;
  @override
  final String? rawType;
  final Map<String, Object?> _raw;
  @override
  @JsonKey()
  Map<String, Object?> get raw {
    if (_raw is EqualUnmodifiableMapView) return _raw;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_raw);
  }

  @override
  String toString() {
    return 'LessonBlock.unknown(id: $id, type: $type, title: $title, rawType: $rawType, raw: $raw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownLessonBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rawType, rawType) || other.rawType == rawType) &&
            const DeepCollectionEquality().equals(other._raw, _raw));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, title, rawType,
      const DeepCollectionEquality().hash(_raw));

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownLessonBlockImplCopyWith<_$UnknownLessonBlockImpl> get copyWith =>
      __$$UnknownLessonBlockImplCopyWithImpl<_$UnknownLessonBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String type,
            String title,
            String content,
            bool skippable,
            List<String> bullets,
            Map<String, Object?> extras)
        text,
    required TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        quiz,
    required TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)
        video,
    required TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)
        code,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)
        choice,
    required TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)
        sentenceBuilder,
    required TResult Function(String id, String type, String title,
            String? rawType, Map<String, Object?> raw)
        unknown,
  }) {
    return unknown(id, type, title, rawType, raw);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult? Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult? Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult? Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult? Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult? Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
  }) {
    return unknown?.call(id, type, title, rawType, raw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String type, String title, String content,
            bool skippable, List<String> bullets, Map<String, Object?> extras)?
        text,
    TResult Function(
            String id,
            String type,
            String question,
            List<String> options,
            @JsonKey(name: 'correct_answer') String correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        quiz,
    TResult Function(
            String id,
            String type,
            String title,
            @JsonKey(name: 'video_url') String videoUrl,
            String? caption,
            int durationSeconds,
            Map<String, Object?> extras)?
        video,
    TResult Function(
            String id,
            String type,
            String prompt,
            @JsonKey(name: 'code_snippet') String codeSnippet,
            String? language,
            @JsonKey(name: 'expected_answer') String? expectedAnswer,
            List<String> hints,
            Map<String, Object?> extras)?
        code,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<ChoiceOption> options,
            @JsonKey(name: 'correct_option_id') String correctOptionId,
            bool? multiple,
            Map<String, Object?> extras)?
        choice,
    TResult Function(
            String id,
            String type,
            String prompt,
            List<SentenceToken> tokens,
            @JsonKey(name: 'correct_token_ids') List<String> correctTokenIds,
            @JsonKey(name: 'correct_answer') String? correctAnswer,
            String? explanation,
            Map<String, Object?> extras)?
        sentenceBuilder,
    TResult Function(String id, String type, String title, String? rawType,
            Map<String, Object?> raw)?
        unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(id, type, title, rawType, raw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextBlock value) text,
    required TResult Function(_QuizBlock value) quiz,
    required TResult Function(_VideoBlock value) video,
    required TResult Function(_CodeBlock value) code,
    required TResult Function(_ChoiceBlock value) choice,
    required TResult Function(_SentenceBuilderBlock value) sentenceBuilder,
    required TResult Function(_UnknownLessonBlock value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextBlock value)? text,
    TResult? Function(_QuizBlock value)? quiz,
    TResult? Function(_VideoBlock value)? video,
    TResult? Function(_CodeBlock value)? code,
    TResult? Function(_ChoiceBlock value)? choice,
    TResult? Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult? Function(_UnknownLessonBlock value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextBlock value)? text,
    TResult Function(_QuizBlock value)? quiz,
    TResult Function(_VideoBlock value)? video,
    TResult Function(_CodeBlock value)? code,
    TResult Function(_ChoiceBlock value)? choice,
    TResult Function(_SentenceBuilderBlock value)? sentenceBuilder,
    TResult Function(_UnknownLessonBlock value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownLessonBlockImplToJson(
      this,
    );
  }
}

abstract class _UnknownLessonBlock extends LessonBlock {
  const factory _UnknownLessonBlock(
      {required final String id,
      final String type,
      final String title,
      final String? rawType,
      final Map<String, Object?> raw}) = _$UnknownLessonBlockImpl;
  const _UnknownLessonBlock._() : super._();

  factory _UnknownLessonBlock.fromJson(Map<String, dynamic> json) =
      _$UnknownLessonBlockImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  String get title;
  String? get rawType;
  Map<String, Object?> get raw;

  /// Create a copy of LessonBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownLessonBlockImplCopyWith<_$UnknownLessonBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoiceOption _$ChoiceOptionFromJson(Map<String, dynamic> json) {
  return _ChoiceOption.fromJson(json);
}

/// @nodoc
mixin _$ChoiceOption {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;

  /// Serializes this ChoiceOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoiceOptionCopyWith<ChoiceOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceOptionCopyWith<$Res> {
  factory $ChoiceOptionCopyWith(
          ChoiceOption value, $Res Function(ChoiceOption) then) =
      _$ChoiceOptionCopyWithImpl<$Res, ChoiceOption>;
  @useResult
  $Res call({String id, String label, String? feedback});
}

/// @nodoc
class _$ChoiceOptionCopyWithImpl<$Res, $Val extends ChoiceOption>
    implements $ChoiceOptionCopyWith<$Res> {
  _$ChoiceOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceOptionImplCopyWith<$Res>
    implements $ChoiceOptionCopyWith<$Res> {
  factory _$$ChoiceOptionImplCopyWith(
          _$ChoiceOptionImpl value, $Res Function(_$ChoiceOptionImpl) then) =
      __$$ChoiceOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String? feedback});
}

/// @nodoc
class __$$ChoiceOptionImplCopyWithImpl<$Res>
    extends _$ChoiceOptionCopyWithImpl<$Res, _$ChoiceOptionImpl>
    implements _$$ChoiceOptionImplCopyWith<$Res> {
  __$$ChoiceOptionImplCopyWithImpl(
      _$ChoiceOptionImpl _value, $Res Function(_$ChoiceOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? feedback = freezed,
  }) {
    return _then(_$ChoiceOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceOptionImpl implements _ChoiceOption {
  const _$ChoiceOptionImpl(
      {required this.id, required this.label, this.feedback});

  factory _$ChoiceOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String? feedback;

  @override
  String toString() {
    return 'ChoiceOption(id: $id, label: $label, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, feedback);

  /// Create a copy of ChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceOptionImplCopyWith<_$ChoiceOptionImpl> get copyWith =>
      __$$ChoiceOptionImplCopyWithImpl<_$ChoiceOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceOptionImplToJson(
      this,
    );
  }
}

abstract class _ChoiceOption implements ChoiceOption {
  const factory _ChoiceOption(
      {required final String id,
      required final String label,
      final String? feedback}) = _$ChoiceOptionImpl;

  factory _ChoiceOption.fromJson(Map<String, dynamic> json) =
      _$ChoiceOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String? get feedback;

  /// Create a copy of ChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceOptionImplCopyWith<_$ChoiceOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
