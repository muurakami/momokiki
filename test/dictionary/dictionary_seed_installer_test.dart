import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/dictionary/data/datasources/dictionary_seed_installer.dart';

void main() {
  late Directory tempDirectory;

  setUp(() {
    tempDirectory = Directory.systemTemp.createTempSync('dictionary_seed_installer_test_');
  });

  tearDown(() {
    if (tempDirectory.existsSync()) {
      tempDirectory.deleteSync(recursive: true);
    }
  });

  test('copies packaged seed into app storage', () async {
    final expectedBytes = <int>[1, 2, 3, 4, 5];
    final installer = DictionarySeedInstaller.test(
      assetBundle: _MemoryAssetBundle(expectedBytes),
      appSupportDirectoryProvider: () async => tempDirectory,
    );

    final installedFile = await installer.ensureInstalled();

    expect(await installer.isInstalled(), isTrue);
    expect(installedFile.existsSync(), isTrue);
    expect(installedFile.readAsBytesSync(), expectedBytes);
  });
}

class _MemoryAssetBundle extends CachingAssetBundle {
  _MemoryAssetBundle(this._bytes);

  final List<int> _bytes;

  @override
  Future<ByteData> load(String key) async {
    if (key != DictionarySeedInstaller.assetPath) {
      throw StateError('Unexpected asset key: $key');
    }

    return ByteData.sublistView(Uint8List.fromList(_bytes));
  }
}
