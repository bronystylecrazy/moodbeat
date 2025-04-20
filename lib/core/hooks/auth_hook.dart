import 'package:dio/dio.dart';
import 'package:flutter_query/flutter_query.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

QueryResult<Response<AuthProfileResponse>>? useCurrentUserQuery() {
  final authApi = getIt<AuthApi>();
  return useQuery("currentUser", (key) => authApi.getCurrentProfile());
}
