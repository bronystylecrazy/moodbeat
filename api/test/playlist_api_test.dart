import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';


/// tests for PlaylistApi
void main() {
  final instance = MoodbeatCore().getPlaylistApi();

  group(PlaylistApi, () {
    // Get a playlist
    //
    // Get a playlist by entry date
    //
    //Future<BuiltList<DbFulltrack>> getMonthlyPlaylist(String entryDate) async
    test('test getMonthlyPlaylist', () async {
      // TODO
    });

  });
}
