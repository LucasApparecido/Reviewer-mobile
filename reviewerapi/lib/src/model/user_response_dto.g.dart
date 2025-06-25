// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResponseDTO extends UserResponseDTO {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? login;
  @override
  final String? email;
  @override
  final UserGroup? userGroup;
  @override
  final bool? enabled;

  factory _$UserResponseDTO([void Function(UserResponseDTOBuilder)? updates]) =>
      (UserResponseDTOBuilder()..update(updates))._build();

  _$UserResponseDTO._(
      {this.id,
      this.name,
      this.login,
      this.email,
      this.userGroup,
      this.enabled})
      : super._();
  @override
  UserResponseDTO rebuild(void Function(UserResponseDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseDTOBuilder toBuilder() => UserResponseDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponseDTO &&
        id == other.id &&
        name == other.name &&
        login == other.login &&
        email == other.email &&
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
    _$hash = $jc(_$hash, userGroup.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResponseDTO')
          ..add('id', id)
          ..add('name', name)
          ..add('login', login)
          ..add('email', email)
          ..add('userGroup', userGroup)
          ..add('enabled', enabled))
        .toString();
  }
}

class UserResponseDTOBuilder
    implements Builder<UserResponseDTO, UserResponseDTOBuilder> {
  _$UserResponseDTO? _$v;

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

  UserGroupBuilder? _userGroup;
  UserGroupBuilder get userGroup => _$this._userGroup ??= UserGroupBuilder();
  set userGroup(UserGroupBuilder? userGroup) => _$this._userGroup = userGroup;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  UserResponseDTOBuilder() {
    UserResponseDTO._defaults(this);
  }

  UserResponseDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _login = $v.login;
      _email = $v.email;
      _userGroup = $v.userGroup?.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponseDTO other) {
    _$v = other as _$UserResponseDTO;
  }

  @override
  void update(void Function(UserResponseDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponseDTO build() => _build();

  _$UserResponseDTO _build() {
    _$UserResponseDTO _$result;
    try {
      _$result = _$v ??
          _$UserResponseDTO._(
            id: id,
            name: name,
            login: login,
            email: email,
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
            r'UserResponseDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
