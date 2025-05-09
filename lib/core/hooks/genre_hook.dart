import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<Iterable<DbGenre>>, dynamic> useListSongGenres() {
  final songGenresApi = getIt<SongGenresApi>();
  return useQuery(
    ["listSongGenres"],
    () => songGenresApi.listSongGenres(),
  );
}
