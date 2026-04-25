// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/datasources/supabase_auth_datasource.dart'
    as _i76;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/dictionary/data/datasources/dictionary_seed_installer.dart'
    as _i1014;
import '../../features/dictionary/data/datasources/drift_dictionary_datasource.dart'
    as _i990;
import '../../features/dictionary/data/datasources/free_dictionary_api_datasource.dart'
    as _i465;
import '../../features/dictionary/data/datasources/jmdict_asset_datasource.dart'
    as _i567;
import '../../features/dictionary/data/datasources/jmdict_xml_parser.dart'
    as _i228;
import '../../features/dictionary/data/datasources/seed_dictionary_reader.dart'
    as _i516;
import '../../features/dictionary/data/repositories/dictionary_repository_impl.dart'
    as _i339;
import '../../features/dictionary/domain/repositories/dictionary_repository.dart'
    as _i574;
import '../../features/dictionary/domain/services/dictionary_flashcard_builder.dart'
    as _i941;
import '../../features/dictionary/domain/services/kana_romaji_converter.dart'
    as _i877;
import '../../features/dictionary/domain/services/query_language_detector.dart'
    as _i120;
import '../../features/dictionary/domain/usecases/ensure_japanese_dictionary_ready.dart'
    as _i337;
import '../../features/dictionary/domain/usecases/export_dictionary_entry_to_practice_deck.dart'
    as _i978;
import '../../features/dictionary/domain/usecases/search_dictionary.dart'
    as _i644;
import '../../features/dictionary/domain/usecases/toggle_dictionary_favorite.dart'
    as _i883;
import '../../features/lessons/data/datasources/asset_lesson_datasource.dart'
    as _i328;
import '../../features/lessons/data/datasources/drift_lesson_cache.dart'
    as _i565;
import '../../features/lessons/data/datasources/drift_lesson_progress_datasource.dart'
    as _i858;
import '../../features/lessons/data/datasources/roadmap_asset_datasource.dart'
    as _i79;
import '../../features/lessons/data/datasources/supabase_lesson_datasource.dart'
    as _i963;
import '../../features/lessons/data/repositories/lesson_repository_impl.dart'
    as _i156;
import '../../features/lessons/domain/repositories/lesson_repository.dart'
    as _i408;
import '../../features/lessons/domain/services/roadmap_parser.dart' as _i937;
import '../../features/practice/data/datasources/apkg_import_datasource.dart'
    as _i444;
import '../../features/practice/data/datasources/drift_practice_datasource.dart'
    as _i512;
import '../../features/practice/data/repositories/practice_repository_impl.dart'
    as _i862;
import '../../features/practice/domain/repositories/practice_repository.dart'
    as _i980;
import '../../features/practice/domain/services/anki_scheduler.dart' as _i33;
import '../../features/roadmaps/domain/services/roadmap_local_file_service.dart'
    as _i856;
import '../config/app_config.dart' as _i650;
import '../database/app_database.dart' as _i982;
import '../router/app_router.dart' as _i81;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i650.AppConfig>(() => _i650.AppConfig());
    gh.singleton<_i982.AppDatabase>(() => _i982.AppDatabase());
    gh.singleton<_i81.AppRouter>(() => _i81.AppRouter());
    gh.singleton<_i76.SupabaseAuthDatasource>(
        () => _i76.SupabaseAuthDatasource());
    gh.lazySingleton<_i465.FreeDictionaryApiDataSource>(
        () => _i465.FreeDictionaryApiDataSource());
    gh.lazySingleton<_i567.JmdictAssetDataSource>(
        () => _i567.JmdictAssetDataSource());
    gh.lazySingleton<_i228.JmdictXmlParser>(() => _i228.JmdictXmlParser());
    gh.lazySingleton<_i941.DictionaryFlashcardBuilder>(
        () => const _i941.DictionaryFlashcardBuilder());
    gh.lazySingleton<_i877.KanaRomajiConverter>(
        () => const _i877.KanaRomajiConverter());
    gh.lazySingleton<_i120.QueryLanguageDetector>(
        () => const _i120.QueryLanguageDetector());
    gh.lazySingleton<_i328.AssetLessonDataSource>(
        () => _i328.AssetLessonDataSource());
    gh.lazySingleton<_i963.SupabaseLessonDataSource>(
        () => _i963.SupabaseLessonDataSource());
    gh.lazySingleton<_i937.RoadmapParser>(() => const _i937.RoadmapParser());
    gh.lazySingleton<_i444.ApkgImportDataSource>(
        () => _i444.ApkgImportDataSource());
    gh.lazySingleton<_i33.AnkiScheduler>(() => const _i33.AnkiScheduler());
    gh.lazySingleton<_i856.RoadmapLocalFileService>(
        () => _i856.RoadmapLocalFileService());
    gh.lazySingleton<_i1014.DictionarySeedInstaller>(
        () => _i1014.DictionarySeedInstaller());
    gh.lazySingleton<_i990.DriftDictionaryDataSource>(
        () => _i990.DriftDictionaryDataSource(gh<_i982.AppDatabase>()));
    gh.lazySingleton<_i565.DriftLessonCache>(
        () => _i565.DriftLessonCache(gh<_i982.AppDatabase>()));
    gh.lazySingleton<_i858.DriftLessonProgressDataSource>(
        () => _i858.DriftLessonProgressDataSource(gh<_i982.AppDatabase>()));
    gh.lazySingleton<_i512.DriftPracticeDataSource>(
        () => _i512.DriftPracticeDataSource(gh<_i982.AppDatabase>()));
    gh.lazySingleton<_i787.AuthRepository>(
        () => _i153.AuthRepositoryImpl(gh<_i76.SupabaseAuthDatasource>()));
    gh.lazySingleton<_i516.SeedDictionaryReader>(
        () => _i516.SeedDictionaryReader(
              gh<_i1014.DictionarySeedInstaller>(),
              gh<_i877.KanaRomajiConverter>(),
            ));
    gh.lazySingleton<_i79.RoadmapAssetDataSource>(
        () => _i79.RoadmapAssetDataSource(gh<_i937.RoadmapParser>()));
    gh.lazySingleton<_i574.DictionaryRepository>(
        () => _i339.DictionaryRepositoryImpl(
              gh<_i990.DriftDictionaryDataSource>(),
              gh<_i1014.DictionarySeedInstaller>(),
              gh<_i516.SeedDictionaryReader>(),
              gh<_i465.FreeDictionaryApiDataSource>(),
            ));
    gh.lazySingleton<_i408.LessonRepository>(() => _i156.LessonRepositoryImpl(
          gh<_i963.SupabaseLessonDataSource>(),
          gh<_i565.DriftLessonCache>(),
          gh<_i328.AssetLessonDataSource>(),
          gh<_i858.DriftLessonProgressDataSource>(),
        ));
    gh.lazySingleton<_i980.PracticeRepository>(
        () => _i862.PracticeRepositoryImpl(
              gh<_i512.DriftPracticeDataSource>(),
              gh<_i444.ApkgImportDataSource>(),
              gh<_i33.AnkiScheduler>(),
            ));
    gh.lazySingleton<_i644.SearchDictionary>(() => _i644.SearchDictionary(
          gh<_i574.DictionaryRepository>(),
          gh<_i120.QueryLanguageDetector>(),
          gh<_i877.KanaRomajiConverter>(),
        ));
    gh.lazySingleton<_i978.ExportDictionaryEntryToPracticeDeck>(
        () => _i978.ExportDictionaryEntryToPracticeDeck(
              gh<_i980.PracticeRepository>(),
              gh<_i941.DictionaryFlashcardBuilder>(),
            ));
    gh.lazySingleton<_i337.EnsureJapaneseDictionaryReady>(() =>
        _i337.EnsureJapaneseDictionaryReady(gh<_i574.DictionaryRepository>()));
    gh.lazySingleton<_i883.ToggleDictionaryFavorite>(
        () => _i883.ToggleDictionaryFavorite(gh<_i574.DictionaryRepository>()));
    return this;
  }
}
