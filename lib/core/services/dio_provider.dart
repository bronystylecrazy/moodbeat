import "package:dio/dio.dart";
import "package:injectable/injectable.dart";
import "package:moodbeat/config.dart";
import "package:shared_preferences/shared_preferences.dart";

Future<String?> getAccessToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

@module
abstract class DioProvider {
  @preResolve
  @singleton
  Future<Dio> dio(IConfig config) async {
    final token = await getAccessToken();

    return Dio(
      BaseOptions(
        baseUrl: config.apiBaseUrl, // Use injected config!
        headers: {
          'Authorization': '$token',
          'Content-Type': 'application/json',
        },
        contentType: 'application/json',
      ),
    );
  }
}
