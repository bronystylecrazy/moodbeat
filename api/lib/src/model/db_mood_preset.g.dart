// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_mood_preset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbMoodPreset extends DbMoodPreset {
  @override
  final String? description;
  @override
  final String? emoji;
  @override
  final num? energyMax;
  @override
  final num? energyMin;
  @override
  final String? id;
  @override
  final BuiltList<String>? keywords;
  @override
  final String? label;
  @override
  final num? tempoMax;
  @override
  final num? tempoMin;
  @override
  final num? valenceMax;
  @override
  final num? valenceMin;

  factory _$DbMoodPreset([void Function(DbMoodPresetBuilder)? updates]) =>
      (new DbMoodPresetBuilder()..update(updates))._build();

  _$DbMoodPreset._(
      {this.description,
      this.emoji,
      this.energyMax,
      this.energyMin,
      this.id,
      this.keywords,
      this.label,
      this.tempoMax,
      this.tempoMin,
      this.valenceMax,
      this.valenceMin})
      : super._();

  @override
  DbMoodPreset rebuild(void Function(DbMoodPresetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbMoodPresetBuilder toBuilder() => new DbMoodPresetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbMoodPreset &&
        description == other.description &&
        emoji == other.emoji &&
        energyMax == other.energyMax &&
        energyMin == other.energyMin &&
        id == other.id &&
        keywords == other.keywords &&
        label == other.label &&
        tempoMax == other.tempoMax &&
        tempoMin == other.tempoMin &&
        valenceMax == other.valenceMax &&
        valenceMin == other.valenceMin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, emoji.hashCode);
    _$hash = $jc(_$hash, energyMax.hashCode);
    _$hash = $jc(_$hash, energyMin.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, keywords.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, tempoMax.hashCode);
    _$hash = $jc(_$hash, tempoMin.hashCode);
    _$hash = $jc(_$hash, valenceMax.hashCode);
    _$hash = $jc(_$hash, valenceMin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbMoodPreset')
          ..add('description', description)
          ..add('emoji', emoji)
          ..add('energyMax', energyMax)
          ..add('energyMin', energyMin)
          ..add('id', id)
          ..add('keywords', keywords)
          ..add('label', label)
          ..add('tempoMax', tempoMax)
          ..add('tempoMin', tempoMin)
          ..add('valenceMax', valenceMax)
          ..add('valenceMin', valenceMin))
        .toString();
  }
}

class DbMoodPresetBuilder
    implements Builder<DbMoodPreset, DbMoodPresetBuilder> {
  _$DbMoodPreset? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _emoji;
  String? get emoji => _$this._emoji;
  set emoji(String? emoji) => _$this._emoji = emoji;

  num? _energyMax;
  num? get energyMax => _$this._energyMax;
  set energyMax(num? energyMax) => _$this._energyMax = energyMax;

  num? _energyMin;
  num? get energyMin => _$this._energyMin;
  set energyMin(num? energyMin) => _$this._energyMin = energyMin;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _keywords;
  ListBuilder<String> get keywords =>
      _$this._keywords ??= new ListBuilder<String>();
  set keywords(ListBuilder<String>? keywords) => _$this._keywords = keywords;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  num? _tempoMax;
  num? get tempoMax => _$this._tempoMax;
  set tempoMax(num? tempoMax) => _$this._tempoMax = tempoMax;

  num? _tempoMin;
  num? get tempoMin => _$this._tempoMin;
  set tempoMin(num? tempoMin) => _$this._tempoMin = tempoMin;

  num? _valenceMax;
  num? get valenceMax => _$this._valenceMax;
  set valenceMax(num? valenceMax) => _$this._valenceMax = valenceMax;

  num? _valenceMin;
  num? get valenceMin => _$this._valenceMin;
  set valenceMin(num? valenceMin) => _$this._valenceMin = valenceMin;

  DbMoodPresetBuilder() {
    DbMoodPreset._defaults(this);
  }

  DbMoodPresetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _emoji = $v.emoji;
      _energyMax = $v.energyMax;
      _energyMin = $v.energyMin;
      _id = $v.id;
      _keywords = $v.keywords?.toBuilder();
      _label = $v.label;
      _tempoMax = $v.tempoMax;
      _tempoMin = $v.tempoMin;
      _valenceMax = $v.valenceMax;
      _valenceMin = $v.valenceMin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbMoodPreset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbMoodPreset;
  }

  @override
  void update(void Function(DbMoodPresetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbMoodPreset build() => _build();

  _$DbMoodPreset _build() {
    _$DbMoodPreset _$result;
    try {
      _$result = _$v ??
          new _$DbMoodPreset._(
            description: description,
            emoji: emoji,
            energyMax: energyMax,
            energyMin: energyMin,
            id: id,
            keywords: _keywords?.build(),
            label: label,
            tempoMax: tempoMax,
            tempoMin: tempoMin,
            valenceMax: valenceMax,
            valenceMin: valenceMin,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keywords';
        _keywords?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DbMoodPreset', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
