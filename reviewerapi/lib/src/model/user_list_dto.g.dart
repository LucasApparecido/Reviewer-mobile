// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserListDTO extends UserListDTO {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final bool? enabled;

  factory _$UserListDTO([void Function(UserListDTOBuilder)? updates]) =>
      (UserListDTOBuilder()..update(updates))._build();

  _$UserListDTO._({this.id, this.name, this.email, this.enabled}) : super._();
  @override
  UserListDTO rebuild(void Function(UserListDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListDTOBuilder toBuilder() => UserListDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserListDTO &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserListDTO')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('enabled', enabled))
        .toString();
  }
}

class UserListDTOBuilder implements Builder<UserListDTO, UserListDTOBuilder> {
  _$UserListDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  UserListDTOBuilder() {
    UserListDTO._defaults(this);
  }

  UserListDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserListDTO other) {
    _$v = other as _$UserListDTO;
  }

  @override
  void update(void Function(UserListDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserListDTO build() => _build();

  _$UserListDTO _build() {
    final _$result = _$v ??
        _$UserListDTO._(
          id: id,
          name: name,
          email: email,
          enabled: enabled,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
