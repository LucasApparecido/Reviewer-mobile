// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLog extends UserLog {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? login;
  @override
  final String? action;
  @override
  final DateTime? date;

  factory _$UserLog([void Function(UserLogBuilder)? updates]) =>
      (UserLogBuilder()..update(updates))._build();

  _$UserLog._({this.id, this.name, this.login, this.action, this.date})
      : super._();
  @override
  UserLog rebuild(void Function(UserLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLogBuilder toBuilder() => UserLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLog &&
        id == other.id &&
        name == other.name &&
        login == other.login &&
        action == other.action &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserLog')
          ..add('id', id)
          ..add('name', name)
          ..add('login', login)
          ..add('action', action)
          ..add('date', date))
        .toString();
  }
}

class UserLogBuilder implements Builder<UserLog, UserLogBuilder> {
  _$UserLog? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  UserLogBuilder() {
    UserLog._defaults(this);
  }

  UserLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _login = $v.login;
      _action = $v.action;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLog other) {
    _$v = other as _$UserLog;
  }

  @override
  void update(void Function(UserLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLog build() => _build();

  _$UserLog _build() {
    final _$result = _$v ??
        _$UserLog._(
          id: id,
          name: name,
          login: login,
          action: action,
          date: date,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
