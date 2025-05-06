import 'package:intl/intl.dart';
import 'package:dio/dio.dart';
import 'package:fquery/fquery.dart';
import 'package:moodbeat/service_locator.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

UseQueryResult<Response<Iterable<DbListDiaryEntriesByDateRangeRow>>, dynamic>?
    useListDiaryEntriesByDateRange(String startDate, String endDate) {
  final diaryApi = getIt<DiaryApi>();
  final dateFormat = DateFormat('yyyy-MM-dd');

  final mainQuery = useQuery(
    ["diaryRange", startDate, endDate],
    () => diaryApi.listDiaryEntriesByDateRange(
      startDate: startDate,
      endDate: endDate,
    ),
    enabled: true,
  );

  // Parse start and end dates
  final currentStart = DateTime.parse(startDate);
  final currentEnd = DateTime.parse(endDate);

  // Preload previous and next day
  final prevDate =
      dateFormat.format(currentStart.subtract(const Duration(days: 1)));
  final nextDate = dateFormat.format(currentEnd.add(const Duration(days: 1)));

  // Preload previous day
  useQuery(
    ["diaryRange", prevDate, prevDate],
    () => diaryApi.listDiaryEntriesByDateRange(
      startDate: prevDate,
      endDate: prevDate,
    ),
    enabled: true,
  );

  // Preload next day
  useQuery(
    ["diaryRange", nextDate, nextDate],
    () => diaryApi.listDiaryEntriesByDateRange(
      startDate: nextDate,
      endDate: nextDate,
    ),
    enabled: true,
  );

  return mainQuery;
}
