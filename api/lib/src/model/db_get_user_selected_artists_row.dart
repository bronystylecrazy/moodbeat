//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'db_get_user_selected_artists_row.g.dart';

/// DbGetUserSelectedArtistsRow
///
/// Properties:
/// * [artistId] 
/// * [artistImageUrl] 
/// * [artistName] 
/// * [hidden] 
/// * [selectedAt] 
@BuiltValue()
abstract class DbGetUserSelectedArtistsRow implements Built<DbGetUserSelectedArtistsRow, DbGetUserSelectedArtistsRowBuilder> {
  @BuiltValueField(wireName: r'artistId')
  String? get artistId;

  @BuiltValueField(wireName: r'artistImageUrl')
  String? get artistImageUrl;

  @BuiltValueField(wireName: r'artistName')
  String? get artistName;

  @BuiltValueField(wireName: r'hidden')
  bool? get hidden;

  @BuiltValueField(wireName: r'selectedAt')
  String? get selectedAt;

  DbGetUserSelectedArtistsRow._();

  factory DbGetUserSelectedArtistsRow([void updates(DbGetUserSelectedArtistsRowBuilder b)]) = _$DbGetUserSelectedArtistsRow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DbGetUserSelectedArtistsRowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DbGetUserSelectedArtistsRow> get serializer => _$DbGetUserSelectedArtistsRowSerializer();
}

class _$DbGetUserSelectedArtistsRowSerializer implements PrimitiveSerializer<DbGetUserSelectedArtistsRow> {
  @override
  final Iterable<Type> types = const [DbGetUserSelectedArtistsRow, _$DbGetUserSelectedArtistsRow];

  @override
  final String wireName = r'DbGetUserSelectedArtistsRow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DbGetUserSelectedArtistsRow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.artistId != null) {
      yield r'artistId';
      yield serializers.serialize(
        object.artistId,
        specifiedType: const FullType(String),
      );
    }
    if (object.artistImageUrl != null) {
      yield r'artistImageUrl';
      yield serializers.serialize(
        object.artistImageUrl,
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
    if (object.hidden != null) {
      yield r'hidden';
      yield serializers.serialize(
        object.hidden,
        specifiedType: const FullType(bool),
      );
    }
    if (object.selectedAt != null) {
      yield r'selectedAt';
      yield serializers.serialize(
        object.selectedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DbGetUserSelectedArtistsRow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DbGetUserSelectedArtistsRowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'artistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.artistId = valueDes;
          break;
        case r'artistImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.artistImageUrl = valueDes;
          break;
        case r'artistName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.artistName = valueDes;
          break;
        case r'hidden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hidden = valueDes;
          break;
        case r'selectedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DbGetUserSelectedArtistsRow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DbGetUserSelectedArtistsRowBuilder();
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

