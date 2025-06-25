// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRegisterRequestDTO extends UserRegisterRequestDTO {
  @override
  final String name;
  @override
  final String login;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$UserRegisterRequestDTO(
          [void Function(UserRegisterRequestDTOBuilder)? updates]) =>
      (UserRegisterRequestDTOBuilder()..update(updates))._build();

  _$UserRegisterRequestDTO._(
      {required this.name,
      required this.login,
      required this.email,
      required this.password,
      required this.confirmPassword})
      : super._();
  @override
  UserRegisterRequestDTO rebuild(
          void Function(UserRegisterRequestDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRegisterRequestDTOBuilder toBuilder() =>
      UserRegisterRequestDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRegisterRequestDTO &&
        name == other.name &&
        login == other.login &&
        email == other.email &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRegisterRequestDTO')
          ..add('name', name)
          ..add('login', login)
          ..add('email', email)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class UserRegisterRequestDTOBuilder
    implements Builder<UserRegisterRequestDTO, UserRegisterRequestDTOBuilder> {
  _$UserRegisterRequestDTO? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  UserRegisterRequestDTOBuilder() {
    UserRegisterRequestDTO._defaults(this);
  }

  UserRegisterRequestDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _login = $v.login;
      _email = $v.email;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRegisterRequestDTO other) {
    _$v = other as _$UserRegisterRequestDTO;
  }

  @override
  void update(void Function(UserRegisterRequestDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRegisterRequestDTO build() => _build();

  _$UserRegisterRequestDTO _build() {
    final _$result = _$v ??
        _$UserRegisterRequestDTO._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'UserRegisterRequestDTO', 'name'),
          login: BuiltValueNullFieldError.checkNotNull(
              login, r'UserRegisterRequestDTO', 'login'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserRegisterRequestDTO', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UserRegisterRequestDTO', 'password'),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
              confirmPassword, r'UserRegisterRequestDTO', 'confirmPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
