// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgtype_int4.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PgtypeInt4 extends PgtypeInt4 {
  @override
  final int? int32;
  @override
  final bool? valid;

  factory _$PgtypeInt4([void Function(PgtypeInt4Builder)? updates]) =>
      (new PgtypeInt4Builder()..update(updates))._build();

  _$PgtypeInt4._({this.int32, this.valid}) : super._();

  @override
  PgtypeInt4 rebuild(void Function(PgtypeInt4Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PgtypeInt4Builder toBuilder() => new PgtypeInt4Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PgtypeInt4 && int32 == other.int32 && valid == other.valid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, int32.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PgtypeInt4')
          ..add('int32', int32)
          ..add('valid', valid))
        .toString();
  }
}

class PgtypeInt4Builder implements Builder<PgtypeInt4, PgtypeInt4Builder> {
  _$PgtypeInt4? _$v;

  int? _int32;
  int? get int32 => _$this._int32;
  set int32(int? int32) => _$this._int32 = int32;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  PgtypeInt4Builder() {
    PgtypeInt4._defaults(this);
  }

  PgtypeInt4Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _int32 = $v.int32;
      _valid = $v.valid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PgtypeInt4 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PgtypeInt4;
  }

  @override
  void update(void Function(PgtypeInt4Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PgtypeInt4 build() => _build();

  _$PgtypeInt4 _build() {
    final _$result = _$v ??
        new _$PgtypeInt4._(
          int32: int32,
          valid: valid,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
