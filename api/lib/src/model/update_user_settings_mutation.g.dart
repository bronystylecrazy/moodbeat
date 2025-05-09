// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_settings_mutation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserSettingsMutation extends UpdateUserSettingsMutation {
  @override
  final String? fontFamily;
  @override
  final String? fontSize;
  @override
  final String? language;
  @override
  final String? songPreference;
  @override
  final String? theme;

  factory _$UpdateUserSettingsMutation(
          [void Function(UpdateUserSettingsMutationBuilder)? updates]) =>
      (new UpdateUserSettingsMutationBuilder()..update(updates))._build();

  _$UpdateUserSettingsMutation._(
      {this.fontFamily,
      this.fontSize,
      this.language,
      this.songPreference,
      this.theme})
      : super._();

  @override
  UpdateUserSettingsMutation rebuild(
          void Function(UpdateUserSettingsMutationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserSettingsMutationBuilder toBuilder() =>
      new UpdateUserSettingsMutationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserSettingsMutation &&
        fontFamily == other.fontFamily &&
        fontSize == other.fontSize &&
        language == other.language &&
        songPreference == other.songPreference &&
        theme == other.theme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fontFamily.hashCode);
    _$hash = $jc(_$hash, fontSize.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, songPreference.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUserSettingsMutation')
          ..add('fontFamily', fontFamily)
          ..add('fontSize', fontSize)
          ..add('language', language)
          ..add('songPreference', songPreference)
          ..add('theme', theme))
        .toString();
  }
}

class UpdateUserSettingsMutationBuilder
    implements
        Builder<UpdateUserSettingsMutation, UpdateUserSettingsMutationBuilder> {
  _$UpdateUserSettingsMutation? _$v;

  String? _fontFamily;
  String? get fontFamily => _$this._fontFamily;
  set fontFamily(String? fontFamily) => _$this._fontFamily = fontFamily;

  String? _fontSize;
  String? get fontSize => _$this._fontSize;
  set fontSize(String? fontSize) => _$this._fontSize = fontSize;

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

  UpdateUserSettingsMutationBuilder() {
    UpdateUserSettingsMutation._defaults(this);
  }

  UpdateUserSettingsMutationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fontFamily = $v.fontFamily;
      _fontSize = $v.fontSize;
      _language = $v.language;
      _songPreference = $v.songPreference;
      _theme = $v.theme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserSettingsMutation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserSettingsMutation;
  }

  @override
  void update(void Function(UpdateUserSettingsMutationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserSettingsMutation build() => _build();

  _$UpdateUserSettingsMutation _build() {
    final _$result = _$v ??
        new _$UpdateUserSettingsMutation._(
          fontFamily: fontFamily,
          fontSize: fontSize,
          language: language,
          songPreference: songPreference,
          theme: theme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
