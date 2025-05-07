// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fiber_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FiberError extends FiberError {
  @override
  final int? code;
  @override
  final String? message;

  factory _$FiberError([void Function(FiberErrorBuilder)? updates]) =>
      (new FiberErrorBuilder()..update(updates))._build();

  _$FiberError._({this.code, this.message}) : super._();

  @override
  FiberError rebuild(void Function(FiberErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FiberErrorBuilder toBuilder() => new FiberErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FiberError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FiberError')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class FiberErrorBuilder implements Builder<FiberError, FiberErrorBuilder> {
  _$FiberError? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  FiberErrorBuilder() {
    FiberError._defaults(this);
  }

  FiberErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FiberError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FiberError;
  }

  @override
  void update(void Function(FiberErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FiberError build() => _build();

  _$FiberError _build() {
    final _$result = _$v ??
        new _$FiberError._(
          code: code,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
