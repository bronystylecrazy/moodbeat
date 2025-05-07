import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<Iterable<SpotifyFullTrack>>, dynamic>
    useGetSuggestedTracks(String mood, String entryDate) {
  final trackApi = getIt<TrackApi>();
  return useQuery(
    ["getSuggestedTracks", mood, entryDate],
    () => trackApi.getSuggestedTracks(mood: mood, entryDate: entryDate),
  );
}
