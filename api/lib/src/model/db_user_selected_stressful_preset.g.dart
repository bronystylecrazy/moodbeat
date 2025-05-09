// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_user_selected_stressful_preset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbUserSelectedStressfulPreset extends DbUserSelectedStressfulPreset {
  @override
  final String? id;
  @override
  final String? moodPresetId;
  @override
  final String? selectedAt;
  @override
  final String? userId;

  factory _$DbUserSelectedStressfulPreset(
          [void Function(DbUserSelectedStressfulPresetBuilder)? updates]) =>
      (new DbUserSelectedStressfulPresetBuilder()..update(updates))._build();

  _$DbUserSelectedStressfulPreset._(
      {this.id, this.moodPresetId, this.selectedAt, this.userId})
      : super._();

  @override
  DbUserSelectedStressfulPreset rebuild(
          void Function(DbUserSelectedStressfulPresetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbUserSelectedStressfulPresetBuilder toBuilder() =>
      new DbUserSelectedStressfulPresetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbUserSelectedStressfulPreset &&
        id == other.id &&
        moodPresetId == other.moodPresetId &&
        selectedAt == other.selectedAt &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, moodPresetId.hashCode);
    _$hash = $jc(_$hash, selectedAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbUserSelectedStressfulPreset')
          ..add('id', id)
          ..add('moodPresetId', moodPresetId)
          ..add('selectedAt', selectedAt)
          ..add('userId', userId))
        .toString();
  }
}

class DbUserSelectedStressfulPresetBuilder
    implements
        Builder<DbUserSelectedStressfulPreset,
            DbUserSelectedStressfulPresetBuilder> {
  _$DbUserSelectedStressfulPreset? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _moodPresetId;
  String? get moodPresetId => _$this._moodPresetId;
  set moodPresetId(String? moodPresetId) => _$this._moodPresetId = moodPresetId;

  String? _selectedAt;
  String? get selectedAt => _$this._selectedAt;
  set selectedAt(String? selectedAt) => _$this._selectedAt = selectedAt;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DbUserSelectedStressfulPresetBuilder() {
    DbUserSelectedStressfulPreset._defaults(this);
  }

  DbUserSelectedStressfulPresetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _moodPresetId = $v.moodPresetId;
      _selectedAt = $v.selectedAt;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbUserSelectedStressfulPreset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbUserSelectedStressfulPreset;
  }

  @override
  void update(void Function(DbUserSelectedStressfulPresetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbUserSelectedStressfulPreset build() => _build();

  _$DbUserSelectedStressfulPreset _build() {
    final _$result = _$v ??
        new _$DbUserSelectedStressfulPreset._(
          id: id,
          moodPresetId: moodPresetId,
          selectedAt: selectedAt,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
