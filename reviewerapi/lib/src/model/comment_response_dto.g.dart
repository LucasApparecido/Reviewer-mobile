// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommentResponseDTO extends CommentResponseDTO {
  @override
  final int? id;
  @override
  final String? content;
  @override
  final DateTime? createdAt;
  @override
  final UserResponseDTO? user;

  factory _$CommentResponseDTO(
          [void Function(CommentResponseDTOBuilder)? updates]) =>
      (CommentResponseDTOBuilder()..update(updates))._build();

  _$CommentResponseDTO._({this.id, this.content, this.createdAt, this.user})
      : super._();
  @override
  CommentResponseDTO rebuild(
          void Function(CommentResponseDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentResponseDTOBuilder toBuilder() =>
      CommentResponseDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentResponseDTO &&
        id == other.id &&
        content == other.content &&
        createdAt == other.createdAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentResponseDTO')
          ..add('id', id)
          ..add('content', content)
          ..add('createdAt', createdAt)
          ..add('user', user))
        .toString();
  }
}

class CommentResponseDTOBuilder
    implements Builder<CommentResponseDTO, CommentResponseDTOBuilder> {
  _$CommentResponseDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  UserResponseDTOBuilder? _user;
  UserResponseDTOBuilder get user => _$this._user ??= UserResponseDTOBuilder();
  set user(UserResponseDTOBuilder? user) => _$this._user = user;

  CommentResponseDTOBuilder() {
    CommentResponseDTO._defaults(this);
  }

  CommentResponseDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _content = $v.content;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentResponseDTO other) {
    _$v = other as _$CommentResponseDTO;
  }

  @override
  void update(void Function(CommentResponseDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentResponseDTO build() => _build();

  _$CommentResponseDTO _build() {
    _$CommentResponseDTO _$result;
    try {
      _$result = _$v ??
          _$CommentResponseDTO._(
            id: id,
            content: content,
            createdAt: createdAt,
            user: _user?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CommentResponseDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
