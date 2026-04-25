import 'package:freezed_annotation/freezed_annotation.dart';

part 'apkg_import_preview.freezed.dart';
part 'apkg_import_preview.g.dart';

@Freezed(fromJson: true, toJson: true)
class ApkgImportPreview with _$ApkgImportPreview {
  const factory ApkgImportPreview({
    @Default(<String>[]) List<String> deckNames,
    @Default(0) int cardCount,
    @Default(0) int mediaCount,
    String? warning,
  }) = _ApkgImportPreview;

  factory ApkgImportPreview.fromJson(Map<String, Object?> json) =>
      _$ApkgImportPreviewFromJson(json);
}
