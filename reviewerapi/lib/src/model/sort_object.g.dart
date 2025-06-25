// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SortObject extends SortObject {
  @override
  final String? direction;
  @override
  final String? nullHandling;
  @override
  final bool? ascending;
  @override
  final String? property;
  @override
  final bool? ignoreCase;

  factory _$SortObject([void Function(SortObjectBuilder)? updates]) =>
      (SortObjectBuilder()..update(updates))._build();

  _$SortObject._(
      {this.direction,
      this.nullHandling,
      this.ascending,
      this.property,
      this.ignoreCase})
      : super._();
  @override
  SortObject rebuild(void Function(SortObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortObjectBuilder toBuilder() => SortObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SortObject &&
        direction == other.direction &&
        nullHandling == other.nullHandling &&
        ascending == other.ascending &&
        property == other.property &&
        ignoreCase == other.ignoreCase;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, nullHandling.hashCode);
    _$hash = $jc(_$hash, ascending.hashCode);
    _$hash = $jc(_$hash, property.hashCode);
    _$hash = $jc(_$hash, ignoreCase.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SortObject')
          ..add('direction', direction)
          ..add('nullHandling', nullHandling)
          ..add('ascending', ascending)
          ..add('property', property)
          ..add('ignoreCase', ignoreCase))
        .toString();
  }
}

class SortObjectBuilder implements Builder<SortObject, SortObjectBuilder> {
  _$SortObject? _$v;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  String? _nullHandling;
  String? get nullHandling => _$this._nullHandling;
  set nullHandling(String? nullHandling) => _$this._nullHandling = nullHandling;

  bool? _ascending;
  bool? get ascending => _$this._ascending;
  set ascending(bool? ascending) => _$this._ascending = ascending;

  String? _property;
  String? get property => _$this._property;
  set property(String? property) => _$this._property = property;

  bool? _ignoreCase;
  bool? get ignoreCase => _$this._ignoreCase;
  set ignoreCase(bool? ignoreCase) => _$this._ignoreCase = ignoreCase;

  SortObjectBuilder() {
    SortObject._defaults(this);
  }

  SortObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _direction = $v.direction;
      _nullHandling = $v.nullHandling;
      _ascending = $v.ascending;
      _property = $v.property;
      _ignoreCase = $v.ignoreCase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortObject other) {
    _$v = other as _$SortObject;
  }

  @override
  void update(void Function(SortObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SortObject build() => _build();

  _$SortObject _build() {
    final _$result = _$v ??
        _$SortObject._(
          direction: direction,
          nullHandling: nullHandling,
          ascending: ascending,
          property: property,
          ignoreCase: ignoreCase,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
