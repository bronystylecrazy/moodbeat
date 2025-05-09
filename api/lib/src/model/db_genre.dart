//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_genre.g.dart';

/// DbGenre
///
/// Properties:
/// * [emojis] 
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class DbGenre implements Built<DbGenre, DbGenreBuilder> {
  @BuiltValueField(wireName: r'emojis')
  String? get emojis;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  DbGenre._();

  factory DbGenre([void updates(DbGenreBuilder b)]) = _$DbGenre;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbGenreBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbGenre> get serializer => _$DbGenreSerializer();
}

class _$DbGenreSerializer implements PrimitiveSerializer<DbGenre> {
  @override
  final Iterable<Type> types = const [DbGenre, _$DbGenre];

  @override
  final String wireName = r'DbGenre';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbGenre object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.emojis != null) {
      yield r'emojis';
      yield serializers.serialize(
        object.emojis,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DbGenre object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbGenreBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'emojis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emojis = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbGenre deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbGenreBuilder();
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

