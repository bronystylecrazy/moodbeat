// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_diary_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbDiaryEntry extends DbDiaryEntry {
  @override
  final String? advice;
  @override
  final String? content;
  @override
  final String? createdAt;
  @override
  final String? emotion;
  @override
  final String? entryDate;
  @override
  final String? id;
  @override
  final String? imageUrl;
  @override
  final int? stressScore;
  @override
  final String? updatedAt;
  @override
  final String? userId;

  factory _$DbDiaryEntry([void Function(DbDiaryEntryBuilder)? updates]) =>
      (new DbDiaryEntryBuilder()..update(updates))._build();

  _$DbDiaryEntry._(
      {this.advice,
      this.content,
      this.createdAt,
      this.emotion,
      this.entryDate,
      this.id,
      this.imageUrl,
      this.stressScore,
      this.updatedAt,
      this.userId})
      : super._();

  @override
  DbDiaryEntry rebuild(void Function(DbDiaryEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbDiaryEntryBuilder toBuilder() => new DbDiaryEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbDiaryEntry &&
        advice == other.advice &&
        content == other.content &&
        createdAt == other.createdAt &&
        emotion == other.emotion &&
        entryDate == other.entryDate &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        stressScore == other.stressScore &&
        updatedAt == other.updatedAt &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, advice.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, emotion.hashCode);
    _$hash = $jc(_$hash, entryDate.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, stressScore.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbDiaryEntry')
          ..add('advice', advice)
          ..add('content', content)
          ..add('createdAt', createdAt)
          ..add('emotion', emotion)
          ..add('entryDate', entryDate)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('stressScore', stressScore)
          ..add('updatedAt', updatedAt)
          ..add('userId', userId))
        .toString();
  }
}

class DbDiaryEntryBuilder
    implements Builder<DbDiaryEntry, DbDiaryEntryBuilder> {
  _$DbDiaryEntry? _$v;

  String? _advice;
  String? get advice => _$this._advice;
  set advice(String? advice) => _$this._advice = advice;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

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

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  int? _stressScore;
  int? get stressScore => _$this._stressScore;
  set stressScore(int? stressScore) => _$this._stressScore = stressScore;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DbDiaryEntryBuilder() {
    DbDiaryEntry._defaults(this);
  }

  DbDiaryEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _advice = $v.advice;
      _content = $v.content;
      _createdAt = $v.createdAt;
      _emotion = $v.emotion;
      _entryDate = $v.entryDate;
      _id = $v.id;
      _imageUrl = $v.imageUrl;
      _stressScore = $v.stressScore;
      _updatedAt = $v.updatedAt;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbDiaryEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbDiaryEntry;
  }

  @override
  void update(void Function(DbDiaryEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbDiaryEntry build() => _build();

  _$DbDiaryEntry _build() {
    final _$result = _$v ??
        new _$DbDiaryEntry._(
          advice: advice,
          content: content,
          createdAt: createdAt,
          emotion: emotion,
          entryDate: entryDate,
          id: id,
          imageUrl: imageUrl,
          stressScore: stressScore,
          updatedAt: updatedAt,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
