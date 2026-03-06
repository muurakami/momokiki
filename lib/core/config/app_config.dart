import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  String get supabaseUrl => dotenv.env['SUPABASE_URL']!;
  String get supabaseAnonKey => dotenv.env['SUPABASE_ANON_KEY']!;
  String get apiBaseUrl => dotenv.env['FASTAPI_BASE_URL']!;
  bool get isProduction => dotenv.env['ENV'] == 'production';
  bool get isDevelopment => dotenv.env['ENV'] == 'development';
}
