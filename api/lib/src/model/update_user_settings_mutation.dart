//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_user_settings_mutation.g.dart';

/// UpdateUserSettingsMutation
///
/// Properties:
/// * [fontFamily] 
/// * [fontSize] 
/// * [language] 
/// * [songPreference] 
/// * [theme] 
@BuiltValue()
abstract class UpdateUserSettingsMutation implements Built<UpdateUserSettingsMutation, UpdateUserSettingsMutationBuilder> {
  @BuiltValueField(wireName: r'fontFamily')
  String? get fontFamily;

  @BuiltValueField(wireName: r'fontSize')
  String? get fontSize;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'songPreference')
  String? get songPreference;

  @BuiltValueField(wireName: r'theme')
  String? get theme;

  UpdateUserSettingsMutation._();

  factory UpdateUserSettingsMutation([void updates(UpdateUserSettingsMutationBuilder b)]) = _$UpdateUserSettingsMutation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateUserSettingsMutationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateUserSettingsMutation> get serializer => _$UpdateUserSettingsMutationSerializer();
}

class _$UpdateUserSettingsMutationSerializer implements PrimitiveSerializer<UpdateUserSettingsMutation> {
  @override
  final Iterable<Type> types = const [UpdateUserSettingsMutation, _$UpdateUserSettingsMutation];

  @override
  final String wireName = r'UpdateUserSettingsMutation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateUserSettingsMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fontFamily != null) {
      yield r'fontFamily';
      yield serializers.serialize(
        object.fontFamily,
        specifiedType: const FullType(String),
      );
    }
    if (object.fontSize != null) {
      yield r'fontSize';
      yield serializers.serialize(
        object.fontSize,
        specifiedType: const FullType(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.songPreference != null) {
      yield r'songPreference';
      yield serializers.serialize(
        object.songPreference,
        specifiedType: const FullType(String),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateUserSettingsMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateUserSettingsMutationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fontFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fontFamily = valueDes;
          break;
        case r'fontSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fontSize = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'songPreference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.songPreference = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.theme = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateUserSettingsMutation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUserSettingsMutationBuilder();
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

