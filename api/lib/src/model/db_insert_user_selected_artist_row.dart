//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_insert_user_selected_artist_row.g.dart';

/// DbInsertUserSelectedArtistRow
///
/// Properties:
/// * [artistId] 
/// * [hidden] 
/// * [userId] 
@BuiltValue()
abstract class DbInsertUserSelectedArtistRow implements Built<DbInsertUserSelectedArtistRow, DbInsertUserSelectedArtistRowBuilder> {
  @BuiltValueField(wireName: r'artistId')
  String? get artistId;

  @BuiltValueField(wireName: r'hidden')
  bool? get hidden;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  DbInsertUserSelectedArtistRow._();

  factory DbInsertUserSelectedArtistRow([void updates(DbInsertUserSelectedArtistRowBuilder b)]) = _$DbInsertUserSelectedArtistRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbInsertUserSelectedArtistRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbInsertUserSelectedArtistRow> get serializer => _$DbInsertUserSelectedArtistRowSerializer();
}

class _$DbInsertUserSelectedArtistRowSerializer implements PrimitiveSerializer<DbInsertUserSelectedArtistRow> {
  @override
  final Iterable<Type> types = const [DbInsertUserSelectedArtistRow, _$DbInsertUserSelectedArtistRow];

  @override
  final String wireName = r'DbInsertUserSelectedArtistRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbInsertUserSelectedArtistRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.artistId != null) {
      yield r'artistId';
      yield serializers.serialize(
        object.artistId,
        specifiedType: const FullType(String),
      );
    }
    if (object.hidden != null) {
      yield r'hidden';
      yield serializers.serialize(
        object.hidden,
        specifiedType: const FullType(bool),
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
    DbInsertUserSelectedArtistRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbInsertUserSelectedArtistRowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'artistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.artistId = valueDes;
          break;
        case r'hidden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hidden = valueDes;
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
  DbInsertUserSelectedArtistRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbInsertUserSelectedArtistRowBuilder();
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

