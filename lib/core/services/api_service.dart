import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response;
    } on DioError catch (e) {
      throw Exception('Failed to load data: ${e.message}');
    }
  }
}
