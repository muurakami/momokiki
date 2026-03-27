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
    gh.lazySingleton<_i963.SupabaseLessonDataSource>(
        () => _i963.SupabaseLessonDataSource());
    gh.lazySingleton<_i328.AssetLessonDataSource>(
        () => _i328.AssetLessonDataSource());
    gh.lazySingleton<_i937.RoadmapParser>(() => const _i937.RoadmapParser());
    gh.lazySingleton<_i565.DriftLessonCache>(
        () => _i565.DriftLessonCache(gh<_i982.AppDatabase>()));
    gh.lazySingleton<_i858.DriftLessonProgressDataSource>(
        () => _i858.DriftLessonProgressDataSource(gh<_i982.AppDatabase>()));
    gh.lazySingleton<_i787.AuthRepository>(
        () => _i153.AuthRepositoryImpl(gh<_i76.SupabaseAuthDatasource>()));
    gh.lazySingleton<_i79.RoadmapAssetDataSource>(
        () => _i79.RoadmapAssetDataSource(gh<_i937.RoadmapParser>()));
    gh.lazySingleton<_i408.LessonRepository>(() => _i156.LessonRepositoryImpl(
          gh<_i963.SupabaseLessonDataSource>(),
          gh<_i565.DriftLessonCache>(),
          gh<_i328.AssetLessonDataSource>(),
          gh<_i858.DriftLessonProgressDataSource>(),
        ));
    return this;
  }
}
