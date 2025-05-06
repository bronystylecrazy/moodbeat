// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_simple_artist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotifySimpleArtist extends SpotifySimpleArtist {
  @override
  final BuiltMap<String, String>? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? uri;

  factory _$SpotifySimpleArtist(
          [void Function(SpotifySimpleArtistBuilder)? updates]) =>
      (new SpotifySimpleArtistBuilder()..update(updates))._build();

  _$SpotifySimpleArtist._(
      {this.externalUrls, this.href, this.id, this.name, this.uri})
      : super._();

  @override
  SpotifySimpleArtist rebuild(
          void Function(SpotifySimpleArtistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotifySimpleArtistBuilder toBuilder() =>
      new SpotifySimpleArtistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotifySimpleArtist &&
        externalUrls == other.externalUrls &&
        href == other.href &&
        id == other.id &&
        name == other.name &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, externalUrls.hashCode);
    _$hash = $jc(_$hash, href.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpotifySimpleArtist')
          ..add('externalUrls', externalUrls)
          ..add('href', href)
          ..add('id', id)
          ..add('name', name)
          ..add('uri', uri))
        .toString();
  }
}

class SpotifySimpleArtistBuilder
    implements Builder<SpotifySimpleArtist, SpotifySimpleArtistBuilder> {
  _$SpotifySimpleArtist? _$v;

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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  SpotifySimpleArtistBuilder() {
    SpotifySimpleArtist._defaults(this);
  }

  SpotifySimpleArtistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _externalUrls = $v.externalUrls?.toBuilder();
      _href = $v.href;
      _id = $v.id;
      _name = $v.name;
      _uri = $v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotifySimpleArtist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotifySimpleArtist;
  }

  @override
  void update(void Function(SpotifySimpleArtistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotifySimpleArtist build() => _build();

  _$SpotifySimpleArtist _build() {
    _$SpotifySimpleArtist _$result;
    try {
      _$result = _$v ??
          new _$SpotifySimpleArtist._(
            externalUrls: _externalUrls?.build(),
            href: href,
            id: id,
            name: name,
            uri: uri,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'externalUrls';
        _externalUrls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotifySimpleArtist', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
