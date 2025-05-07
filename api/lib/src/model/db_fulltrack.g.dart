// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_fulltrack.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbFulltrack extends DbFulltrack {
  @override
  final String? albumId;
  @override
  final String? albumImageUrl;
  @override
  final String? albumName;
  @override
  final String? albumReleaseDate;
  @override
  final String? artistId;
  @override
  final String? artistName;
  @override
  final PgtypeInt4? discNumber;
  @override
  final int? durationMs;
  @override
  final bool? explicit;
  @override
  final String? id;
  @override
  final String? isrc;
  @override
  final String? name;
  @override
  final PgtypeInt4? popularity;
  @override
  final String? previewUrl;
  @override
  final String? spotifyUrl;
  @override
  final PgtypeInt4? trackNumber;

  factory _$DbFulltrack([void Function(DbFulltrackBuilder)? updates]) =>
      (new DbFulltrackBuilder()..update(updates))._build();

  _$DbFulltrack._(
      {this.albumId,
      this.albumImageUrl,
      this.albumName,
      this.albumReleaseDate,
      this.artistId,
      this.artistName,
      this.discNumber,
      this.durationMs,
      this.explicit,
      this.id,
      this.isrc,
      this.name,
      this.popularity,
      this.previewUrl,
      this.spotifyUrl,
      this.trackNumber})
      : super._();

  @override
  DbFulltrack rebuild(void Function(DbFulltrackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbFulltrackBuilder toBuilder() => new DbFulltrackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbFulltrack &&
        albumId == other.albumId &&
        albumImageUrl == other.albumImageUrl &&
        albumName == other.albumName &&
        albumReleaseDate == other.albumReleaseDate &&
        artistId == other.artistId &&
        artistName == other.artistName &&
        discNumber == other.discNumber &&
        durationMs == other.durationMs &&
        explicit == other.explicit &&
        id == other.id &&
        isrc == other.isrc &&
        name == other.name &&
        popularity == other.popularity &&
        previewUrl == other.previewUrl &&
        spotifyUrl == other.spotifyUrl &&
        trackNumber == other.trackNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, albumId.hashCode);
    _$hash = $jc(_$hash, albumImageUrl.hashCode);
    _$hash = $jc(_$hash, albumName.hashCode);
    _$hash = $jc(_$hash, albumReleaseDate.hashCode);
    _$hash = $jc(_$hash, artistId.hashCode);
    _$hash = $jc(_$hash, artistName.hashCode);
    _$hash = $jc(_$hash, discNumber.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, explicit.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isrc.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, previewUrl.hashCode);
    _$hash = $jc(_$hash, spotifyUrl.hashCode);
    _$hash = $jc(_$hash, trackNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbFulltrack')
          ..add('albumId', albumId)
          ..add('albumImageUrl', albumImageUrl)
          ..add('albumName', albumName)
          ..add('albumReleaseDate', albumReleaseDate)
          ..add('artistId', artistId)
          ..add('artistName', artistName)
          ..add('discNumber', discNumber)
          ..add('durationMs', durationMs)
          ..add('explicit', explicit)
          ..add('id', id)
          ..add('isrc', isrc)
          ..add('name', name)
          ..add('popularity', popularity)
          ..add('previewUrl', previewUrl)
          ..add('spotifyUrl', spotifyUrl)
          ..add('trackNumber', trackNumber))
        .toString();
  }
}

class DbFulltrackBuilder implements Builder<DbFulltrack, DbFulltrackBuilder> {
  _$DbFulltrack? _$v;

  String? _albumId;
  String? get albumId => _$this._albumId;
  set albumId(String? albumId) => _$this._albumId = albumId;

  String? _albumImageUrl;
  String? get albumImageUrl => _$this._albumImageUrl;
  set albumImageUrl(String? albumImageUrl) =>
      _$this._albumImageUrl = albumImageUrl;

  String? _albumName;
  String? get albumName => _$this._albumName;
  set albumName(String? albumName) => _$this._albumName = albumName;

  String? _albumReleaseDate;
  String? get albumReleaseDate => _$this._albumReleaseDate;
  set albumReleaseDate(String? albumReleaseDate) =>
      _$this._albumReleaseDate = albumReleaseDate;

  String? _artistId;
  String? get artistId => _$this._artistId;
  set artistId(String? artistId) => _$this._artistId = artistId;

  String? _artistName;
  String? get artistName => _$this._artistName;
  set artistName(String? artistName) => _$this._artistName = artistName;

  PgtypeInt4Builder? _discNumber;
  PgtypeInt4Builder get discNumber =>
      _$this._discNumber ??= new PgtypeInt4Builder();
  set discNumber(PgtypeInt4Builder? discNumber) =>
      _$this._discNumber = discNumber;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  bool? _explicit;
  bool? get explicit => _$this._explicit;
  set explicit(bool? explicit) => _$this._explicit = explicit;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _isrc;
  String? get isrc => _$this._isrc;
  set isrc(String? isrc) => _$this._isrc = isrc;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PgtypeInt4Builder? _popularity;
  PgtypeInt4Builder get popularity =>
      _$this._popularity ??= new PgtypeInt4Builder();
  set popularity(PgtypeInt4Builder? popularity) =>
      _$this._popularity = popularity;

  String? _previewUrl;
  String? get previewUrl => _$this._previewUrl;
  set previewUrl(String? previewUrl) => _$this._previewUrl = previewUrl;

  String? _spotifyUrl;
  String? get spotifyUrl => _$this._spotifyUrl;
  set spotifyUrl(String? spotifyUrl) => _$this._spotifyUrl = spotifyUrl;

  PgtypeInt4Builder? _trackNumber;
  PgtypeInt4Builder get trackNumber =>
      _$this._trackNumber ??= new PgtypeInt4Builder();
  set trackNumber(PgtypeInt4Builder? trackNumber) =>
      _$this._trackNumber = trackNumber;

  DbFulltrackBuilder() {
    DbFulltrack._defaults(this);
  }

  DbFulltrackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _albumId = $v.albumId;
      _albumImageUrl = $v.albumImageUrl;
      _albumName = $v.albumName;
      _albumReleaseDate = $v.albumReleaseDate;
      _artistId = $v.artistId;
      _artistName = $v.artistName;
      _discNumber = $v.discNumber?.toBuilder();
      _durationMs = $v.durationMs;
      _explicit = $v.explicit;
      _id = $v.id;
      _isrc = $v.isrc;
      _name = $v.name;
      _popularity = $v.popularity?.toBuilder();
      _previewUrl = $v.previewUrl;
      _spotifyUrl = $v.spotifyUrl;
      _trackNumber = $v.trackNumber?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbFulltrack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbFulltrack;
  }

  @override
  void update(void Function(DbFulltrackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbFulltrack build() => _build();

  _$DbFulltrack _build() {
    _$DbFulltrack _$result;
    try {
      _$result = _$v ??
          new _$DbFulltrack._(
            albumId: albumId,
            albumImageUrl: albumImageUrl,
            albumName: albumName,
            albumReleaseDate: albumReleaseDate,
            artistId: artistId,
            artistName: artistName,
            discNumber: _discNumber?.build(),
            durationMs: durationMs,
            explicit: explicit,
            id: id,
            isrc: isrc,
            name: name,
            popularity: _popularity?.build(),
            previewUrl: previewUrl,
            spotifyUrl: spotifyUrl,
            trackNumber: _trackNumber?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'discNumber';
        _discNumber?.build();

        _$failedField = 'popularity';
        _popularity?.build();

        _$failedField = 'trackNumber';
        _trackNumber?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DbFulltrack', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
