import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';


/// tests for PlaylistsApi
void main() {
  final instance = MoodbeatCore().getPlaylistsApi();

  group(PlaylistsApi, () {
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
