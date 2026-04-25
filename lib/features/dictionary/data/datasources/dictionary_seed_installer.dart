import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

@LazySingleton()
class DictionarySeedInstaller {
  DictionarySeedInstaller()
      : _assetBundle = rootBundle,
        _appSupportDirectoryProvider = getApplicationSupportDirectory;

  @visibleForTesting
  DictionarySeedInstaller.test({
    required AssetBundle assetBundle,
    required Future<Directory> Function() appSupportDirectoryProvider,
  })  : _assetBundle = assetBundle,
        _appSupportDirectoryProvider = appSupportDirectoryProvider;

  static const String assetPath = 'assets/dict/dictionary_seed.sqlite';
  static const String fileName = 'dictionary_seed.sqlite';

  final AssetBundle _assetBundle;
  final Future<Directory> Function() _appSupportDirectoryProvider;

  Future<File> ensureInstalled({bool overwrite = false}) async {
    final targetFile = await _resolveInstalledFile();
    if (!overwrite && targetFile.existsSync()) {
      if (kDebugMode) {
        debugPrint('Dictionary seed install skipped: ${targetFile.path}');
      }
      return targetFile;
    }

    await targetFile.parent.create(recursive: true);
    final data = await _assetBundle.load(assetPath);
    final bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    final tempFile = File('${targetFile.path}.tmp');

    if (tempFile.existsSync()) {
      await tempFile.delete();
    }

    await tempFile.writeAsBytes(bytes, flush: true);

    if (targetFile.existsSync()) {
      await targetFile.delete();
    }

    final installedFile = await tempFile.rename(targetFile.path);
    if (kDebugMode) {
      debugPrint('Dictionary seed copied: ${installedFile.path}, bytes=${bytes.length}');
    }
    return installedFile;
  }

  Future<bool> isInstalled() async {
    final targetFile = await _resolveInstalledFile();
    return targetFile.existsSync();
  }

  Future<String> getInstalledPath() async {
    final targetFile = await _resolveInstalledFile();
    return targetFile.path;
  }

  Future<File> _resolveInstalledFile() async {
    final appSupportDirectory = await _appSupportDirectoryProvider();
    return File(path.join(appSupportDirectory.path, 'dictionary', fileName));
  }
}
