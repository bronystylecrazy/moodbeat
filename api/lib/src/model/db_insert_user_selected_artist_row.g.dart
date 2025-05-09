// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_insert_user_selected_artist_row.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbInsertUserSelectedArtistRow extends DbInsertUserSelectedArtistRow {
  @override
  final String? artistId;
  @override
  final bool? hidden;
  @override
  final String? userId;

  factory _$DbInsertUserSelectedArtistRow(
          [void Function(DbInsertUserSelectedArtistRowBuilder)? updates]) =>
      (new DbInsertUserSelectedArtistRowBuilder()..update(updates))._build();

  _$DbInsertUserSelectedArtistRow._({this.artistId, this.hidden, this.userId})
      : super._();

  @override
  DbInsertUserSelectedArtistRow rebuild(
          void Function(DbInsertUserSelectedArtistRowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbInsertUserSelectedArtistRowBuilder toBuilder() =>
      new DbInsertUserSelectedArtistRowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbInsertUserSelectedArtistRow &&
        artistId == other.artistId &&
        hidden == other.hidden &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, artistId.hashCode);
    _$hash = $jc(_$hash, hidden.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbInsertUserSelectedArtistRow')
          ..add('artistId', artistId)
          ..add('hidden', hidden)
          ..add('userId', userId))
        .toString();
  }
}

class DbInsertUserSelectedArtistRowBuilder
    implements
        Builder<DbInsertUserSelectedArtistRow,
            DbInsertUserSelectedArtistRowBuilder> {
  _$DbInsertUserSelectedArtistRow? _$v;

  String? _artistId;
  String? get artistId => _$this._artistId;
  set artistId(String? artistId) => _$this._artistId = artistId;

  bool? _hidden;
  bool? get hidden => _$this._hidden;
  set hidden(bool? hidden) => _$this._hidden = hidden;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DbInsertUserSelectedArtistRowBuilder() {
    DbInsertUserSelectedArtistRow._defaults(this);
  }

  DbInsertUserSelectedArtistRowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _artistId = $v.artistId;
      _hidden = $v.hidden;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbInsertUserSelectedArtistRow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbInsertUserSelectedArtistRow;
  }

  @override
  void update(void Function(DbInsertUserSelectedArtistRowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbInsertUserSelectedArtistRow build() => _build();

  _$DbInsertUserSelectedArtistRow _build() {
    final _$result = _$v ??
        new _$DbInsertUserSelectedArtistRow._(
          artistId: artistId,
          hidden: hidden,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
