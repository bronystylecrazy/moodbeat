// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_user_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbUserSetting extends DbUserSetting {
  @override
  final String? createdAt;
  @override
  final String? fontFamily;
  @override
  final String? fontSize;
  @override
  final String? id;
  @override
  final String? language;
  @override
  final String? songPreference;
  @override
  final String? theme;
  @override
  final String? updatedAt;
  @override
  final String? userId;

  factory _$DbUserSetting([void Function(DbUserSettingBuilder)? updates]) =>
      (new DbUserSettingBuilder()..update(updates))._build();

  _$DbUserSetting._(
      {this.createdAt,
      this.fontFamily,
      this.fontSize,
      this.id,
      this.language,
      this.songPreference,
      this.theme,
      this.updatedAt,
      this.userId})
      : super._();

  @override
  DbUserSetting rebuild(void Function(DbUserSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbUserSettingBuilder toBuilder() => new DbUserSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbUserSetting &&
        createdAt == other.createdAt &&
        fontFamily == other.fontFamily &&
        fontSize == other.fontSize &&
        id == other.id &&
        language == other.language &&
        songPreference == other.songPreference &&
        theme == other.theme &&
        updatedAt == other.updatedAt &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, fontFamily.hashCode);
    _$hash = $jc(_$hash, fontSize.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, songPreference.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbUserSetting')
          ..add('createdAt', createdAt)
          ..add('fontFamily', fontFamily)
          ..add('fontSize', fontSize)
          ..add('id', id)
          ..add('language', language)
          ..add('songPreference', songPreference)
          ..add('theme', theme)
          ..add('updatedAt', updatedAt)
          ..add('userId', userId))
        .toString();
  }
}

class DbUserSettingBuilder
    implements Builder<DbUserSetting, DbUserSettingBuilder> {
  _$DbUserSetting? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _fontFamily;
  String? get fontFamily => _$this._fontFamily;
  set fontFamily(String? fontFamily) => _$this._fontFamily = fontFamily;

  String? _fontSize;
  String? get fontSize => _$this._fontSize;
  set fontSize(String? fontSize) => _$this._fontSize = fontSize;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _songPreference;
  String? get songPreference => _$this._songPreference;
  set songPreference(String? songPreference) =>
      _$this._songPreference = songPreference;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DbUserSettingBuilder() {
    DbUserSetting._defaults(this);
  }

  DbUserSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _fontFamily = $v.fontFamily;
      _fontSize = $v.fontSize;
      _id = $v.id;
      _language = $v.language;
      _songPreference = $v.songPreference;
      _theme = $v.theme;
      _updatedAt = $v.updatedAt;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbUserSetting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbUserSetting;
  }

  @override
  void update(void Function(DbUserSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbUserSetting build() => _build();

  _$DbUserSetting _build() {
    final _$result = _$v ??
        new _$DbUserSetting._(
          createdAt: createdAt,
          fontFamily: fontFamily,
          fontSize: fontSize,
          id: id,
          language: language,
          songPreference: songPreference,
          theme: theme,
          updatedAt: updatedAt,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
