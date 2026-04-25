import 'package:freezed_annotation/freezed_annotation.dart';

part 'flashcard_media.freezed.dart';
part 'flashcard_media.g.dart';

@Freezed(fromJson: true, toJson: true)
class FlashcardMedia with _$FlashcardMedia {
  const factory FlashcardMedia({
    required String id,
    required String checksumSha1,
    required String originalName,
    required String storedName,
    required String mimeType,
    required String localPath,
    @Default(0) int sizeBytes,
    DateTime? createdAt,
  }) = _FlashcardMedia;

  factory FlashcardMedia.fromJson(Map<String, Object?> json) =>
      _$FlashcardMediaFromJson(json);
}
