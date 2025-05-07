// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_track_external_ids.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotifyTrackExternalIDs extends SpotifyTrackExternalIDs {
  @override
  final String? ean;
  @override
  final String? isrc;
  @override
  final String? upc;

  factory _$SpotifyTrackExternalIDs(
          [void Function(SpotifyTrackExternalIDsBuilder)? updates]) =>
      (new SpotifyTrackExternalIDsBuilder()..update(updates))._build();

  _$SpotifyTrackExternalIDs._({this.ean, this.isrc, this.upc}) : super._();

  @override
  SpotifyTrackExternalIDs rebuild(
          void Function(SpotifyTrackExternalIDsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotifyTrackExternalIDsBuilder toBuilder() =>
      new SpotifyTrackExternalIDsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotifyTrackExternalIDs &&
        ean == other.ean &&
        isrc == other.isrc &&
        upc == other.upc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ean.hashCode);
    _$hash = $jc(_$hash, isrc.hashCode);
    _$hash = $jc(_$hash, upc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpotifyTrackExternalIDs')
          ..add('ean', ean)
          ..add('isrc', isrc)
          ..add('upc', upc))
        .toString();
  }
}

class SpotifyTrackExternalIDsBuilder
    implements
        Builder<SpotifyTrackExternalIDs, SpotifyTrackExternalIDsBuilder> {
  _$SpotifyTrackExternalIDs? _$v;

  String? _ean;
  String? get ean => _$this._ean;
  set ean(String? ean) => _$this._ean = ean;

  String? _isrc;
  String? get isrc => _$this._isrc;
  set isrc(String? isrc) => _$this._isrc = isrc;

  String? _upc;
  String? get upc => _$this._upc;
  set upc(String? upc) => _$this._upc = upc;

  SpotifyTrackExternalIDsBuilder() {
    SpotifyTrackExternalIDs._defaults(this);
  }

  SpotifyTrackExternalIDsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ean = $v.ean;
      _isrc = $v.isrc;
      _upc = $v.upc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotifyTrackExternalIDs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotifyTrackExternalIDs;
  }

  @override
  void update(void Function(SpotifyTrackExternalIDsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotifyTrackExternalIDs build() => _build();

  _$SpotifyTrackExternalIDs _build() {
    final _$result = _$v ??
        new _$SpotifyTrackExternalIDs._(
          ean: ean,
          isrc: isrc,
          upc: upc,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
