//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:reviewerapi/src/model/user_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_response_dto.g.dart';

/// CommentResponseDTO
///
/// Properties:
/// * [id] 
/// * [content] 
/// * [createdAt] 
/// * [user] 
@BuiltValue()
abstract class CommentResponseDTO implements Built<CommentResponseDTO, CommentResponseDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'user')
  UserResponseDTO? get user;

  CommentResponseDTO._();

  factory CommentResponseDTO([void updates(CommentResponseDTOBuilder b)]) = _$CommentResponseDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommentResponseDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommentResponseDTO> get serializer => _$CommentResponseDTOSerializer();
}

class _$CommentResponseDTOSerializer implements PrimitiveSerializer<CommentResponseDTO> {
  @override
  final Iterable<Type> types = const [CommentResponseDTO, _$CommentResponseDTO];

  @override
  final String wireName = r'CommentResponseDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommentResponseDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(UserResponseDTO),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommentResponseDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CommentResponseDTOBuilder result,
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
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserResponseDTO),
          ) as UserResponseDTO;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommentResponseDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommentResponseDTOBuilder();
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

