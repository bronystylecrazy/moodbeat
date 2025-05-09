// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_get_user_selected_artists_row.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbGetUserSelectedArtistsRow extends DbGetUserSelectedArtistsRow {
  @override
  final String? artistId;
  @override
  final String? artistImageUrl;
  @override
  final String? artistName;
  @override
  final bool? hidden;
  @override
  final String? selectedAt;

  factory _$DbGetUserSelectedArtistsRow(
          [void Function(DbGetUserSelectedArtistsRowBuilder)? updates]) =>
      (new DbGetUserSelectedArtistsRowBuilder()..update(updates))._build();

  _$DbGetUserSelectedArtistsRow._(
      {this.artistId,
      this.artistImageUrl,
      this.artistName,
      this.hidden,
      this.selectedAt})
      : super._();

  @override
  DbGetUserSelectedArtistsRow rebuild(
          void Function(DbGetUserSelectedArtistsRowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbGetUserSelectedArtistsRowBuilder toBuilder() =>
      new DbGetUserSelectedArtistsRowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbGetUserSelectedArtistsRow &&
        artistId == other.artistId &&
        artistImageUrl == other.artistImageUrl &&
        artistName == other.artistName &&
        hidden == other.hidden &&
        selectedAt == other.selectedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, artistId.hashCode);
    _$hash = $jc(_$hash, artistImageUrl.hashCode);
    _$hash = $jc(_$hash, artistName.hashCode);
    _$hash = $jc(_$hash, hidden.hashCode);
    _$hash = $jc(_$hash, selectedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbGetUserSelectedArtistsRow')
          ..add('artistId', artistId)
          ..add('artistImageUrl', artistImageUrl)
          ..add('artistName', artistName)
          ..add('hidden', hidden)
          ..add('selectedAt', selectedAt))
        .toString();
  }
}

class DbGetUserSelectedArtistsRowBuilder
    implements
        Builder<DbGetUserSelectedArtistsRow,
            DbGetUserSelectedArtistsRowBuilder> {
  _$DbGetUserSelectedArtistsRow? _$v;

  String? _artistId;
  String? get artistId => _$this._artistId;
  set artistId(String? artistId) => _$this._artistId = artistId;

  String? _artistImageUrl;
  String? get artistImageUrl => _$this._artistImageUrl;
  set artistImageUrl(String? artistImageUrl) =>
      _$this._artistImageUrl = artistImageUrl;

  String? _artistName;
  String? get artistName => _$this._artistName;
  set artistName(String? artistName) => _$this._artistName = artistName;

  bool? _hidden;
  bool? get hidden => _$this._hidden;
  set hidden(bool? hidden) => _$this._hidden = hidden;

  String? _selectedAt;
  String? get selectedAt => _$this._selectedAt;
  set selectedAt(String? selectedAt) => _$this._selectedAt = selectedAt;

  DbGetUserSelectedArtistsRowBuilder() {
    DbGetUserSelectedArtistsRow._defaults(this);
  }

  DbGetUserSelectedArtistsRowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _artistId = $v.artistId;
      _artistImageUrl = $v.artistImageUrl;
      _artistName = $v.artistName;
      _hidden = $v.hidden;
      _selectedAt = $v.selectedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbGetUserSelectedArtistsRow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbGetUserSelectedArtistsRow;
  }

  @override
  void update(void Function(DbGetUserSelectedArtistsRowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbGetUserSelectedArtistsRow build() => _build();

  _$DbGetUserSelectedArtistsRow _build() {
    final _$result = _$v ??
        new _$DbGetUserSelectedArtistsRow._(
          artistId: artistId,
          artistImageUrl: artistImageUrl,
          artistName: artistName,
          hidden: hidden,
          selectedAt: selectedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
