// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_simple_album.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotifySimpleAlbum extends SpotifySimpleAlbum {
  @override
  final String? albumGroup;
  @override
  final String? albumType;
  @override
  final BuiltList<SpotifySimpleArtist>? artists;
  @override
  final BuiltList<String>? availableMarkets;
  @override
  final BuiltMap<String, String>? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final BuiltList<SpotifyImage>? images;
  @override
  final String? name;
  @override
  final String? releaseDate;
  @override
  final String? releaseDatePrecision;
  @override
  final int? totalTracks;
  @override
  final String? uri;

  factory _$SpotifySimpleAlbum(
          [void Function(SpotifySimpleAlbumBuilder)? updates]) =>
      (new SpotifySimpleAlbumBuilder()..update(updates))._build();

  _$SpotifySimpleAlbum._(
      {this.albumGroup,
      this.albumType,
      this.artists,
      this.availableMarkets,
      this.externalUrls,
      this.href,
      this.id,
      this.images,
      this.name,
      this.releaseDate,
      this.releaseDatePrecision,
      this.totalTracks,
      this.uri})
      : super._();

  @override
  SpotifySimpleAlbum rebuild(
          void Function(SpotifySimpleAlbumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotifySimpleAlbumBuilder toBuilder() =>
      new SpotifySimpleAlbumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotifySimpleAlbum &&
        albumGroup == other.albumGroup &&
        albumType == other.albumType &&
        artists == other.artists &&
        availableMarkets == other.availableMarkets &&
        externalUrls == other.externalUrls &&
        href == other.href &&
        id == other.id &&
        images == other.images &&
        name == other.name &&
        releaseDate == other.releaseDate &&
        releaseDatePrecision == other.releaseDatePrecision &&
        totalTracks == other.totalTracks &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, albumGroup.hashCode);
    _$hash = $jc(_$hash, albumType.hashCode);
    _$hash = $jc(_$hash, artists.hashCode);
    _$hash = $jc(_$hash, availableMarkets.hashCode);
    _$hash = $jc(_$hash, externalUrls.hashCode);
    _$hash = $jc(_$hash, href.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, releaseDatePrecision.hashCode);
    _$hash = $jc(_$hash, totalTracks.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpotifySimpleAlbum')
          ..add('albumGroup', albumGroup)
          ..add('albumType', albumType)
          ..add('artists', artists)
          ..add('availableMarkets', availableMarkets)
          ..add('externalUrls', externalUrls)
          ..add('href', href)
          ..add('id', id)
          ..add('images', images)
          ..add('name', name)
          ..add('releaseDate', releaseDate)
          ..add('releaseDatePrecision', releaseDatePrecision)
          ..add('totalTracks', totalTracks)
          ..add('uri', uri))
        .toString();
  }
}

class SpotifySimpleAlbumBuilder
    implements Builder<SpotifySimpleAlbum, SpotifySimpleAlbumBuilder> {
  _$SpotifySimpleAlbum? _$v;

  String? _albumGroup;
  String? get albumGroup => _$this._albumGroup;
  set albumGroup(String? albumGroup) => _$this._albumGroup = albumGroup;

  String? _albumType;
  String? get albumType => _$this._albumType;
  set albumType(String? albumType) => _$this._albumType = albumType;

  ListBuilder<SpotifySimpleArtist>? _artists;
  ListBuilder<SpotifySimpleArtist> get artists =>
      _$this._artists ??= new ListBuilder<SpotifySimpleArtist>();
  set artists(ListBuilder<SpotifySimpleArtist>? artists) =>
      _$this._artists = artists;

  ListBuilder<String>? _availableMarkets;
  ListBuilder<String> get availableMarkets =>
      _$this._availableMarkets ??= new ListBuilder<String>();
  set availableMarkets(ListBuilder<String>? availableMarkets) =>
      _$this._availableMarkets = availableMarkets;

  MapBuilder<String, String>? _externalUrls;
  MapBuilder<String, String> get externalUrls =>
      _$this._externalUrls ??= new MapBuilder<String, String>();
  set externalUrls(MapBuilder<String, String>? externalUrls) =>
      _$this._externalUrls = externalUrls;

  String? _href;
  String? get href => _$this._href;
  set href(String? href) => _$this._href = href;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<SpotifyImage>? _images;
  ListBuilder<SpotifyImage> get images =>
      _$this._images ??= new ListBuilder<SpotifyImage>();
  set images(ListBuilder<SpotifyImage>? images) => _$this._images = images;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  String? _releaseDatePrecision;
  String? get releaseDatePrecision => _$this._releaseDatePrecision;
  set releaseDatePrecision(String? releaseDatePrecision) =>
      _$this._releaseDatePrecision = releaseDatePrecision;

  int? _totalTracks;
  int? get totalTracks => _$this._totalTracks;
  set totalTracks(int? totalTracks) => _$this._totalTracks = totalTracks;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  SpotifySimpleAlbumBuilder() {
    SpotifySimpleAlbum._defaults(this);
  }

  SpotifySimpleAlbumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _albumGroup = $v.albumGroup;
      _albumType = $v.albumType;
      _artists = $v.artists?.toBuilder();
      _availableMarkets = $v.availableMarkets?.toBuilder();
      _externalUrls = $v.externalUrls?.toBuilder();
      _href = $v.href;
      _id = $v.id;
      _images = $v.images?.toBuilder();
      _name = $v.name;
      _releaseDate = $v.releaseDate;
      _releaseDatePrecision = $v.releaseDatePrecision;
      _totalTracks = $v.totalTracks;
      _uri = $v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotifySimpleAlbum other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotifySimpleAlbum;
  }

  @override
  void update(void Function(SpotifySimpleAlbumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotifySimpleAlbum build() => _build();

  _$SpotifySimpleAlbum _build() {
    _$SpotifySimpleAlbum _$result;
    try {
      _$result = _$v ??
          new _$SpotifySimpleAlbum._(
            albumGroup: albumGroup,
            albumType: albumType,
            artists: _artists?.build(),
            availableMarkets: _availableMarkets?.build(),
            externalUrls: _externalUrls?.build(),
            href: href,
            id: id,
            images: _images?.build(),
            name: name,
            releaseDate: releaseDate,
            releaseDatePrecision: releaseDatePrecision,
            totalTracks: totalTracks,
            uri: uri,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'artists';
        _artists?.build();
        _$failedField = 'availableMarkets';
        _availableMarkets?.build();
        _$failedField = 'externalUrls';
        _externalUrls?.build();

        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotifySimpleAlbum', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
