import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

// tests for SpotifyFullTrack
void main() {
  final instance = SpotifyFullTrackBuilder();
  // TODO add properties to the builder and call build()

  group(SpotifyFullTrack, () {
    // The album on which the track appears. The album object includes a link in href to full information about the album.
    // SpotifySimpleAlbum album
    test('to test the property `album`', () async {
      // TODO
    });

    // BuiltList<SpotifySimpleArtist> artists
    test('to test the property `artists`', () async {
      // TODO
    });

    // A list of the countries in which the track can be played, identified by their ISO 3166-1 alpha-2 codes.
    // BuiltList<String> availableMarkets
    test('to test the property `availableMarkets`', () async {
      // TODO
    });

    // The disc number (usually 1 unless the album consists of more than one disc).
    // int discNumber
    test('to test the property `discNumber`', () async {
      // TODO
    });

    // The length of the track, in milliseconds.
    // int durationMs
    test('to test the property `durationMs`', () async {
      // TODO
    });

    // Whether or not the track has explicit lyrics. true => yes, it does; false => no, it does not.
    // bool explicit
    test('to test the property `explicit`', () async {
      // TODO
    });

    // Known external IDs for the track.
    // BuiltMap<String, String> externalIds
    test('to test the property `externalIds`', () async {
      // TODO
    });

    // External URLs for this track.
    // BuiltMap<String, String> externalUrls
    test('to test the property `externalUrls`', () async {
      // TODO
    });

    // A link to the Web API endpoint providing full details for this track.
    // String href
    test('to test the property `href`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // IsPlayable defines if the track is playable. It's reported when the \"market\" parameter is passed to the tracks listing API. See: https://developer.spotify.com/documentation/general/guides/track-relinking-guide/
    // bool isPlayable
    test('to test the property `isPlayable`', () async {
      // TODO
    });

    // LinkedFrom points to the linked track. It's reported when the \"market\" parameter is passed to the tracks listing API.
    // SpotifyLinkedFromInfo linkedFrom
    test('to test the property `linkedFrom`', () async {
      // TODO
    });

    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Popularity of the track.  The value will be between 0 and 100, with 100 being the most popular.  The popularity is calculated from both total plays and most recent plays.
    // int popularity
    test('to test the property `popularity`', () async {
      // TODO
    });

    // A URL to a 30 second preview (MP3) of the track.
    // String previewUrl
    test('to test the property `previewUrl`', () async {
      // TODO
    });

    // The number of the track.  If an album has several discs, the track number is the number on the specified DiscNumber.
    // int trackNumber
    test('to test the property `trackNumber`', () async {
      // TODO
    });

    // Type of the track
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

  });
}
