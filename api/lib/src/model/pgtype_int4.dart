//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pgtype_int4.g.dart';

/// PgtypeInt4
///
/// Properties:
/// * [int32] 
/// * [valid] 
@BuiltValue()
abstract class PgtypeInt4 implements Built<PgtypeInt4, PgtypeInt4Builder> {
  @BuiltValueField(wireName: r'int32')
  int? get int32;

  @BuiltValueField(wireName: r'valid')
  bool? get valid;

  PgtypeInt4._();

  factory PgtypeInt4([void updates(PgtypeInt4Builder b)]) = _$PgtypeInt4;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PgtypeInt4Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PgtypeInt4> get serializer => _$PgtypeInt4Serializer();
}

class _$PgtypeInt4Serializer implements PrimitiveSerializer<PgtypeInt4> {
  @override
  final Iterable<Type> types = const [PgtypeInt4, _$PgtypeInt4];

  @override
  final String wireName = r'PgtypeInt4';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PgtypeInt4 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.int32 != null) {
      yield r'int32';
      yield serializers.serialize(
        object.int32,
        specifiedType: const FullType(int),
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
    PgtypeInt4 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PgtypeInt4Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'int32':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.int32 = valueDes;
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
  PgtypeInt4 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PgtypeInt4Builder();
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

