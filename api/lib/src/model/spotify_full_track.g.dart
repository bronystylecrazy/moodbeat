// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_full_track.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotifyFullTrack extends SpotifyFullTrack {
  @override
  final SpotifySimpleAlbum? album;
  @override
  final BuiltList<SpotifySimpleArtist>? artists;
  @override
  final BuiltList<String>? availableMarkets;
  @override
  final int? discNumber;
  @override
  final int? durationMs;
  @override
  final bool? explicit;
  @override
  final BuiltMap<String, String>? externalIds;
  @override
  final BuiltMap<String, String>? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final bool? isPlayable;
  @override
  final SpotifyLinkedFromInfo? linkedFrom;
  @override
  final String? name;
  @override
  final int? popularity;
  @override
  final String? previewUrl;
  @override
  final int? trackNumber;
  @override
  final String? type;
  @override
  final String? uri;

  factory _$SpotifyFullTrack(
          [void Function(SpotifyFullTrackBuilder)? updates]) =>
      (new SpotifyFullTrackBuilder()..update(updates))._build();

  _$SpotifyFullTrack._(
      {this.album,
      this.artists,
      this.availableMarkets,
      this.discNumber,
      this.durationMs,
      this.explicit,
      this.externalIds,
      this.externalUrls,
      this.href,
      this.id,
      this.isPlayable,
      this.linkedFrom,
      this.name,
      this.popularity,
      this.previewUrl,
      this.trackNumber,
      this.type,
      this.uri})
      : super._();

  @override
  SpotifyFullTrack rebuild(void Function(SpotifyFullTrackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotifyFullTrackBuilder toBuilder() =>
      new SpotifyFullTrackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotifyFullTrack &&
        album == other.album &&
        artists == other.artists &&
        availableMarkets == other.availableMarkets &&
        discNumber == other.discNumber &&
        durationMs == other.durationMs &&
        explicit == other.explicit &&
        externalIds == other.externalIds &&
        externalUrls == other.externalUrls &&
        href == other.href &&
        id == other.id &&
        isPlayable == other.isPlayable &&
        linkedFrom == other.linkedFrom &&
        name == other.name &&
        popularity == other.popularity &&
        previewUrl == other.previewUrl &&
        trackNumber == other.trackNumber &&
        type == other.type &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, album.hashCode);
    _$hash = $jc(_$hash, artists.hashCode);
    _$hash = $jc(_$hash, availableMarkets.hashCode);
    _$hash = $jc(_$hash, discNumber.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, explicit.hashCode);
    _$hash = $jc(_$hash, externalIds.hashCode);
    _$hash = $jc(_$hash, externalUrls.hashCode);
    _$hash = $jc(_$hash, href.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isPlayable.hashCode);
    _$hash = $jc(_$hash, linkedFrom.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, previewUrl.hashCode);
    _$hash = $jc(_$hash, trackNumber.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpotifyFullTrack')
          ..add('album', album)
          ..add('artists', artists)
          ..add('availableMarkets', availableMarkets)
          ..add('discNumber', discNumber)
          ..add('durationMs', durationMs)
          ..add('explicit', explicit)
          ..add('externalIds', externalIds)
          ..add('externalUrls', externalUrls)
          ..add('href', href)
          ..add('id', id)
          ..add('isPlayable', isPlayable)
          ..add('linkedFrom', linkedFrom)
          ..add('name', name)
          ..add('popularity', popularity)
          ..add('previewUrl', previewUrl)
          ..add('trackNumber', trackNumber)
          ..add('type', type)
          ..add('uri', uri))
        .toString();
  }
}

class SpotifyFullTrackBuilder
    implements Builder<SpotifyFullTrack, SpotifyFullTrackBuilder> {
  _$SpotifyFullTrack? _$v;

  SpotifySimpleAlbumBuilder? _album;
  SpotifySimpleAlbumBuilder get album =>
      _$this._album ??= new SpotifySimpleAlbumBuilder();
  set album(SpotifySimpleAlbumBuilder? album) => _$this._album = album;

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

  int? _discNumber;
  int? get discNumber => _$this._discNumber;
  set discNumber(int? discNumber) => _$this._discNumber = discNumber;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  bool? _explicit;
  bool? get explicit => _$this._explicit;
  set explicit(bool? explicit) => _$this._explicit = explicit;

  MapBuilder<String, String>? _externalIds;
  MapBuilder<String, String> get externalIds =>
      _$this._externalIds ??= new MapBuilder<String, String>();
  set externalIds(MapBuilder<String, String>? externalIds) =>
      _$this._externalIds = externalIds;

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

  bool? _isPlayable;
  bool? get isPlayable => _$this._isPlayable;
  set isPlayable(bool? isPlayable) => _$this._isPlayable = isPlayable;

  SpotifyLinkedFromInfoBuilder? _linkedFrom;
  SpotifyLinkedFromInfoBuilder get linkedFrom =>
      _$this._linkedFrom ??= new SpotifyLinkedFromInfoBuilder();
  set linkedFrom(SpotifyLinkedFromInfoBuilder? linkedFrom) =>
      _$this._linkedFrom = linkedFrom;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  String? _previewUrl;
  String? get previewUrl => _$this._previewUrl;
  set previewUrl(String? previewUrl) => _$this._previewUrl = previewUrl;

  int? _trackNumber;
  int? get trackNumber => _$this._trackNumber;
  set trackNumber(int? trackNumber) => _$this._trackNumber = trackNumber;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  SpotifyFullTrackBuilder() {
    SpotifyFullTrack._defaults(this);
  }

  SpotifyFullTrackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _album = $v.album?.toBuilder();
      _artists = $v.artists?.toBuilder();
      _availableMarkets = $v.availableMarkets?.toBuilder();
      _discNumber = $v.discNumber;
      _durationMs = $v.durationMs;
      _explicit = $v.explicit;
      _externalIds = $v.externalIds?.toBuilder();
      _externalUrls = $v.externalUrls?.toBuilder();
      _href = $v.href;
      _id = $v.id;
      _isPlayable = $v.isPlayable;
      _linkedFrom = $v.linkedFrom?.toBuilder();
      _name = $v.name;
      _popularity = $v.popularity;
      _previewUrl = $v.previewUrl;
      _trackNumber = $v.trackNumber;
      _type = $v.type;
      _uri = $v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotifyFullTrack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotifyFullTrack;
  }

  @override
  void update(void Function(SpotifyFullTrackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotifyFullTrack build() => _build();

  _$SpotifyFullTrack _build() {
    _$SpotifyFullTrack _$result;
    try {
      _$result = _$v ??
          new _$SpotifyFullTrack._(
            album: _album?.build(),
            artists: _artists?.build(),
            availableMarkets: _availableMarkets?.build(),
            discNumber: discNumber,
            durationMs: durationMs,
            explicit: explicit,
            externalIds: _externalIds?.build(),
            externalUrls: _externalUrls?.build(),
            href: href,
            id: id,
            isPlayable: isPlayable,
            linkedFrom: _linkedFrom?.build(),
            name: name,
            popularity: popularity,
            previewUrl: previewUrl,
            trackNumber: trackNumber,
            type: type,
            uri: uri,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'album';
        _album?.build();
        _$failedField = 'artists';
        _artists?.build();
        _$failedField = 'availableMarkets';
        _availableMarkets?.build();

        _$failedField = 'externalIds';
        _externalIds?.build();
        _$failedField = 'externalUrls';
        _externalUrls?.build();

        _$failedField = 'linkedFrom';
        _linkedFrom?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotifyFullTrack', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
