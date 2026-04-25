import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../dtos/free_dictionary_api_entry_dto.dart';
import '../repositories/free_dictionary_api_client.dart';

@lazySingleton
class FreeDictionaryApiDataSource {
  FreeDictionaryApiDataSource()
      : _client = FreeDictionaryApiClient(
          Dio(
            BaseOptions(
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
              responseType: ResponseType.json,
            ),
          ),
        );

  final FreeDictionaryApiClient _client;

  Future<List<FreeDictionaryApiEntryDto>> lookup(String word) async {
    try {
      return await _client.getEntries(word);
    } on DioException catch (error) {
      if (error.response?.statusCode == 404) {
        return const <FreeDictionaryApiEntryDto>[];
      }
      rethrow;
    }
  }
}
