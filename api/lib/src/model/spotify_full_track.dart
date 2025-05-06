//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:moodbeat_core/src/model/spotify_simple_artist.dart';
import 'package:moodbeat_core/src/model/spotify_linked_from_info.dart';
import 'package:moodbeat_core/src/model/spotify_simple_album.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotify_full_track.g.dart';

/// SpotifyFullTrack
///
/// Properties:
/// * [album] - The album on which the track appears. The album object includes a link in href to full information about the album.
/// * [artists] 
/// * [availableMarkets] - A list of the countries in which the track can be played, identified by their ISO 3166-1 alpha-2 codes.
/// * [discNumber] - The disc number (usually 1 unless the album consists of more than one disc).
/// * [durationMs] - The length of the track, in milliseconds.
/// * [explicit] - Whether or not the track has explicit lyrics. true => yes, it does; false => no, it does not.
/// * [externalIds] - Known external IDs for the track.
/// * [externalUrls] - External URLs for this track.
/// * [href] - A link to the Web API endpoint providing full details for this track.
/// * [id] 
/// * [isPlayable] - IsPlayable defines if the track is playable. It's reported when the \"market\" parameter is passed to the tracks listing API. See: https://developer.spotify.com/documentation/general/guides/track-relinking-guide/
/// * [linkedFrom] - LinkedFrom points to the linked track. It's reported when the \"market\" parameter is passed to the tracks listing API.
/// * [name] 
/// * [popularity] - Popularity of the track.  The value will be between 0 and 100, with 100 being the most popular.  The popularity is calculated from both total plays and most recent plays.
/// * [previewUrl] - A URL to a 30 second preview (MP3) of the track.
/// * [trackNumber] - The number of the track.  If an album has several discs, the track number is the number on the specified DiscNumber.
/// * [type] - Type of the track
/// * [uri] 
@BuiltValue()
abstract class SpotifyFullTrack implements Built<SpotifyFullTrack, SpotifyFullTrackBuilder> {
  /// The album on which the track appears. The album object includes a link in href to full information about the album.
  @BuiltValueField(wireName: r'album')
  SpotifySimpleAlbum? get album;

  @BuiltValueField(wireName: r'artists')
  BuiltList<SpotifySimpleArtist>? get artists;

  /// A list of the countries in which the track can be played, identified by their ISO 3166-1 alpha-2 codes.
  @BuiltValueField(wireName: r'available_markets')
  BuiltList<String>? get availableMarkets;

  /// The disc number (usually 1 unless the album consists of more than one disc).
  @BuiltValueField(wireName: r'disc_number')
  int? get discNumber;

  /// The length of the track, in milliseconds.
  @BuiltValueField(wireName: r'duration_ms')
  int? get durationMs;

  /// Whether or not the track has explicit lyrics. true => yes, it does; false => no, it does not.
  @BuiltValueField(wireName: r'explicit')
  bool? get explicit;

  /// Known external IDs for the track.
  @BuiltValueField(wireName: r'external_ids')
  BuiltMap<String, String>? get externalIds;

  /// External URLs for this track.
  @BuiltValueField(wireName: r'external_urls')
  BuiltMap<String, String>? get externalUrls;

  /// A link to the Web API endpoint providing full details for this track.
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'id')
  String? get id;

  /// IsPlayable defines if the track is playable. It's reported when the \"market\" parameter is passed to the tracks listing API. See: https://developer.spotify.com/documentation/general/guides/track-relinking-guide/
  @BuiltValueField(wireName: r'is_playable')
  bool? get isPlayable;

  /// LinkedFrom points to the linked track. It's reported when the \"market\" parameter is passed to the tracks listing API.
  @BuiltValueField(wireName: r'linked_from')
  SpotifyLinkedFromInfo? get linkedFrom;

  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Popularity of the track.  The value will be between 0 and 100, with 100 being the most popular.  The popularity is calculated from both total plays and most recent plays.
  @BuiltValueField(wireName: r'popularity')
  int? get popularity;

  /// A URL to a 30 second preview (MP3) of the track.
  @BuiltValueField(wireName: r'preview_url')
  String? get previewUrl;

  /// The number of the track.  If an album has several discs, the track number is the number on the specified DiscNumber.
  @BuiltValueField(wireName: r'track_number')
  int? get trackNumber;

  /// Type of the track
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'uri')
  String? get uri;

  SpotifyFullTrack._();

  factory SpotifyFullTrack([void updates(SpotifyFullTrackBuilder b)]) = _$SpotifyFullTrack;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpotifyFullTrackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpotifyFullTrack> get serializer => _$SpotifyFullTrackSerializer();
}

class _$SpotifyFullTrackSerializer implements PrimitiveSerializer<SpotifyFullTrack> {
  @override
  final Iterable<Type> types = const [SpotifyFullTrack, _$SpotifyFullTrack];

  @override
  final String wireName = r'SpotifyFullTrack';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpotifyFullTrack object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.album != null) {
      yield r'album';
      yield serializers.serialize(
        object.album,
        specifiedType: const FullType(SpotifySimpleAlbum),
      );
    }
    if (object.artists != null) {
      yield r'artists';
      yield serializers.serialize(
        object.artists,
        specifiedType: const FullType(BuiltList, [FullType(SpotifySimpleArtist)]),
      );
    }
    if (object.availableMarkets != null) {
      yield r'available_markets';
      yield serializers.serialize(
        object.availableMarkets,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.discNumber != null) {
      yield r'disc_number';
      yield serializers.serialize(
        object.discNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.durationMs != null) {
      yield r'duration_ms';
      yield serializers.serialize(
        object.durationMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.explicit != null) {
      yield r'explicit';
      yield serializers.serialize(
        object.explicit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.externalIds != null) {
      yield r'external_ids';
      yield serializers.serialize(
        object.externalIds,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.externalUrls != null) {
      yield r'external_urls';
      yield serializers.serialize(
        object.externalUrls,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.href != null) {
      yield r'href';
      yield serializers.serialize(
        object.href,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.isPlayable != null) {
      yield r'is_playable';
      yield serializers.serialize(
        object.isPlayable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.linkedFrom != null) {
      yield r'linked_from';
      yield serializers.serialize(
        object.linkedFrom,
        specifiedType: const FullType(SpotifyLinkedFromInfo),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.popularity != null) {
      yield r'popularity';
      yield serializers.serialize(
        object.popularity,
        specifiedType: const FullType(int),
      );
    }
    if (object.previewUrl != null) {
      yield r'preview_url';
      yield serializers.serialize(
        object.previewUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.trackNumber != null) {
      yield r'track_number';
      yield serializers.serialize(
        object.trackNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpotifyFullTrack object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpotifyFullTrackBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'album':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SpotifySimpleAlbum),
          ) as SpotifySimpleAlbum;
          result.album.replace(valueDes);
          break;
        case r'artists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SpotifySimpleArtist)]),
          ) as BuiltList<SpotifySimpleArtist>;
          result.artists.replace(valueDes);
          break;
        case r'available_markets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.availableMarkets.replace(valueDes);
          break;
        case r'disc_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.discNumber = valueDes;
          break;
        case r'duration_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationMs = valueDes;
          break;
        case r'explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.explicit = valueDes;
          break;
        case r'external_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.externalIds.replace(valueDes);
          break;
        case r'external_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.externalUrls.replace(valueDes);
          break;
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'is_playable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPlayable = valueDes;
          break;
        case r'linked_from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SpotifyLinkedFromInfo),
          ) as SpotifyLinkedFromInfo;
          result.linkedFrom.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'popularity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.popularity = valueDes;
          break;
        case r'preview_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.previewUrl = valueDes;
          break;
        case r'track_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.trackNumber = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpotifyFullTrack deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotifyFullTrackBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

