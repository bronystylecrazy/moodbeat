// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_user_selected_genre.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbUserSelectedGenre extends DbUserSelectedGenre {
  @override
  final String? createdAt;
  @override
  final String? genre;
  @override
  final String? id;
  @override
  final String? updatedAt;
  @override
  final String? userId;

  factory _$DbUserSelectedGenre(
          [void Function(DbUserSelectedGenreBuilder)? updates]) =>
      (new DbUserSelectedGenreBuilder()..update(updates))._build();

  _$DbUserSelectedGenre._(
      {this.createdAt, this.genre, this.id, this.updatedAt, this.userId})
      : super._();

  @override
  DbUserSelectedGenre rebuild(
          void Function(DbUserSelectedGenreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbUserSelectedGenreBuilder toBuilder() =>
      new DbUserSelectedGenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbUserSelectedGenre &&
        createdAt == other.createdAt &&
        genre == other.genre &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbUserSelectedGenre')
          ..add('createdAt', createdAt)
          ..add('genre', genre)
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('userId', userId))
        .toString();
  }
}

class DbUserSelectedGenreBuilder
    implements Builder<DbUserSelectedGenre, DbUserSelectedGenreBuilder> {
  _$DbUserSelectedGenre? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DbUserSelectedGenreBuilder() {
    DbUserSelectedGenre._defaults(this);
  }

  DbUserSelectedGenreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _genre = $v.genre;
      _id = $v.id;
      _updatedAt = $v.updatedAt;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbUserSelectedGenre other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbUserSelectedGenre;
  }

  @override
  void update(void Function(DbUserSelectedGenreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbUserSelectedGenre build() => _build();

  _$DbUserSelectedGenre _build() {
    final _$result = _$v ??
        new _$DbUserSelectedGenre._(
          createdAt: createdAt,
          genre: genre,
          id: id,
          updatedAt: updatedAt,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
