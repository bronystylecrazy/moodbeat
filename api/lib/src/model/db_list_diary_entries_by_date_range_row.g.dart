// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_list_diary_entries_by_date_range_row.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbListDiaryEntriesByDateRangeRow
    extends DbListDiaryEntriesByDateRangeRow {
  @override
  final String? createdAt;
  @override
  final String? emotion;
  @override
  final String? entryDate;
  @override
  final String? id;
  @override
  final int? stressScore;
  @override
  final String? updatedAt;
  @override
  final String? userId;

  factory _$DbListDiaryEntriesByDateRangeRow(
          [void Function(DbListDiaryEntriesByDateRangeRowBuilder)? updates]) =>
      (new DbListDiaryEntriesByDateRangeRowBuilder()..update(updates))._build();

  _$DbListDiaryEntriesByDateRangeRow._(
      {this.createdAt,
      this.emotion,
      this.entryDate,
      this.id,
      this.stressScore,
      this.updatedAt,
      this.userId})
      : super._();

  @override
  DbListDiaryEntriesByDateRangeRow rebuild(
          void Function(DbListDiaryEntriesByDateRangeRowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbListDiaryEntriesByDateRangeRowBuilder toBuilder() =>
      new DbListDiaryEntriesByDateRangeRowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbListDiaryEntriesByDateRangeRow &&
        createdAt == other.createdAt &&
        emotion == other.emotion &&
        entryDate == other.entryDate &&
        id == other.id &&
        stressScore == other.stressScore &&
        updatedAt == other.updatedAt &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, emotion.hashCode);
    _$hash = $jc(_$hash, entryDate.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, stressScore.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbListDiaryEntriesByDateRangeRow')
          ..add('createdAt', createdAt)
          ..add('emotion', emotion)
          ..add('entryDate', entryDate)
          ..add('id', id)
          ..add('stressScore', stressScore)
          ..add('updatedAt', updatedAt)
          ..add('userId', userId))
        .toString();
  }
}

class DbListDiaryEntriesByDateRangeRowBuilder
    implements
        Builder<DbListDiaryEntriesByDateRangeRow,
            DbListDiaryEntriesByDateRangeRowBuilder> {
  _$DbListDiaryEntriesByDateRangeRow? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _emotion;
  String? get emotion => _$this._emotion;
  set emotion(String? emotion) => _$this._emotion = emotion;

  String? _entryDate;
  String? get entryDate => _$this._entryDate;
  set entryDate(String? entryDate) => _$this._entryDate = entryDate;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _stressScore;
  int? get stressScore => _$this._stressScore;
  set stressScore(int? stressScore) => _$this._stressScore = stressScore;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DbListDiaryEntriesByDateRangeRowBuilder() {
    DbListDiaryEntriesByDateRangeRow._defaults(this);
  }

  DbListDiaryEntriesByDateRangeRowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _emotion = $v.emotion;
      _entryDate = $v.entryDate;
      _id = $v.id;
      _stressScore = $v.stressScore;
      _updatedAt = $v.updatedAt;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbListDiaryEntriesByDateRangeRow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbListDiaryEntriesByDateRangeRow;
  }

  @override
  void update(void Function(DbListDiaryEntriesByDateRangeRowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbListDiaryEntriesByDateRangeRow build() => _build();

  _$DbListDiaryEntriesByDateRangeRow _build() {
    final _$result = _$v ??
        new _$DbListDiaryEntriesByDateRangeRow._(
          createdAt: createdAt,
          emotion: emotion,
          entryDate: entryDate,
          id: id,
          stressScore: stressScore,
          updatedAt: updatedAt,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
