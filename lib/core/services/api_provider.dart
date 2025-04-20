import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:moodbeat/config.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

@module
abstract class ApiProvider {
  @singleton
  AuthApi authApi(Dio dio, IConfig config) {
    final core = MoodbeatCore(dio: dio, basePathOverride: config.apiBaseUrl);
    return core.getAuthApi();
  }
}
