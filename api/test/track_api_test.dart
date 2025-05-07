import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';


/// tests for TrackApi
void main() {
  final instance = MoodbeatCore().getTrackApi();

  group(TrackApi, () {
    // Suggests a track based on the user's mood and entry date.
    //
    // Suggests a track based on the user's mood and entry date.
    //
    //Future<BuiltList<SpotifyFullTrack>> apiV1SuggestGet(String mood, Date entryDate) async
    test('test apiV1SuggestGet', () async {
      // TODO
    });

  });
}
