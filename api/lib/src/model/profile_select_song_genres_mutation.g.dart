// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_select_song_genres_mutation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileSelectSongGenresMutation
    extends ProfileSelectSongGenresMutation {
  @override
  final BuiltList<String>? genreId;

  factory _$ProfileSelectSongGenresMutation(
          [void Function(ProfileSelectSongGenresMutationBuilder)? updates]) =>
      (new ProfileSelectSongGenresMutationBuilder()..update(updates))._build();

  _$ProfileSelectSongGenresMutation._({this.genreId}) : super._();

  @override
  ProfileSelectSongGenresMutation rebuild(
          void Function(ProfileSelectSongGenresMutationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileSelectSongGenresMutationBuilder toBuilder() =>
      new ProfileSelectSongGenresMutationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileSelectSongGenresMutation && genreId == other.genreId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genreId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileSelectSongGenresMutation')
          ..add('genreId', genreId))
        .toString();
  }
}

class ProfileSelectSongGenresMutationBuilder
    implements
        Builder<ProfileSelectSongGenresMutation,
            ProfileSelectSongGenresMutationBuilder> {
  _$ProfileSelectSongGenresMutation? _$v;

  ListBuilder<String>? _genreId;
  ListBuilder<String> get genreId =>
      _$this._genreId ??= new ListBuilder<String>();
  set genreId(ListBuilder<String>? genreId) => _$this._genreId = genreId;

  ProfileSelectSongGenresMutationBuilder() {
    ProfileSelectSongGenresMutation._defaults(this);
  }

  ProfileSelectSongGenresMutationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genreId = $v.genreId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileSelectSongGenresMutation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileSelectSongGenresMutation;
  }

  @override
  void update(void Function(ProfileSelectSongGenresMutationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileSelectSongGenresMutation build() => _build();

  _$ProfileSelectSongGenresMutation _build() {
    _$ProfileSelectSongGenresMutation _$result;
    try {
      _$result = _$v ??
          new _$ProfileSelectSongGenresMutation._(
            genreId: _genreId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genreId';
        _genreId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProfileSelectSongGenresMutation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
