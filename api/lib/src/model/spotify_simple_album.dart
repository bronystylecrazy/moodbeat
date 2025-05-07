//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:moodbeat_core/src/model/spotify_image.dart';
import 'package:moodbeat_core/src/model/spotify_simple_artist.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotify_simple_album.g.dart';

/// SpotifySimpleAlbum
///
/// Properties:
/// * [albumGroup] - The field is present when getting an artist’s albums. Possible values are “album”, “single”, “compilation”, “appears_on”. Compare to album_type this field represents relationship between the artist and the album.
/// * [albumType] - The type of the album: one of \"album\", \"single\", or \"compilation\".
/// * [artists] - A slice of SimpleArtists
/// * [availableMarkets] - The markets in which the album is available, identified using ISO 3166-1 alpha-2 country codes.  Note that al album is considered available in a market when at least 1 of its tracks is available in that market.
/// * [externalUrls] - Known external URLs for this album.
/// * [href] - A link to the Web API endpoint providing full details of the album.
/// * [id] - The SpotifyID for the album.
/// * [images] - The cover art for the album in various sizes, widest first.
/// * [name] - The name of the album.
/// * [releaseDate] - The date the album was first released.  For example, \"1981-12-15\". Depending on the ReleaseDatePrecision, it might be shown as \"1981\" or \"1981-12\". You can use ReleaseDateTime to convert this to a time.Time value.
/// * [releaseDatePrecision] - The precision with which ReleaseDate value is known: \"year\", \"month\", or \"day\"
/// * [totalTracks] - The number of tracks on the album.
/// * [uri] - The SpotifyURI for the album.
@BuiltValue()
abstract class SpotifySimpleAlbum implements Built<SpotifySimpleAlbum, SpotifySimpleAlbumBuilder> {
  /// The field is present when getting an artist’s albums. Possible values are “album”, “single”, “compilation”, “appears_on”. Compare to album_type this field represents relationship between the artist and the album.
  @BuiltValueField(wireName: r'album_group')
  String? get albumGroup;

  /// The type of the album: one of \"album\", \"single\", or \"compilation\".
  @BuiltValueField(wireName: r'album_type')
  String? get albumType;

  /// A slice of SimpleArtists
  @BuiltValueField(wireName: r'artists')
  BuiltList<SpotifySimpleArtist>? get artists;

  /// The markets in which the album is available, identified using ISO 3166-1 alpha-2 country codes.  Note that al album is considered available in a market when at least 1 of its tracks is available in that market.
  @BuiltValueField(wireName: r'available_markets')
  BuiltList<String>? get availableMarkets;

  /// Known external URLs for this album.
  @BuiltValueField(wireName: r'external_urls')
  BuiltMap<String, String>? get externalUrls;

  /// A link to the Web API endpoint providing full details of the album.
  @BuiltValueField(wireName: r'href')
  String? get href;

  /// The SpotifyID for the album.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The cover art for the album in various sizes, widest first.
  @BuiltValueField(wireName: r'images')
  BuiltList<SpotifyImage>? get images;

  /// The name of the album.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The date the album was first released.  For example, \"1981-12-15\". Depending on the ReleaseDatePrecision, it might be shown as \"1981\" or \"1981-12\". You can use ReleaseDateTime to convert this to a time.Time value.
  @BuiltValueField(wireName: r'release_date')
  String? get releaseDate;

  /// The precision with which ReleaseDate value is known: \"year\", \"month\", or \"day\"
  @BuiltValueField(wireName: r'release_date_precision')
  String? get releaseDatePrecision;

  /// The number of tracks on the album.
  @BuiltValueField(wireName: r'total_tracks')
  int? get totalTracks;

  /// The SpotifyURI for the album.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  SpotifySimpleAlbum._();

  factory SpotifySimpleAlbum([void updates(SpotifySimpleAlbumBuilder b)]) = _$SpotifySimpleAlbum;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpotifySimpleAlbumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpotifySimpleAlbum> get serializer => _$SpotifySimpleAlbumSerializer();
}

class _$SpotifySimpleAlbumSerializer implements PrimitiveSerializer<SpotifySimpleAlbum> {
  @override
  final Iterable<Type> types = const [SpotifySimpleAlbum, _$SpotifySimpleAlbum];

  @override
  final String wireName = r'SpotifySimpleAlbum';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpotifySimpleAlbum object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.albumGroup != null) {
      yield r'album_group';
      yield serializers.serialize(
        object.albumGroup,
        specifiedType: const FullType(String),
      );
    }
    if (object.albumType != null) {
      yield r'album_type';
      yield serializers.serialize(
        object.albumType,
        specifiedType: const FullType(String),
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
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType: const FullType(BuiltList, [FullType(SpotifyImage)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.releaseDate != null) {
      yield r'release_date';
      yield serializers.serialize(
        object.releaseDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.releaseDatePrecision != null) {
      yield r'release_date_precision';
      yield serializers.serialize(
        object.releaseDatePrecision,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalTracks != null) {
      yield r'total_tracks';
      yield serializers.serialize(
        object.totalTracks,
        specifiedType: const FullType(int),
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
    SpotifySimpleAlbum object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpotifySimpleAlbumBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'album_group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.albumGroup = valueDes;
          break;
        case r'album_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.albumType = valueDes;
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
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SpotifyImage)]),
          ) as BuiltList<SpotifyImage>;
          result.images.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'release_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.releaseDate = valueDes;
          break;
        case r'release_date_precision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.releaseDatePrecision = valueDes;
          break;
        case r'total_tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTracks = valueDes;
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
  SpotifySimpleAlbum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotifySimpleAlbumBuilder();
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

