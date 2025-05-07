import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<AuthProfileResponse>, dynamic> useCurrentUserQuery() {
  final authApi = getIt<AuthApi>();

  return useQuery(["currentUser"], () => authApi.getCurrentProfile());
}

UseQueryResult<Response<DbGetUserByIdRow>, dynamic>? useGetUserProfile() {
  final profileApi = getIt<ProfileApi>();
  return useQuery(["getUserProfile"], () => profileApi.getUserProfile());
}
