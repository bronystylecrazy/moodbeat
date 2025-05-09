//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_list_selected_presets_by_user_row.g.dart';

/// DbListSelectedPresetsByUserRow
///
/// Properties:
/// * [description] 
/// * [emoji] 
/// * [energyMax] 
/// * [energyMin] 
/// * [id] 
/// * [id2] 
/// * [keywords] 
/// * [label] 
/// * [moodPresetId] 
/// * [selectedAt] 
/// * [tempoMax] 
/// * [tempoMin] 
/// * [userId] 
/// * [valenceMax] 
/// * [valenceMin] 
@BuiltValue()
abstract class DbListSelectedPresetsByUserRow implements Built<DbListSelectedPresetsByUserRow, DbListSelectedPresetsByUserRowBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'emoji')
  String? get emoji;

  @BuiltValueField(wireName: r'energyMax')
  num? get energyMax;

  @BuiltValueField(wireName: r'energyMin')
  num? get energyMin;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'id2')
  String? get id2;

  @BuiltValueField(wireName: r'keywords')
  BuiltList<String>? get keywords;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'moodPresetId')
  String? get moodPresetId;

  @BuiltValueField(wireName: r'selectedAt')
  String? get selectedAt;

  @BuiltValueField(wireName: r'tempoMax')
  num? get tempoMax;

  @BuiltValueField(wireName: r'tempoMin')
  num? get tempoMin;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'valenceMax')
  num? get valenceMax;

  @BuiltValueField(wireName: r'valenceMin')
  num? get valenceMin;

  DbListSelectedPresetsByUserRow._();

  factory DbListSelectedPresetsByUserRow([void updates(DbListSelectedPresetsByUserRowBuilder b)]) = _$DbListSelectedPresetsByUserRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbListSelectedPresetsByUserRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbListSelectedPresetsByUserRow> get serializer => _$DbListSelectedPresetsByUserRowSerializer();
}

class _$DbListSelectedPresetsByUserRowSerializer implements PrimitiveSerializer<DbListSelectedPresetsByUserRow> {
  @override
  final Iterable<Type> types = const [DbListSelectedPresetsByUserRow, _$DbListSelectedPresetsByUserRow];

  @override
  final String wireName = r'DbListSelectedPresetsByUserRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbListSelectedPresetsByUserRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.emoji != null) {
      yield r'emoji';
      yield serializers.serialize(
        object.emoji,
        specifiedType: const FullType(String),
      );
    }
    if (object.energyMax != null) {
      yield r'energyMax';
      yield serializers.serialize(
        object.energyMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.energyMin != null) {
      yield r'energyMin';
      yield serializers.serialize(
        object.energyMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.id2 != null) {
      yield r'id2';
      yield serializers.serialize(
        object.id2,
        specifiedType: const FullType(String),
      );
    }
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
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
    if (object.tempoMax != null) {
      yield r'tempoMax';
      yield serializers.serialize(
        object.tempoMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.tempoMin != null) {
      yield r'tempoMin';
      yield serializers.serialize(
        object.tempoMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.valenceMax != null) {
      yield r'valenceMax';
      yield serializers.serialize(
        object.valenceMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.valenceMin != null) {
      yield r'valenceMin';
      yield serializers.serialize(
        object.valenceMin,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbListSelectedPresetsByUserRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbListSelectedPresetsByUserRowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'emoji':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emoji = valueDes;
          break;
        case r'energyMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.energyMax = valueDes;
          break;
        case r'energyMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.energyMin = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'id2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id2 = valueDes;
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.keywords.replace(valueDes);
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
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
        case r'tempoMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tempoMax = valueDes;
          break;
        case r'tempoMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tempoMin = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'valenceMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.valenceMax = valueDes;
          break;
        case r'valenceMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.valenceMin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbListSelectedPresetsByUserRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbListSelectedPresetsByUserRowBuilder();
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

