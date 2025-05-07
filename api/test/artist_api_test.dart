import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';


/// tests for ArtistApi
void main() {
  final instance = MoodbeatCore().getArtistApi();

  group(ArtistApi, () {
    // List all artists
    //
    // Get a list of all artists
    //
    //Future<BuiltList<DbArtist>> listArtists() async
    test('test listArtists', () async {
      // TODO
    });

  });
}
