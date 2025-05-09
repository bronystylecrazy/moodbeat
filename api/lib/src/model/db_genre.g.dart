// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_genre.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbGenre extends DbGenre {
  @override
  final String? emojis;
  @override
  final String? id;
  @override
  final String? name;

  factory _$DbGenre([void Function(DbGenreBuilder)? updates]) =>
      (new DbGenreBuilder()..update(updates))._build();

  _$DbGenre._({this.emojis, this.id, this.name}) : super._();

  @override
  DbGenre rebuild(void Function(DbGenreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbGenreBuilder toBuilder() => new DbGenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbGenre &&
        emojis == other.emojis &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, emojis.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbGenre')
          ..add('emojis', emojis)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class DbGenreBuilder implements Builder<DbGenre, DbGenreBuilder> {
  _$DbGenre? _$v;

  String? _emojis;
  String? get emojis => _$this._emojis;
  set emojis(String? emojis) => _$this._emojis = emojis;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DbGenreBuilder() {
    DbGenre._defaults(this);
  }

  DbGenreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emojis = $v.emojis;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbGenre other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbGenre;
  }

  @override
  void update(void Function(DbGenreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbGenre build() => _build();

  _$DbGenre _build() {
    final _$result = _$v ??
        new _$DbGenre._(
          emojis: emojis,
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
