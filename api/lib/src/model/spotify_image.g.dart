// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotifyImage extends SpotifyImage {
  @override
  final int? height;
  @override
  final String? url;
  @override
  final int? width;

  factory _$SpotifyImage([void Function(SpotifyImageBuilder)? updates]) =>
      (new SpotifyImageBuilder()..update(updates))._build();

  _$SpotifyImage._({this.height, this.url, this.width}) : super._();

  @override
  SpotifyImage rebuild(void Function(SpotifyImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotifyImageBuilder toBuilder() => new SpotifyImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotifyImage &&
        height == other.height &&
        url == other.url &&
        width == other.width;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpotifyImage')
          ..add('height', height)
          ..add('url', url)
          ..add('width', width))
        .toString();
  }
}

class SpotifyImageBuilder
    implements Builder<SpotifyImage, SpotifyImageBuilder> {
  _$SpotifyImage? _$v;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  SpotifyImageBuilder() {
    SpotifyImage._defaults(this);
  }

  SpotifyImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _height = $v.height;
      _url = $v.url;
      _width = $v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotifyImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotifyImage;
  }

  @override
  void update(void Function(SpotifyImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotifyImage build() => _build();

  _$SpotifyImage _build() {
    final _$result = _$v ??
        new _$SpotifyImage._(
          height: height,
          url: url,
          width: width,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
