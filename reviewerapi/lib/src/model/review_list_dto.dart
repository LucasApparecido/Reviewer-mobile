//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_list_dto.g.dart';

/// ReviewListDTO
///
/// Properties:
/// * [id] 
/// * [title] 
/// * [content] 
/// * [publicationDate] 
/// * [likesCount] 
/// * [commentsCount] 
@BuiltValue()
abstract class ReviewListDTO implements Built<ReviewListDTO, ReviewListDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'publicationDate')
  DateTime? get publicationDate;

  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  @BuiltValueField(wireName: r'commentsCount')
  int? get commentsCount;

  ReviewListDTO._();

  factory ReviewListDTO([void updates(ReviewListDTOBuilder b)]) = _$ReviewListDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewListDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewListDTO> get serializer => _$ReviewListDTOSerializer();
}

class _$ReviewListDTOSerializer implements PrimitiveSerializer<ReviewListDTO> {
  @override
  final Iterable<Type> types = const [ReviewListDTO, _$ReviewListDTO];

  @override
  final String wireName = r'ReviewListDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewListDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
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
    ReviewListDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReviewListDTOBuilder result,
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
  ReviewListDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewListDTOBuilder();
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

