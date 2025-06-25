// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommentRequestDTO extends CommentRequestDTO {
  @override
  final String? content;
  @override
  final int? reviewId;

  factory _$CommentRequestDTO(
          [void Function(CommentRequestDTOBuilder)? updates]) =>
      (CommentRequestDTOBuilder()..update(updates))._build();

  _$CommentRequestDTO._({this.content, this.reviewId}) : super._();
  @override
  CommentRequestDTO rebuild(void Function(CommentRequestDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentRequestDTOBuilder toBuilder() =>
      CommentRequestDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentRequestDTO &&
        content == other.content &&
        reviewId == other.reviewId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, reviewId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentRequestDTO')
          ..add('content', content)
          ..add('reviewId', reviewId))
        .toString();
  }
}

class CommentRequestDTOBuilder
    implements Builder<CommentRequestDTO, CommentRequestDTOBuilder> {
  _$CommentRequestDTO? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  int? _reviewId;
  int? get reviewId => _$this._reviewId;
  set reviewId(int? reviewId) => _$this._reviewId = reviewId;

  CommentRequestDTOBuilder() {
    CommentRequestDTO._defaults(this);
  }

  CommentRequestDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _reviewId = $v.reviewId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentRequestDTO other) {
    _$v = other as _$CommentRequestDTO;
  }

  @override
  void update(void Function(CommentRequestDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentRequestDTO build() => _build();

  _$CommentRequestDTO _build() {
    final _$result = _$v ??
        _$CommentRequestDTO._(
          content: content,
          reviewId: reviewId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
