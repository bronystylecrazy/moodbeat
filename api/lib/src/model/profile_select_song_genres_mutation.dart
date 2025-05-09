//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_select_song_genres_mutation.g.dart';

/// ProfileSelectSongGenresMutation
///
/// Properties:
/// * [genreId] - Assuming multiple selections
@BuiltValue()
abstract class ProfileSelectSongGenresMutation implements Built<ProfileSelectSongGenresMutation, ProfileSelectSongGenresMutationBuilder> {
  /// Assuming multiple selections
  @BuiltValueField(wireName: r'genre_id')
  BuiltList<String>? get genreId;

  ProfileSelectSongGenresMutation._();

  factory ProfileSelectSongGenresMutation([void updates(ProfileSelectSongGenresMutationBuilder b)]) = _$ProfileSelectSongGenresMutation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileSelectSongGenresMutationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProfileSelectSongGenresMutation> get serializer => _$ProfileSelectSongGenresMutationSerializer();
}

class _$ProfileSelectSongGenresMutationSerializer implements PrimitiveSerializer<ProfileSelectSongGenresMutation> {
  @override
  final Iterable<Type> types = const [ProfileSelectSongGenresMutation, _$ProfileSelectSongGenresMutation];

  @override
  final String wireName = r'ProfileSelectSongGenresMutation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProfileSelectSongGenresMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.genreId != null) {
      yield r'genre_id';
      yield serializers.serialize(
        object.genreId,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProfileSelectSongGenresMutation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProfileSelectSongGenresMutationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'genre_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.genreId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProfileSelectSongGenresMutation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileSelectSongGenresMutationBuilder();
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

