//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_user_selected_genre.g.dart';

/// DbUserSelectedGenre
///
/// Properties:
/// * [createdAt] 
/// * [genre] 
/// * [id] 
/// * [updatedAt] 
/// * [userId] 
@BuiltValue()
abstract class DbUserSelectedGenre implements Built<DbUserSelectedGenre, DbUserSelectedGenreBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'genre')
  String? get genre;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  DbUserSelectedGenre._();

  factory DbUserSelectedGenre([void updates(DbUserSelectedGenreBuilder b)]) = _$DbUserSelectedGenre;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbUserSelectedGenreBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbUserSelectedGenre> get serializer => _$DbUserSelectedGenreSerializer();
}

class _$DbUserSelectedGenreSerializer implements PrimitiveSerializer<DbUserSelectedGenre> {
  @override
  final Iterable<Type> types = const [DbUserSelectedGenre, _$DbUserSelectedGenre];

  @override
  final String wireName = r'DbUserSelectedGenre';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbUserSelectedGenre object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.genre != null) {
      yield r'genre';
      yield serializers.serialize(
        object.genre,
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
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbUserSelectedGenre object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbUserSelectedGenreBuilder result,
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
        case r'genre':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.genre = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbUserSelectedGenre deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbUserSelectedGenreBuilder();
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

