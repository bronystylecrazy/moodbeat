//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_diary_entry.g.dart';

/// DbDiaryEntry
///
/// Properties:
/// * [advice] 
/// * [content] 
/// * [createdAt] 
/// * [emotion] 
/// * [entryDate] 
/// * [id] 
/// * [imageUrl] 
/// * [stressScore] 
/// * [updatedAt] 
/// * [userId] 
@BuiltValue()
abstract class DbDiaryEntry implements Built<DbDiaryEntry, DbDiaryEntryBuilder> {
  @BuiltValueField(wireName: r'advice')
  String? get advice;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'emotion')
  String? get emotion;

  @BuiltValueField(wireName: r'entryDate')
  String? get entryDate;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'stressScore')
  int? get stressScore;

  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  DbDiaryEntry._();

  factory DbDiaryEntry([void updates(DbDiaryEntryBuilder b)]) = _$DbDiaryEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbDiaryEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbDiaryEntry> get serializer => _$DbDiaryEntrySerializer();
}

class _$DbDiaryEntrySerializer implements PrimitiveSerializer<DbDiaryEntry> {
  @override
  final Iterable<Type> types = const [DbDiaryEntry, _$DbDiaryEntry];

  @override
  final String wireName = r'DbDiaryEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbDiaryEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.advice != null) {
      yield r'advice';
      yield serializers.serialize(
        object.advice,
        specifiedType: const FullType(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
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
    if (object.emotion != null) {
      yield r'emotion';
      yield serializers.serialize(
        object.emotion,
        specifiedType: const FullType(String),
      );
    }
    if (object.entryDate != null) {
      yield r'entryDate';
      yield serializers.serialize(
        object.entryDate,
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
    if (object.stressScore != null) {
      yield r'stressScore';
      yield serializers.serialize(
        object.stressScore,
        specifiedType: const FullType(int),
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
    DbDiaryEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbDiaryEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'advice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.advice = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'emotion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emotion = valueDes;
          break;
        case r'entryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entryDate = valueDes;
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
        case r'stressScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.stressScore = valueDes;
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
  DbDiaryEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbDiaryEntryBuilder();
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

