// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthDTO extends AuthDTO {
  @override
  final String? login;
  @override
  final String? password;

  factory _$AuthDTO([void Function(AuthDTOBuilder)? updates]) =>
      (AuthDTOBuilder()..update(updates))._build();

  _$AuthDTO._({this.login, this.password}) : super._();
  @override
  AuthDTO rebuild(void Function(AuthDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthDTOBuilder toBuilder() => AuthDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthDTO &&
        login == other.login &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthDTO')
          ..add('login', login)
          ..add('password', password))
        .toString();
  }
}

class AuthDTOBuilder implements Builder<AuthDTO, AuthDTOBuilder> {
  _$AuthDTO? _$v;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AuthDTOBuilder() {
    AuthDTO._defaults(this);
  }

  AuthDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _login = $v.login;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthDTO other) {
    _$v = other as _$AuthDTO;
  }

  @override
  void update(void Function(AuthDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthDTO build() => _build();

  _$AuthDTO _build() {
    final _$result = _$v ??
        _$AuthDTO._(
          login: login,
          password: password,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
