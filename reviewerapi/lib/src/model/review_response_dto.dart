//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:reviewerapi/src/model/image_dto.dart';
import 'package:reviewerapi/src/model/user_response_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_response_dto.g.dart';

/// ReviewResponseDTO
///
/// Properties:
/// * [id] 
/// * [user] 
/// * [title] 
/// * [content] 
/// * [publicationDate] 
/// * [images] 
/// * [likesCount] 
/// * [commentsCount] 
@BuiltValue()
abstract class ReviewResponseDTO implements Built<ReviewResponseDTO, ReviewResponseDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'user')
  UserResponseDTO? get user;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'publicationDate')
  DateTime? get publicationDate;

  @BuiltValueField(wireName: r'images')
  BuiltList<ImageDTO>? get images;

  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  @BuiltValueField(wireName: r'commentsCount')
  int? get commentsCount;

  ReviewResponseDTO._();

  factory ReviewResponseDTO([void updates(ReviewResponseDTOBuilder b)]) = _$ReviewResponseDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewResponseDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewResponseDTO> get serializer => _$ReviewResponseDTOSerializer();
}

class _$ReviewResponseDTOSerializer implements PrimitiveSerializer<ReviewResponseDTO> {
  @override
  final Iterable<Type> types = const [ReviewResponseDTO, _$ReviewResponseDTO];

  @override
  final String wireName = r'ReviewResponseDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewResponseDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(UserResponseDTO),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
    if (object.publicationDate != null) {
      yield r'publicationDate';
      yield serializers.serialize(
        object.publicationDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType: const FullType(BuiltList, [FullType(ImageDTO)]),
      );
    }
    if (object.likesCount != null) {
      yield r'likesCount';
      yield serializers.serialize(
        object.likesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.commentsCount != null) {
      yield r'commentsCount';
      yield serializers.serialize(
        object.commentsCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewResponseDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReviewResponseDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserResponseDTO),
          ) as UserResponseDTO;
          result.user.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'publicationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.publicationDate = valueDes;
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ImageDTO)]),
          ) as BuiltList<ImageDTO>;
          result.images.replace(valueDes);
          break;
        case r'likesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.likesCount = valueDes;
          break;
        case r'commentsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.commentsCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewResponseDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewResponseDTOBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

