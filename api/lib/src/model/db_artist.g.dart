// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_artist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbArtist extends DbArtist {
  @override
  final String? createdAt;
  @override
  final String? id;
  @override
  final String? imageUrl;
  @override
  final String? name;
  @override
  final String? spotifyId;
  @override
  final String? updatedAt;

  factory _$DbArtist([void Function(DbArtistBuilder)? updates]) =>
      (new DbArtistBuilder()..update(updates))._build();

  _$DbArtist._(
      {this.createdAt,
      this.id,
      this.imageUrl,
      this.name,
      this.spotifyId,
      this.updatedAt})
      : super._();

  @override
  DbArtist rebuild(void Function(DbArtistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbArtistBuilder toBuilder() => new DbArtistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbArtist &&
        createdAt == other.createdAt &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        spotifyId == other.spotifyId &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, spotifyId.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbArtist')
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('spotifyId', spotifyId)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class DbArtistBuilder implements Builder<DbArtist, DbArtistBuilder> {
  _$DbArtist? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _spotifyId;
  String? get spotifyId => _$this._spotifyId;
  set spotifyId(String? spotifyId) => _$this._spotifyId = spotifyId;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  DbArtistBuilder() {
    DbArtist._defaults(this);
  }

  DbArtistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _id = $v.id;
      _imageUrl = $v.imageUrl;
      _name = $v.name;
      _spotifyId = $v.spotifyId;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbArtist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbArtist;
  }

  @override
  void update(void Function(DbArtistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbArtist build() => _build();

  _$DbArtist _build() {
    final _$result = _$v ??
        new _$DbArtist._(
          createdAt: createdAt,
          id: id,
          imageUrl: imageUrl,
          name: name,
          spotifyId: spotifyId,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
