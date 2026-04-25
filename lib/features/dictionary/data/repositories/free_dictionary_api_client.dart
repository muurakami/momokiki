import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../dtos/free_dictionary_api_entry_dto.dart';

part 'free_dictionary_api_client.g.dart';

@RestApi(baseUrl: 'https://api.dictionaryapi.dev/api/v2')
abstract class FreeDictionaryApiClient {
  factory FreeDictionaryApiClient(Dio dio, {String baseUrl}) = _FreeDictionaryApiClient;

  @GET('/entries/en/{word}')
  Future<List<FreeDictionaryApiEntryDto>> getEntries(@Path('word') String word);
}
