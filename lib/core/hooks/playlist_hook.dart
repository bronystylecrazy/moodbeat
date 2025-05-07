import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<PlaylistsFullPlaylist>, dynamic> useGetMonthlyPlaylist(
    String entryDate) {
  final playlistApi = getIt<PlaylistApi>();
  return useQuery(
    ["getMonthlyPlaylist", entryDate],
    () => playlistApi.getMonthlyPlaylist(entryDate: entryDate),
  );
}
