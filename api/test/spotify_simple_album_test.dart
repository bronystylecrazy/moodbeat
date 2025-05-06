import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';

// tests for SpotifySimpleAlbum
void main() {
  final instance = SpotifySimpleAlbumBuilder();
  // TODO add properties to the builder and call build()

  group(SpotifySimpleAlbum, () {
    // The field is present when getting an artist’s albums. Possible values are “album”, “single”, “compilation”, “appears_on”. Compare to album_type this field represents relationship between the artist and the album.
    // String albumGroup
    test('to test the property `albumGroup`', () async {
      // TODO
    });

    // The type of the album: one of \"album\", \"single\", or \"compilation\".
    // String albumType
    test('to test the property `albumType`', () async {
      // TODO
    });

    // A slice of SimpleArtists
    // BuiltList<SpotifySimpleArtist> artists
    test('to test the property `artists`', () async {
      // TODO
    });

    // The markets in which the album is available, identified using ISO 3166-1 alpha-2 country codes.  Note that al album is considered available in a market when at least 1 of its tracks is available in that market.
    // BuiltList<String> availableMarkets
    test('to test the property `availableMarkets`', () async {
      // TODO
    });

    // Known external URLs for this album.
    // BuiltMap<String, String> externalUrls
    test('to test the property `externalUrls`', () async {
      // TODO
    });

    // A link to the Web API endpoint providing full details of the album.
    // String href
    test('to test the property `href`', () async {
      // TODO
    });

    // The SpotifyID for the album.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The cover art for the album in various sizes, widest first.
    // BuiltList<SpotifyImage> images
    test('to test the property `images`', () async {
      // TODO
    });

    // The name of the album.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The date the album was first released.  For example, \"1981-12-15\". Depending on the ReleaseDatePrecision, it might be shown as \"1981\" or \"1981-12\". You can use ReleaseDateTime to convert this to a time.Time value.
    // String releaseDate
    test('to test the property `releaseDate`', () async {
      // TODO
    });

    // The precision with which ReleaseDate value is known: \"year\", \"month\", or \"day\"
    // String releaseDatePrecision
    test('to test the property `releaseDatePrecision`', () async {
      // TODO
    });

    // The number of tracks on the album.
    // int totalTracks
    test('to test the property `totalTracks`', () async {
      // TODO
    });

    // The SpotifyURI for the album.
    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

  });
}
