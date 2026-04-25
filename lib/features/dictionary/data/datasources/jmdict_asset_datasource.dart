import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class JmdictAssetDataSource {
  static const String assetPath = 'assets/dict/jmdict.xml';

  Future<String> loadXml() async {
    try {
      return await rootBundle.loadString(assetPath, cache: false);
    } on Exception catch (error) {
      throw Exception('Dictionary asset missing: $assetPath ($error)');
    }
  }
}
