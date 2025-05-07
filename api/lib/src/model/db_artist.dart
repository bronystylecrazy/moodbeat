//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_artist.g.dart';

/// DbArtist
///
/// Properties:
/// * [createdAt] 
/// * [id] 
/// * [imageUrl] 
/// * [name] 
/// * [spotifyId] 
/// * [updatedAt] 
@BuiltValue()
abstract class DbArtist implements Built<DbArtist, DbArtistBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'spotifyId')
  String? get spotifyId;

  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  DbArtist._();

  factory DbArtist([void updates(DbArtistBuilder b)]) = _$DbArtist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbArtistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbArtist> get serializer => _$DbArtistSerializer();
}

class _$DbArtistSerializer implements PrimitiveSerializer<DbArtist> {
  @override
  final Iterable<Type> types = const [DbArtist, _$DbArtist];

  @override
  final String wireName = r'DbArtist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbArtist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
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
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
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
    if (object.spotifyId != null) {
      yield r'spotifyId';
      yield serializers.serialize(
        object.spotifyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbArtist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbArtistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageUrl = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'spotifyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spotifyId = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbArtist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbArtistBuilder();
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

