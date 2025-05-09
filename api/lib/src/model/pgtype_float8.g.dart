// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgtype_float8.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PgtypeFloat8 extends PgtypeFloat8 {
  @override
  final num? float64;
  @override
  final bool? valid;

  factory _$PgtypeFloat8([void Function(PgtypeFloat8Builder)? updates]) =>
      (new PgtypeFloat8Builder()..update(updates))._build();

  _$PgtypeFloat8._({this.float64, this.valid}) : super._();

  @override
  PgtypeFloat8 rebuild(void Function(PgtypeFloat8Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PgtypeFloat8Builder toBuilder() => new PgtypeFloat8Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PgtypeFloat8 &&
        float64 == other.float64 &&
        valid == other.valid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, float64.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PgtypeFloat8')
          ..add('float64', float64)
          ..add('valid', valid))
        .toString();
  }
}

class PgtypeFloat8Builder
    implements Builder<PgtypeFloat8, PgtypeFloat8Builder> {
  _$PgtypeFloat8? _$v;

  num? _float64;
  num? get float64 => _$this._float64;
  set float64(num? float64) => _$this._float64 = float64;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  PgtypeFloat8Builder() {
    PgtypeFloat8._defaults(this);
  }

  PgtypeFloat8Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _float64 = $v.float64;
      _valid = $v.valid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PgtypeFloat8 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PgtypeFloat8;
  }

  @override
  void update(void Function(PgtypeFloat8Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PgtypeFloat8 build() => _build();

  _$PgtypeFloat8 _build() {
    final _$result = _$v ??
        new _$PgtypeFloat8._(
          float64: float64,
          valid: valid,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
