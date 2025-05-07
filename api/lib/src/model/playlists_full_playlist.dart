//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:moodbeat_core/src/model/db_fulltrack.dart';
import 'package:moodbeat_core/src/model/db_playlist.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlists_full_playlist.g.dart';

/// PlaylistsFullPlaylist
///
/// Properties:
/// * [playlist] 
/// * [tracks] 
@BuiltValue()
abstract class PlaylistsFullPlaylist implements Built<PlaylistsFullPlaylist, PlaylistsFullPlaylistBuilder> {
  @BuiltValueField(wireName: r'playlist')
  DbPlaylist? get playlist;

  @BuiltValueField(wireName: r'tracks')
  BuiltList<DbFulltrack>? get tracks;

  PlaylistsFullPlaylist._();

  factory PlaylistsFullPlaylist([void updates(PlaylistsFullPlaylistBuilder b)]) = _$PlaylistsFullPlaylist;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaylistsFullPlaylistBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaylistsFullPlaylist> get serializer => _$PlaylistsFullPlaylistSerializer();
}

class _$PlaylistsFullPlaylistSerializer implements PrimitiveSerializer<PlaylistsFullPlaylist> {
  @override
  final Iterable<Type> types = const [PlaylistsFullPlaylist, _$PlaylistsFullPlaylist];

  @override
  final String wireName = r'PlaylistsFullPlaylist';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaylistsFullPlaylist object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.playlist != null) {
      yield r'playlist';
      yield serializers.serialize(
        object.playlist,
        specifiedType: const FullType(DbPlaylist),
      );
    }
    if (object.tracks != null) {
      yield r'tracks';
      yield serializers.serialize(
        object.tracks,
        specifiedType: const FullType(BuiltList, [FullType(DbFulltrack)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaylistsFullPlaylist object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlaylistsFullPlaylistBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'playlist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DbPlaylist),
          ) as DbPlaylist;
          result.playlist.replace(valueDes);
          break;
        case r'tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DbFulltrack)]),
          ) as BuiltList<DbFulltrack>;
          result.tracks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaylistsFullPlaylist deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaylistsFullPlaylistBuilder();
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

