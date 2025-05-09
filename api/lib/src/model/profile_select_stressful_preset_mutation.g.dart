// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_select_stressful_preset_mutation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileSelectStressfulPresetMutation
    extends ProfileSelectStressfulPresetMutation {
  @override
  final BuiltList<String>? presetId;

  factory _$ProfileSelectStressfulPresetMutation(
          [void Function(ProfileSelectStressfulPresetMutationBuilder)?
              updates]) =>
      (new ProfileSelectStressfulPresetMutationBuilder()..update(updates))
          ._build();

  _$ProfileSelectStressfulPresetMutation._({this.presetId}) : super._();

  @override
  ProfileSelectStressfulPresetMutation rebuild(
          void Function(ProfileSelectStressfulPresetMutationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileSelectStressfulPresetMutationBuilder toBuilder() =>
      new ProfileSelectStressfulPresetMutationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileSelectStressfulPresetMutation &&
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
    return (newBuiltValueToStringHelper(r'ProfileSelectStressfulPresetMutation')
          ..add('presetId', presetId))
        .toString();
  }
}

class ProfileSelectStressfulPresetMutationBuilder
    implements
        Builder<ProfileSelectStressfulPresetMutation,
            ProfileSelectStressfulPresetMutationBuilder> {
  _$ProfileSelectStressfulPresetMutation? _$v;

  ListBuilder<String>? _presetId;
  ListBuilder<String> get presetId =>
      _$this._presetId ??= new ListBuilder<String>();
  set presetId(ListBuilder<String>? presetId) => _$this._presetId = presetId;

  ProfileSelectStressfulPresetMutationBuilder() {
    ProfileSelectStressfulPresetMutation._defaults(this);
  }

  ProfileSelectStressfulPresetMutationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _presetId = $v.presetId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileSelectStressfulPresetMutation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileSelectStressfulPresetMutation;
  }

  @override
  void update(
      void Function(ProfileSelectStressfulPresetMutationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileSelectStressfulPresetMutation build() => _build();

  _$ProfileSelectStressfulPresetMutation _build() {
    _$ProfileSelectStressfulPresetMutation _$result;
    try {
      _$result = _$v ??
          new _$ProfileSelectStressfulPresetMutation._(
            presetId: _presetId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'presetId';
        _presetId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProfileSelectStressfulPresetMutation',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
