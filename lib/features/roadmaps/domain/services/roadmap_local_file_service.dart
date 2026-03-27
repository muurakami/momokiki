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

    final assetData = await rootBundle.load(normalized);
    await localFile.writeAsBytes(assetData.buffer.asUint8List(), flush: true);
    return localFile;
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
