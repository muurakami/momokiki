import 'package:injectable/injectable.dart';

import '../repositories/dictionary_repository.dart';

@lazySingleton
class EnsureJapaneseDictionaryReady {
  const EnsureJapaneseDictionaryReady(this._repository);

  final DictionaryRepository _repository;

  Future<int> call() => _repository.ensureJapaneseDictionaryReady();
}
