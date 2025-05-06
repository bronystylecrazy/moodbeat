//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotify_linked_from_info.g.dart';

/// SpotifyLinkedFromInfo
///
/// Properties:
/// * [externalUrls] - ExternalURLs are the known external APIs for this track or album
/// * [href] - Href is a link to the Web API endpoint providing full details
/// * [id] - ID of the linked track
/// * [type] - Type of the link: album of the track
/// * [uri] - URI is the Spotify URI of the track/album
@BuiltValue()
abstract class SpotifyLinkedFromInfo implements Built<SpotifyLinkedFromInfo, SpotifyLinkedFromInfoBuilder> {
  /// ExternalURLs are the known external APIs for this track or album
  @BuiltValueField(wireName: r'external_urls')
  BuiltMap<String, String>? get externalUrls;

  /// Href is a link to the Web API endpoint providing full details
  @BuiltValueField(wireName: r'href')
  String? get href;

  /// ID of the linked track
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Type of the link: album of the track
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// URI is the Spotify URI of the track/album
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  SpotifyLinkedFromInfo._();

  factory SpotifyLinkedFromInfo([void updates(SpotifyLinkedFromInfoBuilder b)]) = _$SpotifyLinkedFromInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpotifyLinkedFromInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpotifyLinkedFromInfo> get serializer => _$SpotifyLinkedFromInfoSerializer();
}

class _$SpotifyLinkedFromInfoSerializer implements PrimitiveSerializer<SpotifyLinkedFromInfo> {
  @override
  final Iterable<Type> types = const [SpotifyLinkedFromInfo, _$SpotifyLinkedFromInfo];

  @override
  final String wireName = r'SpotifyLinkedFromInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpotifyLinkedFromInfo object, {
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
    SpotifyLinkedFromInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpotifyLinkedFromInfoBuilder result,
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
  SpotifyLinkedFromInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotifyLinkedFromInfoBuilder();
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

