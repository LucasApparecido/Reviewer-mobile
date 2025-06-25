//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:reviewerapi/src/model/user_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_request_dto.g.dart';

/// UserRequestDTO
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [login] 
/// * [email] 
/// * [password] 
/// * [confirmPassword] 
/// * [userGroup] 
/// * [enabled] 
@BuiltValue()
abstract class UserRequestDTO implements Built<UserRequestDTO, UserRequestDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'login')
  String? get login;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'confirmPassword')
  String? get confirmPassword;

  @BuiltValueField(wireName: r'userGroup')
  UserGroup? get userGroup;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  UserRequestDTO._();

  factory UserRequestDTO([void updates(UserRequestDTOBuilder b)]) = _$UserRequestDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserRequestDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserRequestDTO> get serializer => _$UserRequestDTOSerializer();
}

class _$UserRequestDTOSerializer implements PrimitiveSerializer<UserRequestDTO> {
  @override
  final Iterable<Type> types = const [UserRequestDTO, _$UserRequestDTO];

  @override
  final String wireName = r'UserRequestDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserRequestDTO object, {
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
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirmPassword != null) {
      yield r'confirmPassword';
      yield serializers.serialize(
        object.confirmPassword,
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
    UserRequestDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserRequestDTOBuilder result,
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'confirmPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmPassword = valueDes;
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
  UserRequestDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserRequestDTOBuilder();
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

