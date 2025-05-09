//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_user_selected_preset.g.dart';

/// DbUserSelectedPreset
///
/// Properties:
/// * [id] 
/// * [moodPresetId] 
/// * [selectedAt] 
/// * [userId] 
@BuiltValue()
abstract class DbUserSelectedPreset implements Built<DbUserSelectedPreset, DbUserSelectedPresetBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'moodPresetId')
  String? get moodPresetId;

  @BuiltValueField(wireName: r'selectedAt')
  String? get selectedAt;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  DbUserSelectedPreset._();

  factory DbUserSelectedPreset([void updates(DbUserSelectedPresetBuilder b)]) = _$DbUserSelectedPreset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbUserSelectedPresetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbUserSelectedPreset> get serializer => _$DbUserSelectedPresetSerializer();
}

class _$DbUserSelectedPresetSerializer implements PrimitiveSerializer<DbUserSelectedPreset> {
  @override
  final Iterable<Type> types = const [DbUserSelectedPreset, _$DbUserSelectedPreset];

  @override
  final String wireName = r'DbUserSelectedPreset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbUserSelectedPreset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.moodPresetId != null) {
      yield r'moodPresetId';
      yield serializers.serialize(
        object.moodPresetId,
        specifiedType: const FullType(String),
      );
    }
    if (object.selectedAt != null) {
      yield r'selectedAt';
      yield serializers.serialize(
        object.selectedAt,
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
    DbUserSelectedPreset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbUserSelectedPresetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'moodPresetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.moodPresetId = valueDes;
          break;
        case r'selectedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectedAt = valueDes;
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
  DbUserSelectedPreset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbUserSelectedPresetBuilder();
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

