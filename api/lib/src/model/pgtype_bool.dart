//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pgtype_bool.g.dart';

/// PgtypeBool
///
/// Properties:
/// * [bool_] 
/// * [valid] 
@BuiltValue()
abstract class PgtypeBool implements Built<PgtypeBool, PgtypeBoolBuilder> {
  @BuiltValueField(wireName: r'bool')
  bool? get bool_;

  @BuiltValueField(wireName: r'valid')
  bool? get valid;

  PgtypeBool._();

  factory PgtypeBool([void updates(PgtypeBoolBuilder b)]) = _$PgtypeBool;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PgtypeBoolBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PgtypeBool> get serializer => _$PgtypeBoolSerializer();
}

class _$PgtypeBoolSerializer implements PrimitiveSerializer<PgtypeBool> {
  @override
  final Iterable<Type> types = const [PgtypeBool, _$PgtypeBool];

  @override
  final String wireName = r'PgtypeBool';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PgtypeBool object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bool_ != null) {
      yield r'bool';
      yield serializers.serialize(
        object.bool_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.valid != null) {
      yield r'valid';
      yield serializers.serialize(
        object.valid,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PgtypeBool object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PgtypeBoolBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bool':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bool_ = valueDes;
          break;
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.valid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PgtypeBool deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PgtypeBoolBuilder();
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

