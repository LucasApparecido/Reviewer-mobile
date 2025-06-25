// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewRequestDTO extends ReviewRequestDTO {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? content;

  factory _$ReviewRequestDTO(
          [void Function(ReviewRequestDTOBuilder)? updates]) =>
      (ReviewRequestDTOBuilder()..update(updates))._build();

  _$ReviewRequestDTO._({this.id, this.title, this.content}) : super._();
  @override
  ReviewRequestDTO rebuild(void Function(ReviewRequestDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewRequestDTOBuilder toBuilder() =>
      ReviewRequestDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewRequestDTO &&
        id == other.id &&
        title == other.title &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewRequestDTO')
          ..add('id', id)
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class ReviewRequestDTOBuilder
    implements Builder<ReviewRequestDTO, ReviewRequestDTOBuilder> {
  _$ReviewRequestDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ReviewRequestDTOBuilder() {
    ReviewRequestDTO._defaults(this);
  }

  ReviewRequestDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewRequestDTO other) {
    _$v = other as _$ReviewRequestDTO;
  }

  @override
  void update(void Function(ReviewRequestDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewRequestDTO build() => _build();

  _$ReviewRequestDTO _build() {
    final _$result = _$v ??
        _$ReviewRequestDTO._(
          id: id,
          title: title,
          content: content,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
