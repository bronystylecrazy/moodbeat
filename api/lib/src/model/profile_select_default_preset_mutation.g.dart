// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_select_default_preset_mutation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileSelectDefaultPresetMutation
    extends ProfileSelectDefaultPresetMutation {
  @override
  final BuiltList<String>? presetId;

  factory _$ProfileSelectDefaultPresetMutation(
          [void Function(ProfileSelectDefaultPresetMutationBuilder)?
              updates]) =>
      (new ProfileSelectDefaultPresetMutationBuilder()..update(updates))
          ._build();

  _$ProfileSelectDefaultPresetMutation._({this.presetId}) : super._();

  @override
  ProfileSelectDefaultPresetMutation rebuild(
          void Function(ProfileSelectDefaultPresetMutationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileSelectDefaultPresetMutationBuilder toBuilder() =>
      new ProfileSelectDefaultPresetMutationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileSelectDefaultPresetMutation &&
        presetId == other.presetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, presetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileSelectDefaultPresetMutation')
          ..add('presetId', presetId))
        .toString();
  }
}

class ProfileSelectDefaultPresetMutationBuilder
    implements
        Builder<ProfileSelectDefaultPresetMutation,
            ProfileSelectDefaultPresetMutationBuilder> {
  _$ProfileSelectDefaultPresetMutation? _$v;

  ListBuilder<String>? _presetId;
  ListBuilder<String> get presetId =>
      _$this._presetId ??= new ListBuilder<String>();
  set presetId(ListBuilder<String>? presetId) => _$this._presetId = presetId;

  ProfileSelectDefaultPresetMutationBuilder() {
    ProfileSelectDefaultPresetMutation._defaults(this);
  }

  ProfileSelectDefaultPresetMutationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _presetId = $v.presetId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileSelectDefaultPresetMutation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileSelectDefaultPresetMutation;
  }

  @override
  void update(
      void Function(ProfileSelectDefaultPresetMutationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileSelectDefaultPresetMutation build() => _build();

  _$ProfileSelectDefaultPresetMutation _build() {
    _$ProfileSelectDefaultPresetMutation _$result;
    try {
      _$result = _$v ??
          new _$ProfileSelectDefaultPresetMutation._(
            presetId: _presetId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'presetId';
        _presetId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProfileSelectDefaultPresetMutation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
