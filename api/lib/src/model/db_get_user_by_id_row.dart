//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_get_user_by_id_row.g.dart';

/// DbGetUserByIdRow
///
/// Properties:
/// * [avatarUrl] 
/// * [country] 
/// * [createdAt] 
/// * [displayName] 
/// * [email] 
/// * [id] 
/// * [product] 
/// * [setupAt] 
/// * [spotifyUrl] 
@BuiltValue()
abstract class DbGetUserByIdRow implements Built<DbGetUserByIdRow, DbGetUserByIdRowBuilder> {
  @BuiltValueField(wireName: r'avatarUrl')
  String? get avatarUrl;

  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'product')
  String? get product;

  @BuiltValueField(wireName: r'setupAt')
  String? get setupAt;

  @BuiltValueField(wireName: r'spotifyUrl')
  String? get spotifyUrl;

  DbGetUserByIdRow._();

  factory DbGetUserByIdRow([void updates(DbGetUserByIdRowBuilder b)]) = _$DbGetUserByIdRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbGetUserByIdRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbGetUserByIdRow> get serializer => _$DbGetUserByIdRowSerializer();
}

class _$DbGetUserByIdRowSerializer implements PrimitiveSerializer<DbGetUserByIdRow> {
  @override
  final Iterable<Type> types = const [DbGetUserByIdRow, _$DbGetUserByIdRow];

  @override
  final String wireName = r'DbGetUserByIdRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbGetUserByIdRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.avatarUrl != null) {
      yield r'avatarUrl';
      yield serializers.serialize(
        object.avatarUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
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
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType(String),
      );
    }
    if (object.setupAt != null) {
      yield r'setupAt';
      yield serializers.serialize(
        object.setupAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.spotifyUrl != null) {
      yield r'spotifyUrl';
      yield serializers.serialize(
        object.spotifyUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbGetUserByIdRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbGetUserByIdRowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'avatarUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatarUrl = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.country = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.product = valueDes;
          break;
        case r'setupAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setupAt = valueDes;
          break;
        case r'spotifyUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spotifyUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbGetUserByIdRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbGetUserByIdRowBuilder();
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

