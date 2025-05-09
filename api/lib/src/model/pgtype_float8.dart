//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pgtype_float8.g.dart';

/// PgtypeFloat8
///
/// Properties:
/// * [float64] 
/// * [valid] 
@BuiltValue()
abstract class PgtypeFloat8 implements Built<PgtypeFloat8, PgtypeFloat8Builder> {
  @BuiltValueField(wireName: r'float64')
  num? get float64;

  @BuiltValueField(wireName: r'valid')
  bool? get valid;

  PgtypeFloat8._();

  factory PgtypeFloat8([void updates(PgtypeFloat8Builder b)]) = _$PgtypeFloat8;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PgtypeFloat8Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PgtypeFloat8> get serializer => _$PgtypeFloat8Serializer();
}

class _$PgtypeFloat8Serializer implements PrimitiveSerializer<PgtypeFloat8> {
  @override
  final Iterable<Type> types = const [PgtypeFloat8, _$PgtypeFloat8];

  @override
  final String wireName = r'PgtypeFloat8';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PgtypeFloat8 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.float64 != null) {
      yield r'float64';
      yield serializers.serialize(
        object.float64,
        specifiedType: const FullType(num),
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
    PgtypeFloat8 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PgtypeFloat8Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'float64':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.float64 = valueDes;
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
  PgtypeFloat8 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PgtypeFloat8Builder();
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

