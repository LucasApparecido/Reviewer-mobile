// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageDTO extends ImageDTO {
  @override
  final int? id;
  @override
  final String? image;

  factory _$ImageDTO([void Function(ImageDTOBuilder)? updates]) =>
      (ImageDTOBuilder()..update(updates))._build();

  _$ImageDTO._({this.id, this.image}) : super._();
  @override
  ImageDTO rebuild(void Function(ImageDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageDTOBuilder toBuilder() => ImageDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageDTO && id == other.id && image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageDTO')
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class ImageDTOBuilder implements Builder<ImageDTO, ImageDTOBuilder> {
  _$ImageDTO? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ImageDTOBuilder() {
    ImageDTO._defaults(this);
  }

  ImageDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageDTO other) {
    _$v = other as _$ImageDTO;
  }

  @override
  void update(void Function(ImageDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageDTO build() => _build();

  _$ImageDTO _build() {
    final _$result = _$v ??
        _$ImageDTO._(
          id: id,
          image: image,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
