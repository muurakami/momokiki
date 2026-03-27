// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonIsland _$LessonIslandFromJson(Map<String, dynamic> json) {
  return _LessonIsland.fromJson(json);
}

/// @nodoc
mixin _$LessonIsland {
  String get lessonId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  SupportedLanguage get language => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  String? get emoji => throw _privateConstructorUsedError;

  /// Serializes this LessonIsland to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonIsland
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonIslandCopyWith<LessonIsland> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonIslandCopyWith<$Res> {
  factory $LessonIslandCopyWith(
          LessonIsland value, $Res Function(LessonIsland) then) =
      _$LessonIslandCopyWithImpl<$Res, LessonIsland>;
  @useResult
  $Res call(
      {String lessonId,
      String title,
      String subtitle,
      SupportedLanguage language,
      int order,
      bool isLocked,
      double progress,
      String? emoji});
}

/// @nodoc
class _$LessonIslandCopyWithImpl<$Res, $Val extends LessonIsland>
    implements $LessonIslandCopyWith<$Res> {
  _$LessonIslandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonIsland
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? title = null,
    Object? subtitle = null,
    Object? language = null,
    Object? order = null,
    Object? isLocked = null,
    Object? progress = null,
    Object? emoji = freezed,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonIslandImplCopyWith<$Res>
    implements $LessonIslandCopyWith<$Res> {
  factory _$$LessonIslandImplCopyWith(
          _$LessonIslandImpl value, $Res Function(_$LessonIslandImpl) then) =
      __$$LessonIslandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lessonId,
      String title,
      String subtitle,
      SupportedLanguage language,
      int order,
      bool isLocked,
      double progress,
      String? emoji});
}

/// @nodoc
class __$$LessonIslandImplCopyWithImpl<$Res>
    extends _$LessonIslandCopyWithImpl<$Res, _$LessonIslandImpl>
    implements _$$LessonIslandImplCopyWith<$Res> {
  __$$LessonIslandImplCopyWithImpl(
      _$LessonIslandImpl _value, $Res Function(_$LessonIslandImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonIsland
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? title = null,
    Object? subtitle = null,
    Object? language = null,
    Object? order = null,
    Object? isLocked = null,
    Object? progress = null,
    Object? emoji = freezed,
  }) {
    return _then(_$LessonIslandImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonIslandImpl implements _LessonIsland {
  const _$LessonIslandImpl(
      {required this.lessonId,
      required this.title,
      required this.subtitle,
      required this.language,
      this.order = 1,
      this.isLocked = false,
      this.progress = 0,
      this.emoji});

  factory _$LessonIslandImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonIslandImplFromJson(json);

  @override
  final String lessonId;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final SupportedLanguage language;
  @override
  @JsonKey()
  final int order;
  @override
  @JsonKey()
  final bool isLocked;
  @override
  @JsonKey()
  final double progress;
  @override
  final String? emoji;

  @override
  String toString() {
    return 'LessonIsland(lessonId: $lessonId, title: $title, subtitle: $subtitle, language: $language, order: $order, isLocked: $isLocked, progress: $progress, emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonIslandImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lessonId, title, subtitle,
      language, order, isLocked, progress, emoji);

  /// Create a copy of LessonIsland
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonIslandImplCopyWith<_$LessonIslandImpl> get copyWith =>
      __$$LessonIslandImplCopyWithImpl<_$LessonIslandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonIslandImplToJson(
      this,
    );
  }
}

abstract class _LessonIsland implements LessonIsland {
  const factory _LessonIsland(
      {required final String lessonId,
      required final String title,
      required final String subtitle,
      required final SupportedLanguage language,
      final int order,
      final bool isLocked,
      final double progress,
      final String? emoji}) = _$LessonIslandImpl;

  factory _LessonIsland.fromJson(Map<String, dynamic> json) =
      _$LessonIslandImpl.fromJson;

  @override
  String get lessonId;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  SupportedLanguage get language;
  @override
  int get order;
  @override
  bool get isLocked;
  @override
  double get progress;
  @override
  String? get emoji;

  /// Create a copy of LessonIsland
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonIslandImplCopyWith<_$LessonIslandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoadmapDocument _$RoadmapDocumentFromJson(Map<String, dynamic> json) {
  return _RoadmapDocument.fromJson(json);
}

/// @nodoc
mixin _$RoadmapDocument {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  SupportedLanguage get language => throw _privateConstructorUsedError;
  List<RoadmapSection> get sections => throw _privateConstructorUsedError;
  String? get sourcePath => throw _privateConstructorUsedError;
  bool get isImported => throw _privateConstructorUsedError;

  /// Serializes this RoadmapDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoadmapDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoadmapDocumentCopyWith<RoadmapDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadmapDocumentCopyWith<$Res> {
  factory $RoadmapDocumentCopyWith(
          RoadmapDocument value, $Res Function(RoadmapDocument) then) =
      _$RoadmapDocumentCopyWithImpl<$Res, RoadmapDocument>;
  @useResult
  $Res call(
      {String id,
      String title,
      SupportedLanguage language,
      List<RoadmapSection> sections,
      String? sourcePath,
      bool isImported});
}

/// @nodoc
class _$RoadmapDocumentCopyWithImpl<$Res, $Val extends RoadmapDocument>
    implements $RoadmapDocumentCopyWith<$Res> {
  _$RoadmapDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoadmapDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? language = null,
    Object? sections = null,
    Object? sourcePath = freezed,
    Object? isImported = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<RoadmapSection>,
      sourcePath: freezed == sourcePath
          ? _value.sourcePath
          : sourcePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isImported: null == isImported
          ? _value.isImported
          : isImported // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoadmapDocumentImplCopyWith<$Res>
    implements $RoadmapDocumentCopyWith<$Res> {
  factory _$$RoadmapDocumentImplCopyWith(_$RoadmapDocumentImpl value,
          $Res Function(_$RoadmapDocumentImpl) then) =
      __$$RoadmapDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      SupportedLanguage language,
      List<RoadmapSection> sections,
      String? sourcePath,
      bool isImported});
}

/// @nodoc
class __$$RoadmapDocumentImplCopyWithImpl<$Res>
    extends _$RoadmapDocumentCopyWithImpl<$Res, _$RoadmapDocumentImpl>
    implements _$$RoadmapDocumentImplCopyWith<$Res> {
  __$$RoadmapDocumentImplCopyWithImpl(
      _$RoadmapDocumentImpl _value, $Res Function(_$RoadmapDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoadmapDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? language = null,
    Object? sections = null,
    Object? sourcePath = freezed,
    Object? isImported = null,
  }) {
    return _then(_$RoadmapDocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<RoadmapSection>,
      sourcePath: freezed == sourcePath
          ? _value.sourcePath
          : sourcePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isImported: null == isImported
          ? _value.isImported
          : isImported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoadmapDocumentImpl implements _RoadmapDocument {
  const _$RoadmapDocumentImpl(
      {required this.id,
      required this.title,
      required this.language,
      final List<RoadmapSection> sections = const <RoadmapSection>[],
      this.sourcePath,
      this.isImported = false})
      : _sections = sections;

  factory _$RoadmapDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadmapDocumentImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final SupportedLanguage language;
  final List<RoadmapSection> _sections;
  @override
  @JsonKey()
  List<RoadmapSection> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final String? sourcePath;
  @override
  @JsonKey()
  final bool isImported;

  @override
  String toString() {
    return 'RoadmapDocument(id: $id, title: $title, language: $language, sections: $sections, sourcePath: $sourcePath, isImported: $isImported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadmapDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.sourcePath, sourcePath) ||
                other.sourcePath == sourcePath) &&
            (identical(other.isImported, isImported) ||
                other.isImported == isImported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, language,
      const DeepCollectionEquality().hash(_sections), sourcePath, isImported);

  /// Create a copy of RoadmapDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadmapDocumentImplCopyWith<_$RoadmapDocumentImpl> get copyWith =>
      __$$RoadmapDocumentImplCopyWithImpl<_$RoadmapDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadmapDocumentImplToJson(
      this,
    );
  }
}

abstract class _RoadmapDocument implements RoadmapDocument {
  const factory _RoadmapDocument(
      {required final String id,
      required final String title,
      required final SupportedLanguage language,
      final List<RoadmapSection> sections,
      final String? sourcePath,
      final bool isImported}) = _$RoadmapDocumentImpl;

  factory _RoadmapDocument.fromJson(Map<String, dynamic> json) =
      _$RoadmapDocumentImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  SupportedLanguage get language;
  @override
  List<RoadmapSection> get sections;
  @override
  String? get sourcePath;
  @override
  bool get isImported;

  /// Create a copy of RoadmapDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoadmapDocumentImplCopyWith<_$RoadmapDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoadmapSection _$RoadmapSectionFromJson(Map<String, dynamic> json) {
  return _RoadmapSection.fromJson(json);
}

/// @nodoc
mixin _$RoadmapSection {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<RoadmapItem> get items => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this RoadmapSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoadmapSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoadmapSectionCopyWith<RoadmapSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadmapSectionCopyWith<$Res> {
  factory $RoadmapSectionCopyWith(
          RoadmapSection value, $Res Function(RoadmapSection) then) =
      _$RoadmapSectionCopyWithImpl<$Res, RoadmapSection>;
  @useResult
  $Res call(
      {String name, String? description, List<RoadmapItem> items, int order});
}

/// @nodoc
class _$RoadmapSectionCopyWithImpl<$Res, $Val extends RoadmapSection>
    implements $RoadmapSectionCopyWith<$Res> {
  _$RoadmapSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoadmapSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? items = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RoadmapItem>,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoadmapSectionImplCopyWith<$Res>
    implements $RoadmapSectionCopyWith<$Res> {
  factory _$$RoadmapSectionImplCopyWith(_$RoadmapSectionImpl value,
          $Res Function(_$RoadmapSectionImpl) then) =
      __$$RoadmapSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String? description, List<RoadmapItem> items, int order});
}

/// @nodoc
class __$$RoadmapSectionImplCopyWithImpl<$Res>
    extends _$RoadmapSectionCopyWithImpl<$Res, _$RoadmapSectionImpl>
    implements _$$RoadmapSectionImplCopyWith<$Res> {
  __$$RoadmapSectionImplCopyWithImpl(
      _$RoadmapSectionImpl _value, $Res Function(_$RoadmapSectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoadmapSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? items = null,
    Object? order = null,
  }) {
    return _then(_$RoadmapSectionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RoadmapItem>,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoadmapSectionImpl implements _RoadmapSection {
  const _$RoadmapSectionImpl(
      {required this.name,
      this.description,
      final List<RoadmapItem> items = const <RoadmapItem>[],
      this.order = 0})
      : _items = items;

  factory _$RoadmapSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadmapSectionImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  final List<RoadmapItem> _items;
  @override
  @JsonKey()
  List<RoadmapItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'RoadmapSection(name: $name, description: $description, items: $items, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadmapSectionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_items), order);

  /// Create a copy of RoadmapSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadmapSectionImplCopyWith<_$RoadmapSectionImpl> get copyWith =>
      __$$RoadmapSectionImplCopyWithImpl<_$RoadmapSectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadmapSectionImplToJson(
      this,
    );
  }
}

abstract class _RoadmapSection implements RoadmapSection {
  const factory _RoadmapSection(
      {required final String name,
      final String? description,
      final List<RoadmapItem> items,
      final int order}) = _$RoadmapSectionImpl;

  factory _RoadmapSection.fromJson(Map<String, dynamic> json) =
      _$RoadmapSectionImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  List<RoadmapItem> get items;
  @override
  int get order;

  /// Create a copy of RoadmapSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoadmapSectionImplCopyWith<_$RoadmapSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoadmapItem _$RoadmapItemFromJson(Map<String, dynamic> json) {
  return _RoadmapItem.fromJson(json);
}

/// @nodoc
mixin _$RoadmapItem {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  List<String> get steps => throw _privateConstructorUsedError;

  /// Serializes this RoadmapItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoadmapItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoadmapItemCopyWith<RoadmapItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadmapItemCopyWith<$Res> {
  factory $RoadmapItemCopyWith(
          RoadmapItem value, $Res Function(RoadmapItem) then) =
      _$RoadmapItemCopyWithImpl<$Res, RoadmapItem>;
  @useResult
  $Res call(
      {String name,
      String? description,
      int order,
      String? duration,
      List<String> steps});
}

/// @nodoc
class _$RoadmapItemCopyWithImpl<$Res, $Val extends RoadmapItem>
    implements $RoadmapItemCopyWith<$Res> {
  _$RoadmapItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoadmapItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? order = null,
    Object? duration = freezed,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoadmapItemImplCopyWith<$Res>
    implements $RoadmapItemCopyWith<$Res> {
  factory _$$RoadmapItemImplCopyWith(
          _$RoadmapItemImpl value, $Res Function(_$RoadmapItemImpl) then) =
      __$$RoadmapItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      int order,
      String? duration,
      List<String> steps});
}

/// @nodoc
class __$$RoadmapItemImplCopyWithImpl<$Res>
    extends _$RoadmapItemCopyWithImpl<$Res, _$RoadmapItemImpl>
    implements _$$RoadmapItemImplCopyWith<$Res> {
  __$$RoadmapItemImplCopyWithImpl(
      _$RoadmapItemImpl _value, $Res Function(_$RoadmapItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoadmapItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? order = null,
    Object? duration = freezed,
    Object? steps = null,
  }) {
    return _then(_$RoadmapItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoadmapItemImpl implements _RoadmapItem {
  const _$RoadmapItemImpl(
      {required this.name,
      this.description,
      this.order = 0,
      this.duration,
      final List<String> steps = const <String>[]})
      : _steps = steps;

  factory _$RoadmapItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadmapItemImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final int order;
  @override
  final String? duration;
  final List<String> _steps;
  @override
  @JsonKey()
  List<String> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'RoadmapItem(name: $name, description: $description, order: $order, duration: $duration, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadmapItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, order,
      duration, const DeepCollectionEquality().hash(_steps));

  /// Create a copy of RoadmapItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadmapItemImplCopyWith<_$RoadmapItemImpl> get copyWith =>
      __$$RoadmapItemImplCopyWithImpl<_$RoadmapItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadmapItemImplToJson(
      this,
    );
  }
}

abstract class _RoadmapItem implements RoadmapItem {
  const factory _RoadmapItem(
      {required final String name,
      final String? description,
      final int order,
      final String? duration,
      final List<String> steps}) = _$RoadmapItemImpl;

  factory _RoadmapItem.fromJson(Map<String, dynamic> json) =
      _$RoadmapItemImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  int get order;
  @override
  String? get duration;
  @override
  List<String> get steps;

  /// Create a copy of RoadmapItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoadmapItemImplCopyWith<_$RoadmapItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningCatalog _$LearningCatalogFromJson(Map<String, dynamic> json) {
  return _LearningCatalog.fromJson(json);
}

/// @nodoc
mixin _$LearningCatalog {
  SupportedLanguage get language => throw _privateConstructorUsedError;
  List<LessonIsland> get lessons => throw _privateConstructorUsedError;
  List<RoadmapDocument> get roadmaps => throw _privateConstructorUsedError;

  /// Serializes this LearningCatalog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningCatalogCopyWith<LearningCatalog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningCatalogCopyWith<$Res> {
  factory $LearningCatalogCopyWith(
          LearningCatalog value, $Res Function(LearningCatalog) then) =
      _$LearningCatalogCopyWithImpl<$Res, LearningCatalog>;
  @useResult
  $Res call(
      {SupportedLanguage language,
      List<LessonIsland> lessons,
      List<RoadmapDocument> roadmaps});
}

/// @nodoc
class _$LearningCatalogCopyWithImpl<$Res, $Val extends LearningCatalog>
    implements $LearningCatalogCopyWith<$Res> {
  _$LearningCatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? lessons = null,
    Object? roadmaps = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonIsland>,
      roadmaps: null == roadmaps
          ? _value.roadmaps
          : roadmaps // ignore: cast_nullable_to_non_nullable
              as List<RoadmapDocument>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningCatalogImplCopyWith<$Res>
    implements $LearningCatalogCopyWith<$Res> {
  factory _$$LearningCatalogImplCopyWith(_$LearningCatalogImpl value,
          $Res Function(_$LearningCatalogImpl) then) =
      __$$LearningCatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportedLanguage language,
      List<LessonIsland> lessons,
      List<RoadmapDocument> roadmaps});
}

/// @nodoc
class __$$LearningCatalogImplCopyWithImpl<$Res>
    extends _$LearningCatalogCopyWithImpl<$Res, _$LearningCatalogImpl>
    implements _$$LearningCatalogImplCopyWith<$Res> {
  __$$LearningCatalogImplCopyWithImpl(
      _$LearningCatalogImpl _value, $Res Function(_$LearningCatalogImpl) _then)
      : super(_value, _then);

  /// Create a copy of LearningCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? lessons = null,
    Object? roadmaps = null,
  }) {
    return _then(_$LearningCatalogImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SupportedLanguage,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonIsland>,
      roadmaps: null == roadmaps
          ? _value._roadmaps
          : roadmaps // ignore: cast_nullable_to_non_nullable
              as List<RoadmapDocument>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningCatalogImpl implements _LearningCatalog {
  const _$LearningCatalogImpl(
      {required this.language,
      final List<LessonIsland> lessons = const <LessonIsland>[],
      final List<RoadmapDocument> roadmaps = const <RoadmapDocument>[]})
      : _lessons = lessons,
        _roadmaps = roadmaps;

  factory _$LearningCatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningCatalogImplFromJson(json);

  @override
  final SupportedLanguage language;
  final List<LessonIsland> _lessons;
  @override
  @JsonKey()
  List<LessonIsland> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  final List<RoadmapDocument> _roadmaps;
  @override
  @JsonKey()
  List<RoadmapDocument> get roadmaps {
    if (_roadmaps is EqualUnmodifiableListView) return _roadmaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roadmaps);
  }

  @override
  String toString() {
    return 'LearningCatalog(language: $language, lessons: $lessons, roadmaps: $roadmaps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningCatalogImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality().equals(other._roadmaps, _roadmaps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      language,
      const DeepCollectionEquality().hash(_lessons),
      const DeepCollectionEquality().hash(_roadmaps));

  /// Create a copy of LearningCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningCatalogImplCopyWith<_$LearningCatalogImpl> get copyWith =>
      __$$LearningCatalogImplCopyWithImpl<_$LearningCatalogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningCatalogImplToJson(
      this,
    );
  }
}

abstract class _LearningCatalog implements LearningCatalog {
  const factory _LearningCatalog(
      {required final SupportedLanguage language,
      final List<LessonIsland> lessons,
      final List<RoadmapDocument> roadmaps}) = _$LearningCatalogImpl;

  factory _LearningCatalog.fromJson(Map<String, dynamic> json) =
      _$LearningCatalogImpl.fromJson;

  @override
  SupportedLanguage get language;
  @override
  List<LessonIsland> get lessons;
  @override
  List<RoadmapDocument> get roadmaps;

  /// Create a copy of LearningCatalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningCatalogImplCopyWith<_$LearningCatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
