// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRequestDTO extends UserRequestDTO {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? login;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final UserGroup? userGroup;
  @override
  final bool? enabled;

  factory _$UserRequestDTO([void Function(UserRequestDTOBuilder)? updates]) =>
      (UserRequestDTOBuilder()..update(updates))._build();

  _$UserRequestDTO._(
      {this.id,
      this.name,
      this.login,
      this.email,
      this.password,
      this.confirmPassword,
      this.userGroup,
      this.enabled})
      : super._();
  @override
  UserRequestDTO rebuild(void Function(UserRequestDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRequestDTOBuilder toBuilder() => UserRequestDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRequestDTO &&
        id == other.id &&
        name == other.name &&
        login == other.login &&
        email == other.email &&
        password == other.password &&
        confirmPassword == other.confirmPassword &&
        userGroup == other.userGroup &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jc(_$hash, userGroup.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRequestDTO')
          ..add('id', id)
          ..add('name', name)
          ..add('login', login)
          ..add('email', email)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword)
          ..add('userGroup', userGroup)
          ..add('enabled', enabled))
        .toString();
  }
}

class UserRequestDTOBuilder
    implements Builder<UserRequestDTO, UserRequestDTOBuilder> {
  _$UserRequestDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  UserGroupBuilder? _userGroup;
  UserGroupBuilder get userGroup => _$this._userGroup ??= UserGroupBuilder();
  set userGroup(UserGroupBuilder? userGroup) => _$this._userGroup = userGroup;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  UserRequestDTOBuilder() {
    UserRequestDTO._defaults(this);
  }

  UserRequestDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _login = $v.login;
      _email = $v.email;
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _userGroup = $v.userGroup?.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRequestDTO other) {
    _$v = other as _$UserRequestDTO;
  }

  @override
  void update(void Function(UserRequestDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRequestDTO build() => _build();

  _$UserRequestDTO _build() {
    _$UserRequestDTO _$result;
    try {
      _$result = _$v ??
          _$UserRequestDTO._(
            id: id,
            name: name,
            login: login,
            email: email,
            password: password,
            confirmPassword: confirmPassword,
            userGroup: _userGroup?.build(),
            enabled: enabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userGroup';
        _userGroup?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserRequestDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
