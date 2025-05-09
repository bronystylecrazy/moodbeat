// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgtype_bool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PgtypeBool extends PgtypeBool {
  @override
  final bool? bool_;
  @override
  final bool? valid;

  factory _$PgtypeBool([void Function(PgtypeBoolBuilder)? updates]) =>
      (new PgtypeBoolBuilder()..update(updates))._build();

  _$PgtypeBool._({this.bool_, this.valid}) : super._();

  @override
  PgtypeBool rebuild(void Function(PgtypeBoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PgtypeBoolBuilder toBuilder() => new PgtypeBoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PgtypeBool && bool_ == other.bool_ && valid == other.valid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bool_.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PgtypeBool')
          ..add('bool_', bool_)
          ..add('valid', valid))
        .toString();
  }
}

class PgtypeBoolBuilder implements Builder<PgtypeBool, PgtypeBoolBuilder> {
  _$PgtypeBool? _$v;

  bool? _bool_;
  bool? get bool_ => _$this._bool_;
  set bool_(bool? bool_) => _$this._bool_ = bool_;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  PgtypeBoolBuilder() {
    PgtypeBool._defaults(this);
  }

  PgtypeBoolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bool_ = $v.bool_;
      _valid = $v.valid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PgtypeBool other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PgtypeBool;
  }

  @override
  void update(void Function(PgtypeBoolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PgtypeBool build() => _build();

  _$PgtypeBool _build() {
    final _$result = _$v ??
        new _$PgtypeBool._(
          bool_: bool_,
          valid: valid,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
