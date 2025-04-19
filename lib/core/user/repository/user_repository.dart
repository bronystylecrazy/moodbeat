import 'package:dio/dio.dart';
import '../../../models/user.dart';
import '../../../core/services/api_service.dart';

class UserRepository {
  Future<List<User>> getUsers() async {
    final res = await dio.get('/users');
    return (res.data as List).map((e) => User.fromJson(e)).toList();
  }
}
