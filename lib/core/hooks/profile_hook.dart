import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<Iterable<DbMoodPreset>>, dynamic> useGetMoodPresets() {
  final moodPresetApi = getIt<MoodPresetApi>();

  return useQuery(["getMoodPresets"], () => moodPresetApi.getMoodPresets());
}
