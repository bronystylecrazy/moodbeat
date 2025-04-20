// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthProfileResponse extends AuthProfileResponse {
  @override
  final String? avatarUrl;
  @override
  final String? country;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? id;
  @override
  final String? product;
  @override
  final String? spotifyUrl;

  factory _$AuthProfileResponse(
          [void Function(AuthProfileResponseBuilder)? updates]) =>
      (new AuthProfileResponseBuilder()..update(updates))._build();

  _$AuthProfileResponse._(
      {this.avatarUrl,
      this.country,
      this.displayName,
      this.email,
      this.id,
      this.product,
      this.spotifyUrl})
      : super._();

  @override
  AuthProfileResponse rebuild(
          void Function(AuthProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthProfileResponseBuilder toBuilder() =>
      new AuthProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthProfileResponse &&
        avatarUrl == other.avatarUrl &&
        country == other.country &&
        displayName == other.displayName &&
        email == other.email &&
        id == other.id &&
        product == other.product &&
        spotifyUrl == other.spotifyUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, avatarUrl.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, spotifyUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthProfileResponse')
          ..add('avatarUrl', avatarUrl)
          ..add('country', country)
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('id', id)
          ..add('product', product)
          ..add('spotifyUrl', spotifyUrl))
        .toString();
  }
}

class AuthProfileResponseBuilder
    implements Builder<AuthProfileResponse, AuthProfileResponseBuilder> {
  _$AuthProfileResponse? _$v;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

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

  String? _spotifyUrl;
  String? get spotifyUrl => _$this._spotifyUrl;
  set spotifyUrl(String? spotifyUrl) => _$this._spotifyUrl = spotifyUrl;

  AuthProfileResponseBuilder() {
    AuthProfileResponse._defaults(this);
  }

  AuthProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _avatarUrl = $v.avatarUrl;
      _country = $v.country;
      _displayName = $v.displayName;
      _email = $v.email;
      _id = $v.id;
      _product = $v.product;
      _spotifyUrl = $v.spotifyUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthProfileResponse;
  }

  @override
  void update(void Function(AuthProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthProfileResponse build() => _build();

  _$AuthProfileResponse _build() {
    final _$result = _$v ??
        new _$AuthProfileResponse._(
          avatarUrl: avatarUrl,
          country: country,
          displayName: displayName,
          email: email,
          id: id,
          product: product,
          spotifyUrl: spotifyUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
