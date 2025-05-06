// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_get_user_by_id_row.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DbGetUserByIdRow extends DbGetUserByIdRow {
  @override
  final String? avatarUrl;
  @override
  final String? country;
  @override
  final String? createdAt;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? id;
  @override
  final String? product;
  @override
  final String? setupAt;
  @override
  final String? spotifyUrl;

  factory _$DbGetUserByIdRow(
          [void Function(DbGetUserByIdRowBuilder)? updates]) =>
      (new DbGetUserByIdRowBuilder()..update(updates))._build();

  _$DbGetUserByIdRow._(
      {this.avatarUrl,
      this.country,
      this.createdAt,
      this.displayName,
      this.email,
      this.id,
      this.product,
      this.setupAt,
      this.spotifyUrl})
      : super._();

  @override
  DbGetUserByIdRow rebuild(void Function(DbGetUserByIdRowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DbGetUserByIdRowBuilder toBuilder() =>
      new DbGetUserByIdRowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DbGetUserByIdRow &&
        avatarUrl == other.avatarUrl &&
        country == other.country &&
        createdAt == other.createdAt &&
        displayName == other.displayName &&
        email == other.email &&
        id == other.id &&
        product == other.product &&
        setupAt == other.setupAt &&
        spotifyUrl == other.spotifyUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, avatarUrl.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, setupAt.hashCode);
    _$hash = $jc(_$hash, spotifyUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DbGetUserByIdRow')
          ..add('avatarUrl', avatarUrl)
          ..add('country', country)
          ..add('createdAt', createdAt)
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('id', id)
          ..add('product', product)
          ..add('setupAt', setupAt)
          ..add('spotifyUrl', spotifyUrl))
        .toString();
  }
}

class DbGetUserByIdRowBuilder
    implements Builder<DbGetUserByIdRow, DbGetUserByIdRowBuilder> {
  _$DbGetUserByIdRow? _$v;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _product;
  String? get product => _$this._product;
  set product(String? product) => _$this._product = product;

  String? _setupAt;
  String? get setupAt => _$this._setupAt;
  set setupAt(String? setupAt) => _$this._setupAt = setupAt;

  String? _spotifyUrl;
  String? get spotifyUrl => _$this._spotifyUrl;
  set spotifyUrl(String? spotifyUrl) => _$this._spotifyUrl = spotifyUrl;

  DbGetUserByIdRowBuilder() {
    DbGetUserByIdRow._defaults(this);
  }

  DbGetUserByIdRowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _avatarUrl = $v.avatarUrl;
      _country = $v.country;
      _createdAt = $v.createdAt;
      _displayName = $v.displayName;
      _email = $v.email;
      _id = $v.id;
      _product = $v.product;
      _setupAt = $v.setupAt;
      _spotifyUrl = $v.spotifyUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DbGetUserByIdRow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DbGetUserByIdRow;
  }

  @override
  void update(void Function(DbGetUserByIdRowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DbGetUserByIdRow build() => _build();

  _$DbGetUserByIdRow _build() {
    final _$result = _$v ??
        new _$DbGetUserByIdRow._(
          avatarUrl: avatarUrl,
          country: country,
          createdAt: createdAt,
          displayName: displayName,
          email: email,
          id: id,
          product: product,
          setupAt: setupAt,
          spotifyUrl: spotifyUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
