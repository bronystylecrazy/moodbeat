import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<Iterable<DbArtist>>, dynamic> useListArtists() {
  final artistApi = getIt<ArtistApi>();

  return useQuery(["getArtists"], () => artistApi.listArtists());
}
