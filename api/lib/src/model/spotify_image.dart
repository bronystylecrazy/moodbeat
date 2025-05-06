//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spotify_image.g.dart';

/// SpotifyImage
///
/// Properties:
/// * [height] - The image height, in pixels.
/// * [url] - The source URL of the image.
/// * [width] - The image width, in pixels.
@BuiltValue()
abstract class SpotifyImage implements Built<SpotifyImage, SpotifyImageBuilder> {
  /// The image height, in pixels.
  @BuiltValueField(wireName: r'height')
  int? get height;

  /// The source URL of the image.
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// The image width, in pixels.
  @BuiltValueField(wireName: r'width')
  int? get width;

  SpotifyImage._();

  factory SpotifyImage([void updates(SpotifyImageBuilder b)]) = _$SpotifyImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpotifyImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpotifyImage> get serializer => _$SpotifyImageSerializer();
}

class _$SpotifyImageSerializer implements PrimitiveSerializer<SpotifyImage> {
  @override
  final Iterable<Type> types = const [SpotifyImage, _$SpotifyImage];

  @override
  final String wireName = r'SpotifyImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpotifyImage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpotifyImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpotifyImageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.height = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpotifyImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotifyImageBuilder();
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

