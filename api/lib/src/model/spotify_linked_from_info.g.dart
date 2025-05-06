// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_linked_from_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotifyLinkedFromInfo extends SpotifyLinkedFromInfo {
  @override
  final BuiltMap<String, String>? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? uri;

  factory _$SpotifyLinkedFromInfo(
          [void Function(SpotifyLinkedFromInfoBuilder)? updates]) =>
      (new SpotifyLinkedFromInfoBuilder()..update(updates))._build();

  _$SpotifyLinkedFromInfo._(
      {this.externalUrls, this.href, this.id, this.type, this.uri})
      : super._();

  @override
  SpotifyLinkedFromInfo rebuild(
          void Function(SpotifyLinkedFromInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotifyLinkedFromInfoBuilder toBuilder() =>
      new SpotifyLinkedFromInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotifyLinkedFromInfo &&
        externalUrls == other.externalUrls &&
        href == other.href &&
        id == other.id &&
        type == other.type &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, externalUrls.hashCode);
    _$hash = $jc(_$hash, href.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpotifyLinkedFromInfo')
          ..add('externalUrls', externalUrls)
          ..add('href', href)
          ..add('id', id)
          ..add('type', type)
          ..add('uri', uri))
        .toString();
  }
}

class SpotifyLinkedFromInfoBuilder
    implements Builder<SpotifyLinkedFromInfo, SpotifyLinkedFromInfoBuilder> {
  _$SpotifyLinkedFromInfo? _$v;

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

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  SpotifyLinkedFromInfoBuilder() {
    SpotifyLinkedFromInfo._defaults(this);
  }

  SpotifyLinkedFromInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _externalUrls = $v.externalUrls?.toBuilder();
      _href = $v.href;
      _id = $v.id;
      _type = $v.type;
      _uri = $v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotifyLinkedFromInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotifyLinkedFromInfo;
  }

  @override
  void update(void Function(SpotifyLinkedFromInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotifyLinkedFromInfo build() => _build();

  _$SpotifyLinkedFromInfo _build() {
    _$SpotifyLinkedFromInfo _$result;
    try {
      _$result = _$v ??
          new _$SpotifyLinkedFromInfo._(
            externalUrls: _externalUrls?.build(),
            href: href,
            id: id,
            type: type,
            uri: uri,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'externalUrls';
        _externalUrls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotifyLinkedFromInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
