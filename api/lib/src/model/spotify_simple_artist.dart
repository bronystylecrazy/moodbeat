//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotify_simple_artist.g.dart';

/// SpotifySimpleArtist
///
/// Properties:
/// * [externalUrls] 
/// * [href] - A link to the Web API endpoint providing full details of the artist.
/// * [id] 
/// * [name] 
/// * [uri] - The Spotify URI for the artist.
@BuiltValue()
abstract class SpotifySimpleArtist implements Built<SpotifySimpleArtist, SpotifySimpleArtistBuilder> {
  @BuiltValueField(wireName: r'external_urls')
  BuiltMap<String, String>? get externalUrls;

  /// A link to the Web API endpoint providing full details of the artist.
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The Spotify URI for the artist.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  SpotifySimpleArtist._();

  factory SpotifySimpleArtist([void updates(SpotifySimpleArtistBuilder b)]) = _$SpotifySimpleArtist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpotifySimpleArtistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpotifySimpleArtist> get serializer => _$SpotifySimpleArtistSerializer();
}

class _$SpotifySimpleArtistSerializer implements PrimitiveSerializer<SpotifySimpleArtist> {
  @override
  final Iterable<Type> types = const [SpotifySimpleArtist, _$SpotifySimpleArtist];

  @override
  final String wireName = r'SpotifySimpleArtist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpotifySimpleArtist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    SpotifySimpleArtist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpotifySimpleArtistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
  SpotifySimpleArtist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotifySimpleArtistBuilder();
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

