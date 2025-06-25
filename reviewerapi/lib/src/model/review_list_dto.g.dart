// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewListDTO extends ReviewListDTO {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final DateTime? publicationDate;
  @override
  final int? likesCount;
  @override
  final int? commentsCount;

  factory _$ReviewListDTO([void Function(ReviewListDTOBuilder)? updates]) =>
      (ReviewListDTOBuilder()..update(updates))._build();

  _$ReviewListDTO._(
      {this.id,
      this.title,
      this.content,
      this.publicationDate,
      this.likesCount,
      this.commentsCount})
      : super._();
  @override
  ReviewListDTO rebuild(void Function(ReviewListDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewListDTOBuilder toBuilder() => ReviewListDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewListDTO &&
        id == other.id &&
        title == other.title &&
        content == other.content &&
        publicationDate == other.publicationDate &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, publicationDate.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewListDTO')
          ..add('id', id)
          ..add('title', title)
          ..add('content', content)
          ..add('publicationDate', publicationDate)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount))
        .toString();
  }
}

class ReviewListDTOBuilder
    implements Builder<ReviewListDTO, ReviewListDTOBuilder> {
  _$ReviewListDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DateTime? _publicationDate;
  DateTime? get publicationDate => _$this._publicationDate;
  set publicationDate(DateTime? publicationDate) =>
      _$this._publicationDate = publicationDate;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  ReviewListDTOBuilder() {
    ReviewListDTO._defaults(this);
  }

  ReviewListDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _content = $v.content;
      _publicationDate = $v.publicationDate;
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewListDTO other) {
    _$v = other as _$ReviewListDTO;
  }

  @override
  void update(void Function(ReviewListDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewListDTO build() => _build();

  _$ReviewListDTO _build() {
    final _$result = _$v ??
        _$ReviewListDTO._(
          id: id,
          title: title,
          content: content,
          publicationDate: publicationDate,
          likesCount: likesCount,
          commentsCount: commentsCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
