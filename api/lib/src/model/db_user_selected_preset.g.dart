// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_user_selected_preset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbUserSelectedPreset extends DbUserSelectedPreset {
  @override
  final String? id;
  @override
  final String? moodPresetId;
  @override
  final String? selectedAt;
  @override
  final String? userId;

  factory _$DbUserSelectedPreset(
          [void Function(DbUserSelectedPresetBuilder)? updates]) =>
      (new DbUserSelectedPresetBuilder()..update(updates))._build();

  _$DbUserSelectedPreset._(
      {this.id, this.moodPresetId, this.selectedAt, this.userId})
      : super._();

  @override
  DbUserSelectedPreset rebuild(
          void Function(DbUserSelectedPresetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbUserSelectedPresetBuilder toBuilder() =>
      new DbUserSelectedPresetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbUserSelectedPreset &&
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
    return (newBuiltValueToStringHelper(r'DbUserSelectedPreset')
          ..add('id', id)
          ..add('moodPresetId', moodPresetId)
          ..add('selectedAt', selectedAt)
          ..add('userId', userId))
        .toString();
  }
}

class DbUserSelectedPresetBuilder
    implements Builder<DbUserSelectedPreset, DbUserSelectedPresetBuilder> {
  _$DbUserSelectedPreset? _$v;

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

  DbUserSelectedPresetBuilder() {
    DbUserSelectedPreset._defaults(this);
  }

  DbUserSelectedPresetBuilder get _$this {
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
  void replace(DbUserSelectedPreset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbUserSelectedPreset;
  }

  @override
  void update(void Function(DbUserSelectedPresetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbUserSelectedPreset build() => _build();

  _$DbUserSelectedPreset _build() {
    final _$result = _$v ??
        new _$DbUserSelectedPreset._(
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
