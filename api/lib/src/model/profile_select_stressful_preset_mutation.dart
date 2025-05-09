//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_select_stressful_preset_mutation.g.dart';

/// ProfileSelectStressfulPresetMutation
///
/// Properties:
/// * [presetId] 
@BuiltValue()
abstract class ProfileSelectStressfulPresetMutation implements Built<ProfileSelectStressfulPresetMutation, ProfileSelectStressfulPresetMutationBuilder> {
  @BuiltValueField(wireName: r'preset_id')
  BuiltList<String>? get presetId;

  ProfileSelectStressfulPresetMutation._();

  factory ProfileSelectStressfulPresetMutation([void updates(ProfileSelectStressfulPresetMutationBuilder b)]) = _$ProfileSelectStressfulPresetMutation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileSelectStressfulPresetMutationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProfileSelectStressfulPresetMutation> get serializer => _$ProfileSelectStressfulPresetMutationSerializer();
}

class _$ProfileSelectStressfulPresetMutationSerializer implements PrimitiveSerializer<ProfileSelectStressfulPresetMutation> {
  @override
  final Iterable<Type> types = const [ProfileSelectStressfulPresetMutation, _$ProfileSelectStressfulPresetMutation];

  @override
  final String wireName = r'ProfileSelectStressfulPresetMutation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProfileSelectStressfulPresetMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.presetId != null) {
      yield r'preset_id';
      yield serializers.serialize(
        object.presetId,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProfileSelectStressfulPresetMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProfileSelectStressfulPresetMutationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preset_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.presetId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProfileSelectStressfulPresetMutation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileSelectStressfulPresetMutationBuilder();
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

