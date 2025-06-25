// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_comment_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageCommentListDTO extends PageCommentListDTO {
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final int? size;
  @override
  final BuiltList<CommentListDTO>? content;
  @override
  final int? number;
  @override
  final BuiltList<SortObject>? sort;
  @override
  final bool? first;
  @override
  final bool? last;
  @override
  final int? numberOfElements;
  @override
  final PageableObject? pageable;
  @override
  final bool? empty;

  factory _$PageCommentListDTO(
          [void Function(PageCommentListDTOBuilder)? updates]) =>
      (PageCommentListDTOBuilder()..update(updates))._build();

  _$PageCommentListDTO._(
      {this.totalPages,
      this.totalElements,
      this.size,
      this.content,
      this.number,
      this.sort,
      this.first,
      this.last,
      this.numberOfElements,
      this.pageable,
      this.empty})
      : super._();
  @override
  PageCommentListDTO rebuild(
          void Function(PageCommentListDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageCommentListDTOBuilder toBuilder() =>
      PageCommentListDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageCommentListDTO &&
        totalPages == other.totalPages &&
        totalElements == other.totalElements &&
        size == other.size &&
        content == other.content &&
        number == other.number &&
        sort == other.sort &&
        first == other.first &&
        last == other.last &&
        numberOfElements == other.numberOfElements &&
        pageable == other.pageable &&
        empty == other.empty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, totalElements.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, first.hashCode);
    _$hash = $jc(_$hash, last.hashCode);
    _$hash = $jc(_$hash, numberOfElements.hashCode);
    _$hash = $jc(_$hash, pageable.hashCode);
    _$hash = $jc(_$hash, empty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageCommentListDTO')
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('size', size)
          ..add('content', content)
          ..add('number', number)
          ..add('sort', sort)
          ..add('first', first)
          ..add('last', last)
          ..add('numberOfElements', numberOfElements)
          ..add('pageable', pageable)
          ..add('empty', empty))
        .toString();
  }
}

class PageCommentListDTOBuilder
    implements Builder<PageCommentListDTO, PageCommentListDTOBuilder> {
  _$PageCommentListDTO? _$v;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalElements;
  int? get totalElements => _$this._totalElements;
  set totalElements(int? totalElements) =>
      _$this._totalElements = totalElements;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  ListBuilder<CommentListDTO>? _content;
  ListBuilder<CommentListDTO> get content =>
      _$this._content ??= ListBuilder<CommentListDTO>();
  set content(ListBuilder<CommentListDTO>? content) =>
      _$this._content = content;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  ListBuilder<SortObject>? _sort;
  ListBuilder<SortObject> get sort =>
      _$this._sort ??= ListBuilder<SortObject>();
  set sort(ListBuilder<SortObject>? sort) => _$this._sort = sort;

  bool? _first;
  bool? get first => _$this._first;
  set first(bool? first) => _$this._first = first;

  bool? _last;
  bool? get last => _$this._last;
  set last(bool? last) => _$this._last = last;

  int? _numberOfElements;
  int? get numberOfElements => _$this._numberOfElements;
  set numberOfElements(int? numberOfElements) =>
      _$this._numberOfElements = numberOfElements;

  PageableObjectBuilder? _pageable;
  PageableObjectBuilder get pageable =>
      _$this._pageable ??= PageableObjectBuilder();
  set pageable(PageableObjectBuilder? pageable) => _$this._pageable = pageable;

  bool? _empty;
  bool? get empty => _$this._empty;
  set empty(bool? empty) => _$this._empty = empty;

  PageCommentListDTOBuilder() {
    PageCommentListDTO._defaults(this);
  }

  PageCommentListDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalPages = $v.totalPages;
      _totalElements = $v.totalElements;
      _size = $v.size;
      _content = $v.content?.toBuilder();
      _number = $v.number;
      _sort = $v.sort?.toBuilder();
      _first = $v.first;
      _last = $v.last;
      _numberOfElements = $v.numberOfElements;
      _pageable = $v.pageable?.toBuilder();
      _empty = $v.empty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageCommentListDTO other) {
    _$v = other as _$PageCommentListDTO;
  }

  @override
  void update(void Function(PageCommentListDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageCommentListDTO build() => _build();

  _$PageCommentListDTO _build() {
    _$PageCommentListDTO _$result;
    try {
      _$result = _$v ??
          _$PageCommentListDTO._(
            totalPages: totalPages,
            totalElements: totalElements,
            size: size,
            content: _content?.build(),
            number: number,
            sort: _sort?.build(),
            first: first,
            last: last,
            numberOfElements: numberOfElements,
            pageable: _pageable?.build(),
            empty: empty,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();

        _$failedField = 'sort';
        _sort?.build();

        _$failedField = 'pageable';
        _pageable?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PageCommentListDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
