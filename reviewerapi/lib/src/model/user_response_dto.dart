//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:reviewerapi/src/model/user_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_response_dto.g.dart';

/// UserResponseDTO
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [login] 
/// * [email] 
/// * [userGroup] 
/// * [enabled] 
@BuiltValue()
abstract class UserResponseDTO implements Built<UserResponseDTO, UserResponseDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'login')
  String? get login;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'userGroup')
  UserGroup? get userGroup;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  UserResponseDTO._();

  factory UserResponseDTO([void updates(UserResponseDTOBuilder b)]) = _$UserResponseDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserResponseDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserResponseDTO> get serializer => _$UserResponseDTOSerializer();
}

class _$UserResponseDTOSerializer implements PrimitiveSerializer<UserResponseDTO> {
  @override
  final Iterable<Type> types = const [UserResponseDTO, _$UserResponseDTO];

  @override
  final String wireName = r'UserResponseDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserResponseDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.login != null) {
      yield r'login';
      yield serializers.serialize(
        object.login,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.userGroup != null) {
      yield r'userGroup';
      yield serializers.serialize(
        object.userGroup,
        specifiedType: const FullType(UserGroup),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserResponseDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserResponseDTOBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'login':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.login = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'userGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserGroup),
          ) as UserGroup;
          result.userGroup.replace(valueDes);
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserResponseDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserResponseDTOBuilder();
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

