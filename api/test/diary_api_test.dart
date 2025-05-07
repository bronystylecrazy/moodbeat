import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';


/// tests for DiaryApi
void main() {
  final instance = MoodbeatCore().getDiaryApi();

  group(DiaryApi, () {
    // Create a new diary entry
    //
    //Future<DbDiaryEntry> createDiaryEntry(String entryDate, String content, String emotion, { MultipartFile image }) async
    test('test createDiaryEntry', () async {
      // TODO
    });

    // List diary entries by date range
    //
    //Future<BuiltList<DbListDiaryEntriesByDateRangeRow>> listDiaryEntriesByDateRange(String startDate, String endDate) async
    test('test listDiaryEntriesByDateRange', () async {
      // TODO
    });

  });
}
