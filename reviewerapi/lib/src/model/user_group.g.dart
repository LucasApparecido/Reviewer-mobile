// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserGroup extends UserGroup {
  @override
  final int? id;
  @override
  final String? name;

  factory _$UserGroup([void Function(UserGroupBuilder)? updates]) =>
      (UserGroupBuilder()..update(updates))._build();

  _$UserGroup._({this.id, this.name}) : super._();
  @override
  UserGroup rebuild(void Function(UserGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserGroupBuilder toBuilder() => UserGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserGroup && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserGroup')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class UserGroupBuilder implements Builder<UserGroup, UserGroupBuilder> {
  _$UserGroup? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserGroupBuilder() {
    UserGroup._defaults(this);
  }

  UserGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserGroup other) {
    _$v = other as _$UserGroup;
  }

  @override
  void update(void Function(UserGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserGroup build() => _build();

  _$UserGroup _build() {
    final _$result = _$v ??
        _$UserGroup._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
