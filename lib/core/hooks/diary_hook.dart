import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<Iterable<DbListDiaryEntriesByDateRangeRow>>, dynamic>
    useListDiaryEntriesByDateRange(String startDate, String endDate) {
  final diaryApi = getIt<DiaryApi>();

  return useQuery(
    ["diaryRange", startDate, endDate],
    () => diaryApi.listDiaryEntriesByDateRange(
      startDate: startDate,
      endDate: endDate,
    ),
  );
}

UseQueryResult<Response<DbDiaryEntry>, dynamic> useGetDiaryEntryByDate(
  String entryDate,
) {
  final diaryApi = getIt<DiaryApi>();

  return useQuery(
    ["getDiaryEntryByDate", entryDate],
    () => diaryApi.getDiaryEntryByDate(date: entryDate),
  );
}
