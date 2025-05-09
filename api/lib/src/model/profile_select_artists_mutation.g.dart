// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_select_artists_mutation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileSelectArtistsMutation extends ProfileSelectArtistsMutation {
  @override
  final BuiltList<String>? artistIds;

  factory _$ProfileSelectArtistsMutation(
          [void Function(ProfileSelectArtistsMutationBuilder)? updates]) =>
      (new ProfileSelectArtistsMutationBuilder()..update(updates))._build();

  _$ProfileSelectArtistsMutation._({this.artistIds}) : super._();

  @override
  ProfileSelectArtistsMutation rebuild(
          void Function(ProfileSelectArtistsMutationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileSelectArtistsMutationBuilder toBuilder() =>
      new ProfileSelectArtistsMutationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileSelectArtistsMutation &&
        artistIds == other.artistIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, artistIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileSelectArtistsMutation')
          ..add('artistIds', artistIds))
        .toString();
  }
}

class ProfileSelectArtistsMutationBuilder
    implements
        Builder<ProfileSelectArtistsMutation,
            ProfileSelectArtistsMutationBuilder> {
  _$ProfileSelectArtistsMutation? _$v;

  ListBuilder<String>? _artistIds;
  ListBuilder<String> get artistIds =>
      _$this._artistIds ??= new ListBuilder<String>();
  set artistIds(ListBuilder<String>? artistIds) =>
      _$this._artistIds = artistIds;

  ProfileSelectArtistsMutationBuilder() {
    ProfileSelectArtistsMutation._defaults(this);
  }

  ProfileSelectArtistsMutationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _artistIds = $v.artistIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileSelectArtistsMutation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileSelectArtistsMutation;
  }

  @override
  void update(void Function(ProfileSelectArtistsMutationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileSelectArtistsMutation build() => _build();

  _$ProfileSelectArtistsMutation _build() {
    _$ProfileSelectArtistsMutation _$result;
    try {
      _$result = _$v ??
          new _$ProfileSelectArtistsMutation._(
            artistIds: _artistIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'artistIds';
        _artistIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProfileSelectArtistsMutation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
