//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_request_dto.g.dart';

/// CommentRequestDTO
///
/// Properties:
/// * [content] 
/// * [reviewId] 
@BuiltValue()
abstract class CommentRequestDTO implements Built<CommentRequestDTO, CommentRequestDTOBuilder> {
  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'reviewId')
  int? get reviewId;

  CommentRequestDTO._();

  factory CommentRequestDTO([void updates(CommentRequestDTOBuilder b)]) = _$CommentRequestDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommentRequestDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommentRequestDTO> get serializer => _$CommentRequestDTOSerializer();
}

class _$CommentRequestDTOSerializer implements PrimitiveSerializer<CommentRequestDTO> {
  @override
  final Iterable<Type> types = const [CommentRequestDTO, _$CommentRequestDTO];

  @override
  final String wireName = r'CommentRequestDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommentRequestDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
    if (object.reviewId != null) {
      yield r'reviewId';
      yield serializers.serialize(
        object.reviewId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommentRequestDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CommentRequestDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'reviewId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.reviewId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommentRequestDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommentRequestDTOBuilder();
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

