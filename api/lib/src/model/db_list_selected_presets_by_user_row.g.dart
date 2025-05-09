// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_list_selected_presets_by_user_row.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbListSelectedPresetsByUserRow extends DbListSelectedPresetsByUserRow {
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
  final String? id2;
  @override
  final BuiltList<String>? keywords;
  @override
  final String? label;
  @override
  final String? moodPresetId;
  @override
  final String? selectedAt;
  @override
  final num? tempoMax;
  @override
  final num? tempoMin;
  @override
  final String? userId;
  @override
  final num? valenceMax;
  @override
  final num? valenceMin;

  factory _$DbListSelectedPresetsByUserRow(
          [void Function(DbListSelectedPresetsByUserRowBuilder)? updates]) =>
      (new DbListSelectedPresetsByUserRowBuilder()..update(updates))._build();

  _$DbListSelectedPresetsByUserRow._(
      {this.description,
      this.emoji,
      this.energyMax,
      this.energyMin,
      this.id,
      this.id2,
      this.keywords,
      this.label,
      this.moodPresetId,
      this.selectedAt,
      this.tempoMax,
      this.tempoMin,
      this.userId,
      this.valenceMax,
      this.valenceMin})
      : super._();

  @override
  DbListSelectedPresetsByUserRow rebuild(
          void Function(DbListSelectedPresetsByUserRowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbListSelectedPresetsByUserRowBuilder toBuilder() =>
      new DbListSelectedPresetsByUserRowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbListSelectedPresetsByUserRow &&
        description == other.description &&
        emoji == other.emoji &&
        energyMax == other.energyMax &&
        energyMin == other.energyMin &&
        id == other.id &&
        id2 == other.id2 &&
        keywords == other.keywords &&
        label == other.label &&
        moodPresetId == other.moodPresetId &&
        selectedAt == other.selectedAt &&
        tempoMax == other.tempoMax &&
        tempoMin == other.tempoMin &&
        userId == other.userId &&
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
    _$hash = $jc(_$hash, id2.hashCode);
    _$hash = $jc(_$hash, keywords.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, moodPresetId.hashCode);
    _$hash = $jc(_$hash, selectedAt.hashCode);
    _$hash = $jc(_$hash, tempoMax.hashCode);
    _$hash = $jc(_$hash, tempoMin.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, valenceMax.hashCode);
    _$hash = $jc(_$hash, valenceMin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbListSelectedPresetsByUserRow')
          ..add('description', description)
          ..add('emoji', emoji)
          ..add('energyMax', energyMax)
          ..add('energyMin', energyMin)
          ..add('id', id)
          ..add('id2', id2)
          ..add('keywords', keywords)
          ..add('label', label)
          ..add('moodPresetId', moodPresetId)
          ..add('selectedAt', selectedAt)
          ..add('tempoMax', tempoMax)
          ..add('tempoMin', tempoMin)
          ..add('userId', userId)
          ..add('valenceMax', valenceMax)
          ..add('valenceMin', valenceMin))
        .toString();
  }
}

class DbListSelectedPresetsByUserRowBuilder
    implements
        Builder<DbListSelectedPresetsByUserRow,
            DbListSelectedPresetsByUserRowBuilder> {
  _$DbListSelectedPresetsByUserRow? _$v;

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

  String? _id2;
  String? get id2 => _$this._id2;
  set id2(String? id2) => _$this._id2 = id2;

  ListBuilder<String>? _keywords;
  ListBuilder<String> get keywords =>
      _$this._keywords ??= new ListBuilder<String>();
  set keywords(ListBuilder<String>? keywords) => _$this._keywords = keywords;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _moodPresetId;
  String? get moodPresetId => _$this._moodPresetId;
  set moodPresetId(String? moodPresetId) => _$this._moodPresetId = moodPresetId;

  String? _selectedAt;
  String? get selectedAt => _$this._selectedAt;
  set selectedAt(String? selectedAt) => _$this._selectedAt = selectedAt;

  num? _tempoMax;
  num? get tempoMax => _$this._tempoMax;
  set tempoMax(num? tempoMax) => _$this._tempoMax = tempoMax;

  num? _tempoMin;
  num? get tempoMin => _$this._tempoMin;
  set tempoMin(num? tempoMin) => _$this._tempoMin = tempoMin;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  num? _valenceMax;
  num? get valenceMax => _$this._valenceMax;
  set valenceMax(num? valenceMax) => _$this._valenceMax = valenceMax;

  num? _valenceMin;
  num? get valenceMin => _$this._valenceMin;
  set valenceMin(num? valenceMin) => _$this._valenceMin = valenceMin;

  DbListSelectedPresetsByUserRowBuilder() {
    DbListSelectedPresetsByUserRow._defaults(this);
  }

  DbListSelectedPresetsByUserRowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _emoji = $v.emoji;
      _energyMax = $v.energyMax;
      _energyMin = $v.energyMin;
      _id = $v.id;
      _id2 = $v.id2;
      _keywords = $v.keywords?.toBuilder();
      _label = $v.label;
      _moodPresetId = $v.moodPresetId;
      _selectedAt = $v.selectedAt;
      _tempoMax = $v.tempoMax;
      _tempoMin = $v.tempoMin;
      _userId = $v.userId;
      _valenceMax = $v.valenceMax;
      _valenceMin = $v.valenceMin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbListSelectedPresetsByUserRow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbListSelectedPresetsByUserRow;
  }

  @override
  void update(void Function(DbListSelectedPresetsByUserRowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbListSelectedPresetsByUserRow build() => _build();

  _$DbListSelectedPresetsByUserRow _build() {
    _$DbListSelectedPresetsByUserRow _$result;
    try {
      _$result = _$v ??
          new _$DbListSelectedPresetsByUserRow._(
            description: description,
            emoji: emoji,
            energyMax: energyMax,
            energyMin: energyMin,
            id: id,
            id2: id2,
            keywords: _keywords?.build(),
            label: label,
            moodPresetId: moodPresetId,
            selectedAt: selectedAt,
            tempoMax: tempoMax,
            tempoMin: tempoMin,
            userId: userId,
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
            r'DbListSelectedPresetsByUserRow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
