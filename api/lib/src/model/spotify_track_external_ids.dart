//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotify_track_external_ids.g.dart';

/// SpotifyTrackExternalIDs
///
/// Properties:
/// * [ean] 
/// * [isrc] 
/// * [upc] 
@BuiltValue()
abstract class SpotifyTrackExternalIDs implements Built<SpotifyTrackExternalIDs, SpotifyTrackExternalIDsBuilder> {
  @BuiltValueField(wireName: r'ean')
  String? get ean;

  @BuiltValueField(wireName: r'isrc')
  String? get isrc;

  @BuiltValueField(wireName: r'upc')
  String? get upc;

  SpotifyTrackExternalIDs._();

  factory SpotifyTrackExternalIDs([void updates(SpotifyTrackExternalIDsBuilder b)]) = _$SpotifyTrackExternalIDs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpotifyTrackExternalIDsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpotifyTrackExternalIDs> get serializer => _$SpotifyTrackExternalIDsSerializer();
}

class _$SpotifyTrackExternalIDsSerializer implements PrimitiveSerializer<SpotifyTrackExternalIDs> {
  @override
  final Iterable<Type> types = const [SpotifyTrackExternalIDs, _$SpotifyTrackExternalIDs];

  @override
  final String wireName = r'SpotifyTrackExternalIDs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpotifyTrackExternalIDs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ean != null) {
      yield r'ean';
      yield serializers.serialize(
        object.ean,
        specifiedType: const FullType(String),
      );
    }
    if (object.isrc != null) {
      yield r'isrc';
      yield serializers.serialize(
        object.isrc,
        specifiedType: const FullType(String),
      );
    }
    if (object.upc != null) {
      yield r'upc';
      yield serializers.serialize(
        object.upc,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpotifyTrackExternalIDs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpotifyTrackExternalIDsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ean = valueDes;
          break;
        case r'isrc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isrc = valueDes;
          break;
        case r'upc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.upc = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpotifyTrackExternalIDs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotifyTrackExternalIDsBuilder();
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

