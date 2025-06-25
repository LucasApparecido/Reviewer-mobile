// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewResponseDTO extends ReviewResponseDTO {
  @override
  final int? id;
  @override
  final UserResponseDTO? user;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final DateTime? publicationDate;
  @override
  final BuiltList<ImageDTO>? images;
  @override
  final int? likesCount;
  @override
  final int? commentsCount;

  factory _$ReviewResponseDTO(
          [void Function(ReviewResponseDTOBuilder)? updates]) =>
      (ReviewResponseDTOBuilder()..update(updates))._build();

  _$ReviewResponseDTO._(
      {this.id,
      this.user,
      this.title,
      this.content,
      this.publicationDate,
      this.images,
      this.likesCount,
      this.commentsCount})
      : super._();
  @override
  ReviewResponseDTO rebuild(void Function(ReviewResponseDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewResponseDTOBuilder toBuilder() =>
      ReviewResponseDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewResponseDTO &&
        id == other.id &&
        user == other.user &&
        title == other.title &&
        content == other.content &&
        publicationDate == other.publicationDate &&
        images == other.images &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, publicationDate.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewResponseDTO')
          ..add('id', id)
          ..add('user', user)
          ..add('title', title)
          ..add('content', content)
          ..add('publicationDate', publicationDate)
          ..add('images', images)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount))
        .toString();
  }
}

class ReviewResponseDTOBuilder
    implements Builder<ReviewResponseDTO, ReviewResponseDTOBuilder> {
  _$ReviewResponseDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  UserResponseDTOBuilder? _user;
  UserResponseDTOBuilder get user => _$this._user ??= UserResponseDTOBuilder();
  set user(UserResponseDTOBuilder? user) => _$this._user = user;

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

  ListBuilder<ImageDTO>? _images;
  ListBuilder<ImageDTO> get images =>
      _$this._images ??= ListBuilder<ImageDTO>();
  set images(ListBuilder<ImageDTO>? images) => _$this._images = images;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  ReviewResponseDTOBuilder() {
    ReviewResponseDTO._defaults(this);
  }

  ReviewResponseDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _user = $v.user?.toBuilder();
      _title = $v.title;
      _content = $v.content;
      _publicationDate = $v.publicationDate;
      _images = $v.images?.toBuilder();
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewResponseDTO other) {
    _$v = other as _$ReviewResponseDTO;
  }

  @override
  void update(void Function(ReviewResponseDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewResponseDTO build() => _build();

  _$ReviewResponseDTO _build() {
    _$ReviewResponseDTO _$result;
    try {
      _$result = _$v ??
          _$ReviewResponseDTO._(
            id: id,
            user: _user?.build(),
            title: title,
            content: content,
            publicationDate: publicationDate,
            images: _images?.build(),
            likesCount: likesCount,
            commentsCount: commentsCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReviewResponseDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
