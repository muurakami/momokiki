import 'dart:io';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

enum RoadmapViewerType { markdown, html, unsupported }

@lazySingleton
class RoadmapLocalFileService {
  Future<File> ensureLocalCopy({
    required String sourcePath,
  }) async {
    final normalized = sourcePath.replaceAll('\\', '/').trim();
    if (normalized.startsWith('http://') || normalized.startsWith('https://')) {
      throw const FormatException('Remote URLs are not supported for local roadmap copies.');
    }

    final directory = await getApplicationSupportDirectory();
    final roadmapsDirectory = Directory('${directory.path}/roadmaps');

    if (!await roadmapsDirectory.exists()) {
      await roadmapsDirectory.create(recursive: true);
    }

    final fileName = normalized.split('/').last;
    final localFile = File('${roadmapsDirectory.path}/$fileName');

    if (await localFile.exists()) {
      return localFile;
    }

    try {
      final assetData = await rootBundle.load(normalized);
      await localFile.writeAsBytes(assetData.buffer.asUint8List(), flush: true);
      return localFile;
    } catch (error) {
      throw Exception('Roadmap asset missing: $normalized');
    }
  }

  Future<bool> exists(String path) async {
    final file = File(path);
    return file.exists();
  }

  Uri buildFileUri(String path) {
    return Uri.file(path);
  }

  RoadmapViewerType selectViewer(String path) {
    final normalized = path.toLowerCase();
    if (normalized.endsWith('.md') || normalized.endsWith('.txt')) {
      return RoadmapViewerType.markdown;
    }
    if (normalized.endsWith('.html') || normalized.endsWith('.htm')) {
      return RoadmapViewerType.html;
    }
    return RoadmapViewerType.unsupported;
  }
}
