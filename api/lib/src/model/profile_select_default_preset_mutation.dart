//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_select_default_preset_mutation.g.dart';

/// ProfileSelectDefaultPresetMutation
///
/// Properties:
/// * [presetId] 
@BuiltValue()
abstract class ProfileSelectDefaultPresetMutation implements Built<ProfileSelectDefaultPresetMutation, ProfileSelectDefaultPresetMutationBuilder> {
  @BuiltValueField(wireName: r'preset_id')
  BuiltList<String>? get presetId;

  ProfileSelectDefaultPresetMutation._();

  factory ProfileSelectDefaultPresetMutation([void updates(ProfileSelectDefaultPresetMutationBuilder b)]) = _$ProfileSelectDefaultPresetMutation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileSelectDefaultPresetMutationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProfileSelectDefaultPresetMutation> get serializer => _$ProfileSelectDefaultPresetMutationSerializer();
}

class _$ProfileSelectDefaultPresetMutationSerializer implements PrimitiveSerializer<ProfileSelectDefaultPresetMutation> {
  @override
  final Iterable<Type> types = const [ProfileSelectDefaultPresetMutation, _$ProfileSelectDefaultPresetMutation];

  @override
  final String wireName = r'ProfileSelectDefaultPresetMutation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProfileSelectDefaultPresetMutation object, {
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
    ProfileSelectDefaultPresetMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProfileSelectDefaultPresetMutationBuilder result,
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
  ProfileSelectDefaultPresetMutation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileSelectDefaultPresetMutationBuilder();
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

