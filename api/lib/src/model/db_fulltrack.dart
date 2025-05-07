//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:moodbeat_core/src/model/pgtype_int4.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_fulltrack.g.dart';

/// DbFulltrack
///
/// Properties:
/// * [albumId] 
/// * [albumImageUrl] 
/// * [albumName] 
/// * [albumReleaseDate] 
/// * [artistId] 
/// * [artistName] 
/// * [discNumber] 
/// * [durationMs] 
/// * [explicit] 
/// * [id] 
/// * [isrc] 
/// * [name] 
/// * [popularity] 
/// * [previewUrl] 
/// * [spotifyUrl] 
/// * [trackNumber] 
@BuiltValue()
abstract class DbFulltrack implements Built<DbFulltrack, DbFulltrackBuilder> {
  @BuiltValueField(wireName: r'albumId')
  String? get albumId;

  @BuiltValueField(wireName: r'albumImageUrl')
  String? get albumImageUrl;

  @BuiltValueField(wireName: r'albumName')
  String? get albumName;

  @BuiltValueField(wireName: r'albumReleaseDate')
  String? get albumReleaseDate;

  @BuiltValueField(wireName: r'artistId')
  String? get artistId;

  @BuiltValueField(wireName: r'artistName')
  String? get artistName;

  @BuiltValueField(wireName: r'discNumber')
  PgtypeInt4? get discNumber;

  @BuiltValueField(wireName: r'durationMs')
  int? get durationMs;

  @BuiltValueField(wireName: r'explicit')
  bool? get explicit;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'isrc')
  String? get isrc;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'popularity')
  PgtypeInt4? get popularity;

  @BuiltValueField(wireName: r'previewUrl')
  String? get previewUrl;

  @BuiltValueField(wireName: r'spotifyUrl')
  String? get spotifyUrl;

  @BuiltValueField(wireName: r'trackNumber')
  PgtypeInt4? get trackNumber;

  DbFulltrack._();

  factory DbFulltrack([void updates(DbFulltrackBuilder b)]) = _$DbFulltrack;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbFulltrackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbFulltrack> get serializer => _$DbFulltrackSerializer();
}

class _$DbFulltrackSerializer implements PrimitiveSerializer<DbFulltrack> {
  @override
  final Iterable<Type> types = const [DbFulltrack, _$DbFulltrack];

  @override
  final String wireName = r'DbFulltrack';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbFulltrack object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.albumId != null) {
      yield r'albumId';
      yield serializers.serialize(
        object.albumId,
        specifiedType: const FullType(String),
      );
    }
    if (object.albumImageUrl != null) {
      yield r'albumImageUrl';
      yield serializers.serialize(
        object.albumImageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.albumName != null) {
      yield r'albumName';
      yield serializers.serialize(
        object.albumName,
        specifiedType: const FullType(String),
      );
    }
    if (object.albumReleaseDate != null) {
      yield r'albumReleaseDate';
      yield serializers.serialize(
        object.albumReleaseDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.artistId != null) {
      yield r'artistId';
      yield serializers.serialize(
        object.artistId,
        specifiedType: const FullType(String),
      );
    }
    if (object.artistName != null) {
      yield r'artistName';
      yield serializers.serialize(
        object.artistName,
        specifiedType: const FullType(String),
      );
    }
    if (object.discNumber != null) {
      yield r'discNumber';
      yield serializers.serialize(
        object.discNumber,
        specifiedType: const FullType(PgtypeInt4),
      );
    }
    if (object.durationMs != null) {
      yield r'durationMs';
      yield serializers.serialize(
        object.durationMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.explicit != null) {
      yield r'explicit';
      yield serializers.serialize(
        object.explicit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.isrc != null) {
      yield r'isrc';
      yield serializers.serialize(
        object.isrc,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.popularity != null) {
      yield r'popularity';
      yield serializers.serialize(
        object.popularity,
        specifiedType: const FullType(PgtypeInt4),
      );
    }
    if (object.previewUrl != null) {
      yield r'previewUrl';
      yield serializers.serialize(
        object.previewUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.spotifyUrl != null) {
      yield r'spotifyUrl';
      yield serializers.serialize(
        object.spotifyUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.trackNumber != null) {
      yield r'trackNumber';
      yield serializers.serialize(
        object.trackNumber,
        specifiedType: const FullType(PgtypeInt4),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbFulltrack object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbFulltrackBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'albumId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.albumId = valueDes;
          break;
        case r'albumImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.albumImageUrl = valueDes;
          break;
        case r'albumName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.albumName = valueDes;
          break;
        case r'albumReleaseDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.albumReleaseDate = valueDes;
          break;
        case r'artistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.artistId = valueDes;
          break;
        case r'artistName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.artistName = valueDes;
          break;
        case r'discNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PgtypeInt4),
          ) as PgtypeInt4;
          result.discNumber.replace(valueDes);
          break;
        case r'durationMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationMs = valueDes;
          break;
        case r'explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.explicit = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'isrc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isrc = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'popularity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PgtypeInt4),
          ) as PgtypeInt4;
          result.popularity.replace(valueDes);
          break;
        case r'previewUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.previewUrl = valueDes;
          break;
        case r'spotifyUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spotifyUrl = valueDes;
          break;
        case r'trackNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PgtypeInt4),
          ) as PgtypeInt4;
          result.trackNumber.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbFulltrack deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbFulltrackBuilder();
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

