//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_select_artists_mutation.g.dart';

/// ProfileSelectArtistsMutation
///
/// Properties:
/// * [artistIds] 
@BuiltValue()
abstract class ProfileSelectArtistsMutation implements Built<ProfileSelectArtistsMutation, ProfileSelectArtistsMutationBuilder> {
  @BuiltValueField(wireName: r'artist_ids')
  BuiltList<String>? get artistIds;

  ProfileSelectArtistsMutation._();

  factory ProfileSelectArtistsMutation([void updates(ProfileSelectArtistsMutationBuilder b)]) = _$ProfileSelectArtistsMutation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileSelectArtistsMutationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProfileSelectArtistsMutation> get serializer => _$ProfileSelectArtistsMutationSerializer();
}

class _$ProfileSelectArtistsMutationSerializer implements PrimitiveSerializer<ProfileSelectArtistsMutation> {
  @override
  final Iterable<Type> types = const [ProfileSelectArtistsMutation, _$ProfileSelectArtistsMutation];

  @override
  final String wireName = r'ProfileSelectArtistsMutation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProfileSelectArtistsMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.artistIds != null) {
      yield r'artist_ids';
      yield serializers.serialize(
        object.artistIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProfileSelectArtistsMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProfileSelectArtistsMutationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'artist_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.artistIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProfileSelectArtistsMutation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileSelectArtistsMutationBuilder();
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

