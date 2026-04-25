// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DictionaryEntry _$DictionaryEntryFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'japanese':
      return DictionaryJapaneseEntry.fromJson(json);
    case 'english':
      return DictionaryEnglishEntry.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DictionaryEntry',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DictionaryEntry {
  String get source => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String entryId,
            List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses,
            bool isCommon,
            String source)
        japanese,
    required TResult Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)
        english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String entryId, List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses, bool isCommon, String source)?
        japanese,
    TResult? Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)?
        english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String entryId, List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses, bool isCommon, String source)?
        japanese,
    TResult Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)?
        english,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryJapaneseEntry value) japanese,
    required TResult Function(DictionaryEnglishEntry value) english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryJapaneseEntry value)? japanese,
    TResult? Function(DictionaryEnglishEntry value)? english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryJapaneseEntry value)? japanese,
    TResult Function(DictionaryEnglishEntry value)? english,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DictionaryEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryEntryCopyWith<DictionaryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEntryCopyWith<$Res> {
  factory $DictionaryEntryCopyWith(
          DictionaryEntry value, $Res Function(DictionaryEntry) then) =
      _$DictionaryEntryCopyWithImpl<$Res, DictionaryEntry>;
  @useResult
  $Res call({String source});
}

/// @nodoc
class _$DictionaryEntryCopyWithImpl<$Res, $Val extends DictionaryEntry>
    implements $DictionaryEntryCopyWith<$Res> {
  _$DictionaryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryJapaneseEntryImplCopyWith<$Res>
    implements $DictionaryEntryCopyWith<$Res> {
  factory _$$DictionaryJapaneseEntryImplCopyWith(
          _$DictionaryJapaneseEntryImpl value,
          $Res Function(_$DictionaryJapaneseEntryImpl) then) =
      __$$DictionaryJapaneseEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String entryId,
      List<DictionaryJapaneseForm> forms,
      List<DictionaryJapaneseSense> senses,
      bool isCommon,
      String source});
}

/// @nodoc
class __$$DictionaryJapaneseEntryImplCopyWithImpl<$Res>
    extends _$DictionaryEntryCopyWithImpl<$Res, _$DictionaryJapaneseEntryImpl>
    implements _$$DictionaryJapaneseEntryImplCopyWith<$Res> {
  __$$DictionaryJapaneseEntryImplCopyWithImpl(
      _$DictionaryJapaneseEntryImpl _value,
      $Res Function(_$DictionaryJapaneseEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryId = null,
    Object? forms = null,
    Object? senses = null,
    Object? isCommon = null,
    Object? source = null,
  }) {
    return _then(_$DictionaryJapaneseEntryImpl(
      entryId: null == entryId
          ? _value.entryId
          : entryId // ignore: cast_nullable_to_non_nullable
              as String,
      forms: null == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<DictionaryJapaneseForm>,
      senses: null == senses
          ? _value._senses
          : senses // ignore: cast_nullable_to_non_nullable
              as List<DictionaryJapaneseSense>,
      isCommon: null == isCommon
          ? _value.isCommon
          : isCommon // ignore: cast_nullable_to_non_nullable
              as bool,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryJapaneseEntryImpl extends DictionaryJapaneseEntry {
  const _$DictionaryJapaneseEntryImpl(
      {required this.entryId,
      final List<DictionaryJapaneseForm> forms =
          const <DictionaryJapaneseForm>[],
      final List<DictionaryJapaneseSense> senses =
          const <DictionaryJapaneseSense>[],
      this.isCommon = false,
      this.source = 'jmdict',
      final String? $type})
      : _forms = forms,
        _senses = senses,
        $type = $type ?? 'japanese',
        super._();

  factory _$DictionaryJapaneseEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryJapaneseEntryImplFromJson(json);

  @override
  final String entryId;
  final List<DictionaryJapaneseForm> _forms;
  @override
  @JsonKey()
  List<DictionaryJapaneseForm> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

  final List<DictionaryJapaneseSense> _senses;
  @override
  @JsonKey()
  List<DictionaryJapaneseSense> get senses {
    if (_senses is EqualUnmodifiableListView) return _senses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_senses);
  }

  @override
  @JsonKey()
  final bool isCommon;
  @override
  @JsonKey()
  final String source;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DictionaryEntry.japanese(entryId: $entryId, forms: $forms, senses: $senses, isCommon: $isCommon, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryJapaneseEntryImpl &&
            (identical(other.entryId, entryId) || other.entryId == entryId) &&
            const DeepCollectionEquality().equals(other._forms, _forms) &&
            const DeepCollectionEquality().equals(other._senses, _senses) &&
            (identical(other.isCommon, isCommon) ||
                other.isCommon == isCommon) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      entryId,
      const DeepCollectionEquality().hash(_forms),
      const DeepCollectionEquality().hash(_senses),
      isCommon,
      source);

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryJapaneseEntryImplCopyWith<_$DictionaryJapaneseEntryImpl>
      get copyWith => __$$DictionaryJapaneseEntryImplCopyWithImpl<
          _$DictionaryJapaneseEntryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String entryId,
            List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses,
            bool isCommon,
            String source)
        japanese,
    required TResult Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)
        english,
  }) {
    return japanese(entryId, forms, senses, isCommon, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String entryId, List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses, bool isCommon, String source)?
        japanese,
    TResult? Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)?
        english,
  }) {
    return japanese?.call(entryId, forms, senses, isCommon, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String entryId, List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses, bool isCommon, String source)?
        japanese,
    TResult Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)?
        english,
    required TResult orElse(),
  }) {
    if (japanese != null) {
      return japanese(entryId, forms, senses, isCommon, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryJapaneseEntry value) japanese,
    required TResult Function(DictionaryEnglishEntry value) english,
  }) {
    return japanese(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryJapaneseEntry value)? japanese,
    TResult? Function(DictionaryEnglishEntry value)? english,
  }) {
    return japanese?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryJapaneseEntry value)? japanese,
    TResult Function(DictionaryEnglishEntry value)? english,
    required TResult orElse(),
  }) {
    if (japanese != null) {
      return japanese(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryJapaneseEntryImplToJson(
      this,
    );
  }
}

abstract class DictionaryJapaneseEntry extends DictionaryEntry {
  const factory DictionaryJapaneseEntry(
      {required final String entryId,
      final List<DictionaryJapaneseForm> forms,
      final List<DictionaryJapaneseSense> senses,
      final bool isCommon,
      final String source}) = _$DictionaryJapaneseEntryImpl;
  const DictionaryJapaneseEntry._() : super._();

  factory DictionaryJapaneseEntry.fromJson(Map<String, dynamic> json) =
      _$DictionaryJapaneseEntryImpl.fromJson;

  String get entryId;
  List<DictionaryJapaneseForm> get forms;
  List<DictionaryJapaneseSense> get senses;
  bool get isCommon;
  @override
  String get source;

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryJapaneseEntryImplCopyWith<_$DictionaryJapaneseEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictionaryEnglishEntryImplCopyWith<$Res>
    implements $DictionaryEntryCopyWith<$Res> {
  factory _$$DictionaryEnglishEntryImplCopyWith(
          _$DictionaryEnglishEntryImpl value,
          $Res Function(_$DictionaryEnglishEntryImpl) then) =
      __$$DictionaryEnglishEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<DictionaryEnglishPhonetic> phonetics,
      List<DictionaryEnglishMeaning> meanings,
      String source});
}

/// @nodoc
class __$$DictionaryEnglishEntryImplCopyWithImpl<$Res>
    extends _$DictionaryEntryCopyWithImpl<$Res, _$DictionaryEnglishEntryImpl>
    implements _$$DictionaryEnglishEntryImplCopyWith<$Res> {
  __$$DictionaryEnglishEntryImplCopyWithImpl(
      _$DictionaryEnglishEntryImpl _value,
      $Res Function(_$DictionaryEnglishEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = null,
    Object? meanings = null,
    Object? source = null,
  }) {
    return _then(_$DictionaryEnglishEntryImpl(
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
              as List<DictionaryEnglishPhonetic>,
      meanings: null == meanings
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<DictionaryEnglishMeaning>,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryEnglishEntryImpl extends DictionaryEnglishEntry {
  const _$DictionaryEnglishEntryImpl(
      {required this.word,
      this.phonetic,
      final List<DictionaryEnglishPhonetic> phonetics =
          const <DictionaryEnglishPhonetic>[],
      final List<DictionaryEnglishMeaning> meanings =
          const <DictionaryEnglishMeaning>[],
      this.source = 'free_dictionary_api',
      final String? $type})
      : _phonetics = phonetics,
        _meanings = meanings,
        $type = $type ?? 'english',
        super._();

  factory _$DictionaryEnglishEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryEnglishEntryImplFromJson(json);

  @override
  final String word;
  @override
  final String? phonetic;
  final List<DictionaryEnglishPhonetic> _phonetics;
  @override
  @JsonKey()
  List<DictionaryEnglishPhonetic> get phonetics {
    if (_phonetics is EqualUnmodifiableListView) return _phonetics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phonetics);
  }

  final List<DictionaryEnglishMeaning> _meanings;
  @override
  @JsonKey()
  List<DictionaryEnglishMeaning> get meanings {
    if (_meanings is EqualUnmodifiableListView) return _meanings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meanings);
  }

  @override
  @JsonKey()
  final String source;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DictionaryEntry.english(word: $word, phonetic: $phonetic, phonetics: $phonetics, meanings: $meanings, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryEnglishEntryImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      phonetic,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings),
      source);

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryEnglishEntryImplCopyWith<_$DictionaryEnglishEntryImpl>
      get copyWith => __$$DictionaryEnglishEntryImplCopyWithImpl<
          _$DictionaryEnglishEntryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String entryId,
            List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses,
            bool isCommon,
            String source)
        japanese,
    required TResult Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)
        english,
  }) {
    return english(word, phonetic, phonetics, meanings, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String entryId, List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses, bool isCommon, String source)?
        japanese,
    TResult? Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)?
        english,
  }) {
    return english?.call(word, phonetic, phonetics, meanings, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String entryId, List<DictionaryJapaneseForm> forms,
            List<DictionaryJapaneseSense> senses, bool isCommon, String source)?
        japanese,
    TResult Function(
            String word,
            String? phonetic,
            List<DictionaryEnglishPhonetic> phonetics,
            List<DictionaryEnglishMeaning> meanings,
            String source)?
        english,
    required TResult orElse(),
  }) {
    if (english != null) {
      return english(word, phonetic, phonetics, meanings, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryJapaneseEntry value) japanese,
    required TResult Function(DictionaryEnglishEntry value) english,
  }) {
    return english(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryJapaneseEntry value)? japanese,
    TResult? Function(DictionaryEnglishEntry value)? english,
  }) {
    return english?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryJapaneseEntry value)? japanese,
    TResult Function(DictionaryEnglishEntry value)? english,
    required TResult orElse(),
  }) {
    if (english != null) {
      return english(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryEnglishEntryImplToJson(
      this,
    );
  }
}

abstract class DictionaryEnglishEntry extends DictionaryEntry {
  const factory DictionaryEnglishEntry(
      {required final String word,
      final String? phonetic,
      final List<DictionaryEnglishPhonetic> phonetics,
      final List<DictionaryEnglishMeaning> meanings,
      final String source}) = _$DictionaryEnglishEntryImpl;
  const DictionaryEnglishEntry._() : super._();

  factory DictionaryEnglishEntry.fromJson(Map<String, dynamic> json) =
      _$DictionaryEnglishEntryImpl.fromJson;

  String get word;
  String? get phonetic;
  List<DictionaryEnglishPhonetic> get phonetics;
  List<DictionaryEnglishMeaning> get meanings;
  @override
  String get source;

  /// Create a copy of DictionaryEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryEnglishEntryImplCopyWith<_$DictionaryEnglishEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DictionaryJapaneseForm _$DictionaryJapaneseFormFromJson(
    Map<String, dynamic> json) {
  return _DictionaryJapaneseForm.fromJson(json);
}

/// @nodoc
mixin _$DictionaryJapaneseForm {
  String get text => throw _privateConstructorUsedError;
  String get reading => throw _privateConstructorUsedError;
  String get romaji => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;
  bool get isCommon => throw _privateConstructorUsedError;
  bool get isKanji => throw _privateConstructorUsedError;

  /// Serializes this DictionaryJapaneseForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryJapaneseForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryJapaneseFormCopyWith<DictionaryJapaneseForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryJapaneseFormCopyWith<$Res> {
  factory $DictionaryJapaneseFormCopyWith(DictionaryJapaneseForm value,
          $Res Function(DictionaryJapaneseForm) then) =
      _$DictionaryJapaneseFormCopyWithImpl<$Res, DictionaryJapaneseForm>;
  @useResult
  $Res call(
      {String text,
      String reading,
      String romaji,
      bool isPrimary,
      bool isCommon,
      bool isKanji});
}

/// @nodoc
class _$DictionaryJapaneseFormCopyWithImpl<$Res,
        $Val extends DictionaryJapaneseForm>
    implements $DictionaryJapaneseFormCopyWith<$Res> {
  _$DictionaryJapaneseFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryJapaneseForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? reading = null,
    Object? romaji = null,
    Object? isPrimary = null,
    Object? isCommon = null,
    Object? isKanji = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      reading: null == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as String,
      romaji: null == romaji
          ? _value.romaji
          : romaji // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isCommon: null == isCommon
          ? _value.isCommon
          : isCommon // ignore: cast_nullable_to_non_nullable
              as bool,
      isKanji: null == isKanji
          ? _value.isKanji
          : isKanji // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryJapaneseFormImplCopyWith<$Res>
    implements $DictionaryJapaneseFormCopyWith<$Res> {
  factory _$$DictionaryJapaneseFormImplCopyWith(
          _$DictionaryJapaneseFormImpl value,
          $Res Function(_$DictionaryJapaneseFormImpl) then) =
      __$$DictionaryJapaneseFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      String reading,
      String romaji,
      bool isPrimary,
      bool isCommon,
      bool isKanji});
}

/// @nodoc
class __$$DictionaryJapaneseFormImplCopyWithImpl<$Res>
    extends _$DictionaryJapaneseFormCopyWithImpl<$Res,
        _$DictionaryJapaneseFormImpl>
    implements _$$DictionaryJapaneseFormImplCopyWith<$Res> {
  __$$DictionaryJapaneseFormImplCopyWithImpl(
      _$DictionaryJapaneseFormImpl _value,
      $Res Function(_$DictionaryJapaneseFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryJapaneseForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? reading = null,
    Object? romaji = null,
    Object? isPrimary = null,
    Object? isCommon = null,
    Object? isKanji = null,
  }) {
    return _then(_$DictionaryJapaneseFormImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      reading: null == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as String,
      romaji: null == romaji
          ? _value.romaji
          : romaji // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isCommon: null == isCommon
          ? _value.isCommon
          : isCommon // ignore: cast_nullable_to_non_nullable
              as bool,
      isKanji: null == isKanji
          ? _value.isKanji
          : isKanji // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryJapaneseFormImpl implements _DictionaryJapaneseForm {
  const _$DictionaryJapaneseFormImpl(
      {required this.text,
      required this.reading,
      required this.romaji,
      this.isPrimary = false,
      this.isCommon = false,
      this.isKanji = false});

  factory _$DictionaryJapaneseFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryJapaneseFormImplFromJson(json);

  @override
  final String text;
  @override
  final String reading;
  @override
  final String romaji;
  @override
  @JsonKey()
  final bool isPrimary;
  @override
  @JsonKey()
  final bool isCommon;
  @override
  @JsonKey()
  final bool isKanji;

  @override
  String toString() {
    return 'DictionaryJapaneseForm(text: $text, reading: $reading, romaji: $romaji, isPrimary: $isPrimary, isCommon: $isCommon, isKanji: $isKanji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryJapaneseFormImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.reading, reading) || other.reading == reading) &&
            (identical(other.romaji, romaji) || other.romaji == romaji) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.isCommon, isCommon) ||
                other.isCommon == isCommon) &&
            (identical(other.isKanji, isKanji) || other.isKanji == isKanji));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, reading, romaji, isPrimary, isCommon, isKanji);

  /// Create a copy of DictionaryJapaneseForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryJapaneseFormImplCopyWith<_$DictionaryJapaneseFormImpl>
      get copyWith => __$$DictionaryJapaneseFormImplCopyWithImpl<
          _$DictionaryJapaneseFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryJapaneseFormImplToJson(
      this,
    );
  }
}

abstract class _DictionaryJapaneseForm implements DictionaryJapaneseForm {
  const factory _DictionaryJapaneseForm(
      {required final String text,
      required final String reading,
      required final String romaji,
      final bool isPrimary,
      final bool isCommon,
      final bool isKanji}) = _$DictionaryJapaneseFormImpl;

  factory _DictionaryJapaneseForm.fromJson(Map<String, dynamic> json) =
      _$DictionaryJapaneseFormImpl.fromJson;

  @override
  String get text;
  @override
  String get reading;
  @override
  String get romaji;
  @override
  bool get isPrimary;
  @override
  bool get isCommon;
  @override
  bool get isKanji;

  /// Create a copy of DictionaryJapaneseForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryJapaneseFormImplCopyWith<_$DictionaryJapaneseFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DictionaryJapaneseSense _$DictionaryJapaneseSenseFromJson(
    Map<String, dynamic> json) {
  return _DictionaryJapaneseSense.fromJson(json);
}

/// @nodoc
mixin _$DictionaryJapaneseSense {
  List<String> get partsOfSpeech => throw _privateConstructorUsedError;
  List<String> get glosses => throw _privateConstructorUsedError;

  /// Serializes this DictionaryJapaneseSense to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryJapaneseSense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryJapaneseSenseCopyWith<DictionaryJapaneseSense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryJapaneseSenseCopyWith<$Res> {
  factory $DictionaryJapaneseSenseCopyWith(DictionaryJapaneseSense value,
          $Res Function(DictionaryJapaneseSense) then) =
      _$DictionaryJapaneseSenseCopyWithImpl<$Res, DictionaryJapaneseSense>;
  @useResult
  $Res call({List<String> partsOfSpeech, List<String> glosses});
}

/// @nodoc
class _$DictionaryJapaneseSenseCopyWithImpl<$Res,
        $Val extends DictionaryJapaneseSense>
    implements $DictionaryJapaneseSenseCopyWith<$Res> {
  _$DictionaryJapaneseSenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryJapaneseSense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partsOfSpeech = null,
    Object? glosses = null,
  }) {
    return _then(_value.copyWith(
      partsOfSpeech: null == partsOfSpeech
          ? _value.partsOfSpeech
          : partsOfSpeech // ignore: cast_nullable_to_non_nullable
              as List<String>,
      glosses: null == glosses
          ? _value.glosses
          : glosses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryJapaneseSenseImplCopyWith<$Res>
    implements $DictionaryJapaneseSenseCopyWith<$Res> {
  factory _$$DictionaryJapaneseSenseImplCopyWith(
          _$DictionaryJapaneseSenseImpl value,
          $Res Function(_$DictionaryJapaneseSenseImpl) then) =
      __$$DictionaryJapaneseSenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> partsOfSpeech, List<String> glosses});
}

/// @nodoc
class __$$DictionaryJapaneseSenseImplCopyWithImpl<$Res>
    extends _$DictionaryJapaneseSenseCopyWithImpl<$Res,
        _$DictionaryJapaneseSenseImpl>
    implements _$$DictionaryJapaneseSenseImplCopyWith<$Res> {
  __$$DictionaryJapaneseSenseImplCopyWithImpl(
      _$DictionaryJapaneseSenseImpl _value,
      $Res Function(_$DictionaryJapaneseSenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryJapaneseSense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partsOfSpeech = null,
    Object? glosses = null,
  }) {
    return _then(_$DictionaryJapaneseSenseImpl(
      partsOfSpeech: null == partsOfSpeech
          ? _value._partsOfSpeech
          : partsOfSpeech // ignore: cast_nullable_to_non_nullable
              as List<String>,
      glosses: null == glosses
          ? _value._glosses
          : glosses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryJapaneseSenseImpl implements _DictionaryJapaneseSense {
  const _$DictionaryJapaneseSenseImpl(
      {final List<String> partsOfSpeech = const <String>[],
      final List<String> glosses = const <String>[]})
      : _partsOfSpeech = partsOfSpeech,
        _glosses = glosses;

  factory _$DictionaryJapaneseSenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryJapaneseSenseImplFromJson(json);

  final List<String> _partsOfSpeech;
  @override
  @JsonKey()
  List<String> get partsOfSpeech {
    if (_partsOfSpeech is EqualUnmodifiableListView) return _partsOfSpeech;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partsOfSpeech);
  }

  final List<String> _glosses;
  @override
  @JsonKey()
  List<String> get glosses {
    if (_glosses is EqualUnmodifiableListView) return _glosses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_glosses);
  }

  @override
  String toString() {
    return 'DictionaryJapaneseSense(partsOfSpeech: $partsOfSpeech, glosses: $glosses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryJapaneseSenseImpl &&
            const DeepCollectionEquality()
                .equals(other._partsOfSpeech, _partsOfSpeech) &&
            const DeepCollectionEquality().equals(other._glosses, _glosses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_partsOfSpeech),
      const DeepCollectionEquality().hash(_glosses));

  /// Create a copy of DictionaryJapaneseSense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryJapaneseSenseImplCopyWith<_$DictionaryJapaneseSenseImpl>
      get copyWith => __$$DictionaryJapaneseSenseImplCopyWithImpl<
          _$DictionaryJapaneseSenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryJapaneseSenseImplToJson(
      this,
    );
  }
}

abstract class _DictionaryJapaneseSense implements DictionaryJapaneseSense {
  const factory _DictionaryJapaneseSense(
      {final List<String> partsOfSpeech,
      final List<String> glosses}) = _$DictionaryJapaneseSenseImpl;

  factory _DictionaryJapaneseSense.fromJson(Map<String, dynamic> json) =
      _$DictionaryJapaneseSenseImpl.fromJson;

  @override
  List<String> get partsOfSpeech;
  @override
  List<String> get glosses;

  /// Create a copy of DictionaryJapaneseSense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryJapaneseSenseImplCopyWith<_$DictionaryJapaneseSenseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DictionaryEnglishPhonetic _$DictionaryEnglishPhoneticFromJson(
    Map<String, dynamic> json) {
  return _DictionaryEnglishPhonetic.fromJson(json);
}

/// @nodoc
mixin _$DictionaryEnglishPhonetic {
  String? get text => throw _privateConstructorUsedError;
  String? get audioUrl => throw _privateConstructorUsedError;

  /// Serializes this DictionaryEnglishPhonetic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryEnglishPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryEnglishPhoneticCopyWith<DictionaryEnglishPhonetic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEnglishPhoneticCopyWith<$Res> {
  factory $DictionaryEnglishPhoneticCopyWith(DictionaryEnglishPhonetic value,
          $Res Function(DictionaryEnglishPhonetic) then) =
      _$DictionaryEnglishPhoneticCopyWithImpl<$Res, DictionaryEnglishPhonetic>;
  @useResult
  $Res call({String? text, String? audioUrl});
}

/// @nodoc
class _$DictionaryEnglishPhoneticCopyWithImpl<$Res,
        $Val extends DictionaryEnglishPhonetic>
    implements $DictionaryEnglishPhoneticCopyWith<$Res> {
  _$DictionaryEnglishPhoneticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryEnglishPhonetic
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
abstract class _$$DictionaryEnglishPhoneticImplCopyWith<$Res>
    implements $DictionaryEnglishPhoneticCopyWith<$Res> {
  factory _$$DictionaryEnglishPhoneticImplCopyWith(
          _$DictionaryEnglishPhoneticImpl value,
          $Res Function(_$DictionaryEnglishPhoneticImpl) then) =
      __$$DictionaryEnglishPhoneticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? audioUrl});
}

/// @nodoc
class __$$DictionaryEnglishPhoneticImplCopyWithImpl<$Res>
    extends _$DictionaryEnglishPhoneticCopyWithImpl<$Res,
        _$DictionaryEnglishPhoneticImpl>
    implements _$$DictionaryEnglishPhoneticImplCopyWith<$Res> {
  __$$DictionaryEnglishPhoneticImplCopyWithImpl(
      _$DictionaryEnglishPhoneticImpl _value,
      $Res Function(_$DictionaryEnglishPhoneticImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryEnglishPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? audioUrl = freezed,
  }) {
    return _then(_$DictionaryEnglishPhoneticImpl(
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
class _$DictionaryEnglishPhoneticImpl implements _DictionaryEnglishPhonetic {
  const _$DictionaryEnglishPhoneticImpl({this.text, this.audioUrl});

  factory _$DictionaryEnglishPhoneticImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryEnglishPhoneticImplFromJson(json);

  @override
  final String? text;
  @override
  final String? audioUrl;

  @override
  String toString() {
    return 'DictionaryEnglishPhonetic(text: $text, audioUrl: $audioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryEnglishPhoneticImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, audioUrl);

  /// Create a copy of DictionaryEnglishPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryEnglishPhoneticImplCopyWith<_$DictionaryEnglishPhoneticImpl>
      get copyWith => __$$DictionaryEnglishPhoneticImplCopyWithImpl<
          _$DictionaryEnglishPhoneticImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryEnglishPhoneticImplToJson(
      this,
    );
  }
}

abstract class _DictionaryEnglishPhonetic implements DictionaryEnglishPhonetic {
  const factory _DictionaryEnglishPhonetic(
      {final String? text,
      final String? audioUrl}) = _$DictionaryEnglishPhoneticImpl;

  factory _DictionaryEnglishPhonetic.fromJson(Map<String, dynamic> json) =
      _$DictionaryEnglishPhoneticImpl.fromJson;

  @override
  String? get text;
  @override
  String? get audioUrl;

  /// Create a copy of DictionaryEnglishPhonetic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryEnglishPhoneticImplCopyWith<_$DictionaryEnglishPhoneticImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DictionaryEnglishMeaning _$DictionaryEnglishMeaningFromJson(
    Map<String, dynamic> json) {
  return _DictionaryEnglishMeaning.fromJson(json);
}

/// @nodoc
mixin _$DictionaryEnglishMeaning {
  String get partOfSpeech => throw _privateConstructorUsedError;
  List<DictionaryEnglishDefinition> get definitions =>
      throw _privateConstructorUsedError;

  /// Serializes this DictionaryEnglishMeaning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryEnglishMeaning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryEnglishMeaningCopyWith<DictionaryEnglishMeaning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEnglishMeaningCopyWith<$Res> {
  factory $DictionaryEnglishMeaningCopyWith(DictionaryEnglishMeaning value,
          $Res Function(DictionaryEnglishMeaning) then) =
      _$DictionaryEnglishMeaningCopyWithImpl<$Res, DictionaryEnglishMeaning>;
  @useResult
  $Res call(
      {String partOfSpeech, List<DictionaryEnglishDefinition> definitions});
}

/// @nodoc
class _$DictionaryEnglishMeaningCopyWithImpl<$Res,
        $Val extends DictionaryEnglishMeaning>
    implements $DictionaryEnglishMeaningCopyWith<$Res> {
  _$DictionaryEnglishMeaningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryEnglishMeaning
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
              as List<DictionaryEnglishDefinition>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryEnglishMeaningImplCopyWith<$Res>
    implements $DictionaryEnglishMeaningCopyWith<$Res> {
  factory _$$DictionaryEnglishMeaningImplCopyWith(
          _$DictionaryEnglishMeaningImpl value,
          $Res Function(_$DictionaryEnglishMeaningImpl) then) =
      __$$DictionaryEnglishMeaningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partOfSpeech, List<DictionaryEnglishDefinition> definitions});
}

/// @nodoc
class __$$DictionaryEnglishMeaningImplCopyWithImpl<$Res>
    extends _$DictionaryEnglishMeaningCopyWithImpl<$Res,
        _$DictionaryEnglishMeaningImpl>
    implements _$$DictionaryEnglishMeaningImplCopyWith<$Res> {
  __$$DictionaryEnglishMeaningImplCopyWithImpl(
      _$DictionaryEnglishMeaningImpl _value,
      $Res Function(_$DictionaryEnglishMeaningImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryEnglishMeaning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = null,
    Object? definitions = null,
  }) {
    return _then(_$DictionaryEnglishMeaningImpl(
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: null == definitions
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<DictionaryEnglishDefinition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryEnglishMeaningImpl implements _DictionaryEnglishMeaning {
  const _$DictionaryEnglishMeaningImpl(
      {required this.partOfSpeech,
      final List<DictionaryEnglishDefinition> definitions =
          const <DictionaryEnglishDefinition>[]})
      : _definitions = definitions;

  factory _$DictionaryEnglishMeaningImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryEnglishMeaningImplFromJson(json);

  @override
  final String partOfSpeech;
  final List<DictionaryEnglishDefinition> _definitions;
  @override
  @JsonKey()
  List<DictionaryEnglishDefinition> get definitions {
    if (_definitions is EqualUnmodifiableListView) return _definitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  @override
  String toString() {
    return 'DictionaryEnglishMeaning(partOfSpeech: $partOfSpeech, definitions: $definitions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryEnglishMeaningImpl &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partOfSpeech,
      const DeepCollectionEquality().hash(_definitions));

  /// Create a copy of DictionaryEnglishMeaning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryEnglishMeaningImplCopyWith<_$DictionaryEnglishMeaningImpl>
      get copyWith => __$$DictionaryEnglishMeaningImplCopyWithImpl<
          _$DictionaryEnglishMeaningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryEnglishMeaningImplToJson(
      this,
    );
  }
}

abstract class _DictionaryEnglishMeaning implements DictionaryEnglishMeaning {
  const factory _DictionaryEnglishMeaning(
          {required final String partOfSpeech,
          final List<DictionaryEnglishDefinition> definitions}) =
      _$DictionaryEnglishMeaningImpl;

  factory _DictionaryEnglishMeaning.fromJson(Map<String, dynamic> json) =
      _$DictionaryEnglishMeaningImpl.fromJson;

  @override
  String get partOfSpeech;
  @override
  List<DictionaryEnglishDefinition> get definitions;

  /// Create a copy of DictionaryEnglishMeaning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryEnglishMeaningImplCopyWith<_$DictionaryEnglishMeaningImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DictionaryEnglishDefinition _$DictionaryEnglishDefinitionFromJson(
    Map<String, dynamic> json) {
  return _DictionaryEnglishDefinition.fromJson(json);
}

/// @nodoc
mixin _$DictionaryEnglishDefinition {
  String get definition => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;

  /// Serializes this DictionaryEnglishDefinition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryEnglishDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryEnglishDefinitionCopyWith<DictionaryEnglishDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEnglishDefinitionCopyWith<$Res> {
  factory $DictionaryEnglishDefinitionCopyWith(
          DictionaryEnglishDefinition value,
          $Res Function(DictionaryEnglishDefinition) then) =
      _$DictionaryEnglishDefinitionCopyWithImpl<$Res,
          DictionaryEnglishDefinition>;
  @useResult
  $Res call({String definition, String? example, List<String> synonyms});
}

/// @nodoc
class _$DictionaryEnglishDefinitionCopyWithImpl<$Res,
        $Val extends DictionaryEnglishDefinition>
    implements $DictionaryEnglishDefinitionCopyWith<$Res> {
  _$DictionaryEnglishDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryEnglishDefinition
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
abstract class _$$DictionaryEnglishDefinitionImplCopyWith<$Res>
    implements $DictionaryEnglishDefinitionCopyWith<$Res> {
  factory _$$DictionaryEnglishDefinitionImplCopyWith(
          _$DictionaryEnglishDefinitionImpl value,
          $Res Function(_$DictionaryEnglishDefinitionImpl) then) =
      __$$DictionaryEnglishDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String definition, String? example, List<String> synonyms});
}

/// @nodoc
class __$$DictionaryEnglishDefinitionImplCopyWithImpl<$Res>
    extends _$DictionaryEnglishDefinitionCopyWithImpl<$Res,
        _$DictionaryEnglishDefinitionImpl>
    implements _$$DictionaryEnglishDefinitionImplCopyWith<$Res> {
  __$$DictionaryEnglishDefinitionImplCopyWithImpl(
      _$DictionaryEnglishDefinitionImpl _value,
      $Res Function(_$DictionaryEnglishDefinitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryEnglishDefinition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? example = freezed,
    Object? synonyms = null,
  }) {
    return _then(_$DictionaryEnglishDefinitionImpl(
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
class _$DictionaryEnglishDefinitionImpl
    implements _DictionaryEnglishDefinition {
  const _$DictionaryEnglishDefinitionImpl(
      {required this.definition,
      this.example,
      final List<String> synonyms = const <String>[]})
      : _synonyms = synonyms;

  factory _$DictionaryEnglishDefinitionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DictionaryEnglishDefinitionImplFromJson(json);

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
    return 'DictionaryEnglishDefinition(definition: $definition, example: $example, synonyms: $synonyms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryEnglishDefinitionImpl &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.example, example) || other.example == example) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, definition, example,
      const DeepCollectionEquality().hash(_synonyms));

  /// Create a copy of DictionaryEnglishDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryEnglishDefinitionImplCopyWith<_$DictionaryEnglishDefinitionImpl>
      get copyWith => __$$DictionaryEnglishDefinitionImplCopyWithImpl<
          _$DictionaryEnglishDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryEnglishDefinitionImplToJson(
      this,
    );
  }
}

abstract class _DictionaryEnglishDefinition
    implements DictionaryEnglishDefinition {
  const factory _DictionaryEnglishDefinition(
      {required final String definition,
      final String? example,
      final List<String> synonyms}) = _$DictionaryEnglishDefinitionImpl;

  factory _DictionaryEnglishDefinition.fromJson(Map<String, dynamic> json) =
      _$DictionaryEnglishDefinitionImpl.fromJson;

  @override
  String get definition;
  @override
  String? get example;
  @override
  List<String> get synonyms;

  /// Create a copy of DictionaryEnglishDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryEnglishDefinitionImplCopyWith<_$DictionaryEnglishDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
