import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class DeckJsonFileDataSource {
  const DeckJsonFileDataSource();

  Future<String?> pickDeckJson() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['json'],
    );
    final path = result?.files.single.path;
    if (path == null) {
      return null;
    }

    return File(path).readAsString();
  }

  Future<String> saveDeckJson({
    required String suggestedFileName,
    required String content,
  }) async {
    final bytes = Uint8List.fromList(utf8.encode(content));
    String? selectedPath;

    try {
      selectedPath = await FilePicker.platform.saveFile(
        dialogTitle: 'Export deck',
        fileName: suggestedFileName,
        type: FileType.custom,
        allowedExtensions: const ['json'],
        bytes: bytes,
      );
    } catch (_) {
      selectedPath = null;
    }

    if (selectedPath != null) {
      final file = File(selectedPath);

      try {
        await file.parent.create(recursive: true);
        await file.writeAsBytes(bytes, flush: true);
      } on FileSystemException {
        return selectedPath;
      }

      return file.path;
    }

    final path = await _fallbackPath(suggestedFileName);
    final file = File(path);

    await file.parent.create(recursive: true);
    await file.writeAsBytes(bytes, flush: true);

    return file.path;
  }

  Future<String> _fallbackPath(String suggestedFileName) async {
    final directory = await getApplicationDocumentsDirectory();
    return p.join(directory.path, suggestedFileName);
  }
}
