// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists_full_playlist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaylistsFullPlaylist extends PlaylistsFullPlaylist {
  @override
  final DbPlaylist? playlist;
  @override
  final BuiltList<DbFulltrack>? tracks;

  factory _$PlaylistsFullPlaylist(
          [void Function(PlaylistsFullPlaylistBuilder)? updates]) =>
      (new PlaylistsFullPlaylistBuilder()..update(updates))._build();

  _$PlaylistsFullPlaylist._({this.playlist, this.tracks}) : super._();

  @override
  PlaylistsFullPlaylist rebuild(
          void Function(PlaylistsFullPlaylistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistsFullPlaylistBuilder toBuilder() =>
      new PlaylistsFullPlaylistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaylistsFullPlaylist &&
        playlist == other.playlist &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playlist.hashCode);
    _$hash = $jc(_$hash, tracks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaylistsFullPlaylist')
          ..add('playlist', playlist)
          ..add('tracks', tracks))
        .toString();
  }
}

class PlaylistsFullPlaylistBuilder
    implements Builder<PlaylistsFullPlaylist, PlaylistsFullPlaylistBuilder> {
  _$PlaylistsFullPlaylist? _$v;

  DbPlaylistBuilder? _playlist;
  DbPlaylistBuilder get playlist =>
      _$this._playlist ??= new DbPlaylistBuilder();
  set playlist(DbPlaylistBuilder? playlist) => _$this._playlist = playlist;

  ListBuilder<DbFulltrack>? _tracks;
  ListBuilder<DbFulltrack> get tracks =>
      _$this._tracks ??= new ListBuilder<DbFulltrack>();
  set tracks(ListBuilder<DbFulltrack>? tracks) => _$this._tracks = tracks;

  PlaylistsFullPlaylistBuilder() {
    PlaylistsFullPlaylist._defaults(this);
  }

  PlaylistsFullPlaylistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playlist = $v.playlist?.toBuilder();
      _tracks = $v.tracks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaylistsFullPlaylist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaylistsFullPlaylist;
  }

  @override
  void update(void Function(PlaylistsFullPlaylistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaylistsFullPlaylist build() => _build();

  _$PlaylistsFullPlaylist _build() {
    _$PlaylistsFullPlaylist _$result;
    try {
      _$result = _$v ??
          new _$PlaylistsFullPlaylist._(
            playlist: _playlist?.build(),
            tracks: _tracks?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'playlist';
        _playlist?.build();
        _$failedField = 'tracks';
        _tracks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlaylistsFullPlaylist', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
