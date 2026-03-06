import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config/app_config.dart';
import 'core/di/injection.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await configureDependencies();

  await Supabase.initialize(
    url: getIt<AppConfig>().supabaseUrl,
    anonKey: getIt<AppConfig>().supabaseAnonKey,
  );

  runApp(const ProviderScope(child: MomokikiApp()));
}

class MomokikiApp extends StatelessWidget {
  const MomokikiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MOMOKIKI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: getIt<AppRouter>().router,
    );
  }
}
