// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_playlist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbPlaylist extends DbPlaylist {
  @override
  final String? createdAt;
  @override
  final String? id;
  @override
  final int? month;
  @override
  final String? title;
  @override
  final String? userId;
  @override
  final int? year;

  factory _$DbPlaylist([void Function(DbPlaylistBuilder)? updates]) =>
      (new DbPlaylistBuilder()..update(updates))._build();

  _$DbPlaylist._(
      {this.createdAt, this.id, this.month, this.title, this.userId, this.year})
      : super._();

  @override
  DbPlaylist rebuild(void Function(DbPlaylistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbPlaylistBuilder toBuilder() => new DbPlaylistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbPlaylist &&
        createdAt == other.createdAt &&
        id == other.id &&
        month == other.month &&
        title == other.title &&
        userId == other.userId &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbPlaylist')
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('month', month)
          ..add('title', title)
          ..add('userId', userId)
          ..add('year', year))
        .toString();
  }
}

class DbPlaylistBuilder implements Builder<DbPlaylist, DbPlaylistBuilder> {
  _$DbPlaylist? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  DbPlaylistBuilder() {
    DbPlaylist._defaults(this);
  }

  DbPlaylistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _id = $v.id;
      _month = $v.month;
      _title = $v.title;
      _userId = $v.userId;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbPlaylist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbPlaylist;
  }

  @override
  void update(void Function(DbPlaylistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbPlaylist build() => _build();

  _$DbPlaylist _build() {
    final _$result = _$v ??
        new _$DbPlaylist._(
          createdAt: createdAt,
          id: id,
          month: month,
          title: title,
          userId: userId,
          year: year,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
