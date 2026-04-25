import 'learning_content.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@Freezed(fromJson: true, toJson: true)
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    @Default(1) int version,
    required String title,
    required LessonMeta meta,
    @Default(<LessonBlock>[]) List<LessonBlock> blocks,
    @Default(SupportedLanguage.english) SupportedLanguage language,
    String? nextLessonId,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json) {
    final normalized = Map<String, Object?>.from(json);
    final metaJson = normalized['meta'];

    if (metaJson is Map<String, Object?>) {
      normalized['title'] ??= metaJson['title'];
      normalized['language'] ??= _parseLanguage(metaJson['language']?.toString()).name;
    } else if (metaJson is Map) {
      normalized['title'] ??= metaJson['title'];
      normalized['language'] ??= _parseLanguage(metaJson['language']?.toString()).name;
    }

    normalized['language'] ??= _parseLanguage(normalized['language']?.toString()).name;

    return _$LessonFromJson(normalized);
  }
}

SupportedLanguage _parseLanguage(String? raw) {
  switch ((raw ?? '').trim().toLowerCase()) {
    case 'ja':
    case 'jp':
    case 'japanese':
      return SupportedLanguage.japanese;
    case 'en':
    case 'english':
    default:
      return SupportedLanguage.english;
  }
}

@Freezed(fromJson: true, toJson: true)
class LessonMeta with _$LessonMeta {
  const factory LessonMeta({
    required String title,
    String? description,
    @JsonKey(name: 'estimated_xp') @Default(0) int estimatedXp,
    @Default(1) int difficulty,
    double? rating,
    String? language,
    @Default(<String>[]) List<String> tags,
    @Default(<String, Object?>{}) Map<String, Object?> extras,
  }) = _LessonMeta;

  factory LessonMeta.fromJson(Map<String, Object?> json) =>
      _$LessonMetaFromJson(_normalizeMetaJson(json));
}

Map<String, Object?> _normalizeMetaJson(Map<String, Object?> json) {
  final normalized = Map<String, Object?>.from(json);
  const reservedKeys = {
    'title',
    'description',
    'estimated_xp',
    'difficulty',
    'rating',
    'language',
    'tags',
    'extras',
  };

  final extras = <String, Object?>{};
  for (final entry in normalized.entries) {
    if (!reservedKeys.contains(entry.key)) {
      extras[entry.key] = entry.value;
    }
  }

  normalized['extras'] = {
    ...extras,
    if (normalized['extras'] is Map<String, Object?>)
      ...(normalized['extras'] as Map<String, Object?>),
    if (normalized['extras'] is Map && normalized['extras'] is! Map<String, Object?>)
      ...Map<String, Object?>.from(normalized['extras'] as Map),
  };

  return normalized;
}

@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
  fallbackUnion: 'unknown',
)
sealed class LessonBlock with _$LessonBlock {
  const LessonBlock._();

  const factory LessonBlock.text({
    required String id,
    @Default('text') String type,
    required String title,
    required String content,
    @Default(false) bool skippable,
    @Default(<String>[]) List<String> bullets,
    @Default(<String, Object?>{}) Map<String, Object?> extras,
  }) = _TextBlock;

  const factory LessonBlock.quiz({
    required String id,
    @Default('quiz') String type,
    required String question,
    @Default(<String>[]) List<String> options,
    @JsonKey(name: 'correct_answer') required String correctAnswer,
    String? explanation,
    @Default(<String, Object?>{}) Map<String, Object?> extras,
  }) = _QuizBlock;

  const factory LessonBlock.video({
    required String id,
    @Default('video') String type,
    required String title,
    @JsonKey(name: 'video_url') required String videoUrl,
    String? caption,
    @Default(0) int durationSeconds,
    @Default(<String, Object?>{}) Map<String, Object?> extras,
  }) = _VideoBlock;

  const factory LessonBlock.code({
    required String id,
    @Default('code') String type,
    required String prompt,
    @JsonKey(name: 'code_snippet') required String codeSnippet,
    String? language,
    @JsonKey(name: 'expected_answer') String? expectedAnswer,
    @Default(<String>[]) List<String> hints,
    @Default(<String, Object?>{}) Map<String, Object?> extras,
  }) = _CodeBlock;

  const factory LessonBlock.choice({
    required String id,
    @Default('choice') String type,
    required String prompt,
    @Default(<ChoiceOption>[]) List<ChoiceOption> options,
    @JsonKey(name: 'correct_option_id') required String correctOptionId,
    bool? multiple,
    @Default(<String, Object?>{}) Map<String, Object?> extras,
  }) = _ChoiceBlock;

  const factory LessonBlock.sentenceBuilder({
    required String id,
    @Default('sentence_builder') String type,
    required String prompt,
    @Default(<SentenceToken>[]) List<SentenceToken> tokens,
    @JsonKey(name: 'correct_token_ids')
    @Default(<String>[])
    List<String> correctTokenIds,
    @JsonKey(name: 'correct_answer') String? correctAnswer,
    String? explanation,
    @Default(<String, Object?>{}) Map<String, Object?> extras,
  }) = _SentenceBuilderBlock;

  const factory LessonBlock.unknown({
    required String id,
    @Default('unknown') String type,
    @Default('Unsupported block') String title,
    String? rawType,
    @Default(<String, Object?>{}) Map<String, Object?> raw,
  }) = _UnknownLessonBlock;

  String get blockType => switch (this) {
        TextBlock() => 'text',
        QuizBlock() => 'quiz',
        VideoBlock() => 'video',
        CodeBlock() => 'code',
        ChoiceBlock() => 'choice',
        SentenceBuilderBlock() => 'sentence_builder',
        UnknownLessonBlock(:final rawType) => rawType ?? 'unknown',
      };

  factory LessonBlock.fromJson(Map<String, Object?> json) {
    final normalized = Map<String, Object?>.from(json);
    final rawType = normalized['type']?.toString();
    normalized['type'] = rawType ?? 'unknown';

    if (rawType == null || !_supportedBlockTypes.contains(rawType)) {
      normalized['type'] = 'unknown';
      normalized['rawType'] = rawType;
      normalized['raw'] = json;
    } else {
      normalized['extras'] = _extractBlockExtras(normalized, rawType);
    }

    if (normalized['id'] == null) {
      normalized['id'] = 'unknown-block';
    }

    return _$LessonBlockFromJson(normalized);
  }
}

@Freezed(fromJson: true, toJson: true)
class ChoiceOption with _$ChoiceOption {
  const factory ChoiceOption({
    required String id,
    required String label,
    String? feedback,
  }) = _ChoiceOption;

  factory ChoiceOption.fromJson(Map<String, Object?> json) =>
      _$ChoiceOptionFromJson(json);
}

class SentenceToken {
  const SentenceToken({
    required this.id,
    required this.label,
  });

  factory SentenceToken.fromJson(Map<String, Object?> json) {
    return SentenceToken(
      id: json['id']?.toString() ?? '',
      label: json['label']?.toString() ?? '',
    );
  }

  final String id;
  final String label;

  Map<String, Object?> toJson() => <String, Object?>{
        'id': id,
        'label': label,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SentenceToken && other.id == id && other.label == label;

  @override
  int get hashCode => Object.hash(id, label);
}

typedef TextBlock = _TextBlock;
typedef QuizBlock = _QuizBlock;
typedef VideoBlock = _VideoBlock;
typedef CodeBlock = _CodeBlock;
typedef ChoiceBlock = _ChoiceBlock;
typedef SentenceBuilderBlock = _SentenceBuilderBlock;
typedef UnknownLessonBlock = _UnknownLessonBlock;

const Set<String> _supportedBlockTypes = {
  'text',
  'quiz',
  'video',
  'code',
  'choice',
  'sentence_builder',
};

Map<String, Object?> _extractBlockExtras(
  Map<String, Object?> json,
  String type,
) {
  final reserved = switch (type) {
    'text' => {'id', 'type', 'title', 'content', 'skippable', 'bullets', 'extras'},
    'quiz' => {
        'id',
        'type',
        'question',
        'options',
        'correct_answer',
        'explanation',
        'extras',
      },
    'video' => {
        'id',
        'type',
        'title',
        'video_url',
        'caption',
        'durationSeconds',
        'duration_seconds',
        'extras',
      },
    'code' => {
        'id',
        'type',
        'prompt',
        'code_snippet',
        'language',
        'expected_answer',
        'hints',
        'extras',
      },
    'choice' => {
        'id',
        'type',
        'prompt',
        'options',
        'correct_option_id',
        'multiple',
        'extras',
      },
    'sentence_builder' => {
        'id',
        'type',
        'prompt',
        'tokens',
        'correct_token_ids',
        'correct_answer',
        'explanation',
        'extras',
      },
    _ => {'id', 'type', 'extras'},
  };

  final extras = <String, Object?>{};
  for (final entry in json.entries) {
    if (!reserved.contains(entry.key)) {
      extras[entry.key] = entry.value;
    }
  }

  final currentExtras = json['extras'];
  if (currentExtras is Map<String, Object?>) {
    extras.addAll(currentExtras);
  } else if (currentExtras is Map) {
    extras.addAll(Map<String, Object?>.from(currentExtras));
  }

  if (json['durationSeconds'] == null && json['duration_seconds'] != null) {
    json['durationSeconds'] = json['duration_seconds'];
  }

  return extras;
}
