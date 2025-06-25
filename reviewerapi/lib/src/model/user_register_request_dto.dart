//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_register_request_dto.g.dart';

/// UserRegisterRequestDTO
///
/// Properties:
/// * [name] 
/// * [login] 
/// * [email] 
/// * [password] 
/// * [confirmPassword] 
@BuiltValue()
abstract class UserRegisterRequestDTO implements Built<UserRegisterRequestDTO, UserRegisterRequestDTOBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'login')
  String get login;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'confirmPassword')
  String get confirmPassword;

  UserRegisterRequestDTO._();

  factory UserRegisterRequestDTO([void updates(UserRegisterRequestDTOBuilder b)]) = _$UserRegisterRequestDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserRegisterRequestDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserRegisterRequestDTO> get serializer => _$UserRegisterRequestDTOSerializer();
}

class _$UserRegisterRequestDTOSerializer implements PrimitiveSerializer<UserRegisterRequestDTO> {
  @override
  final Iterable<Type> types = const [UserRegisterRequestDTO, _$UserRegisterRequestDTO];

  @override
  final String wireName = r'UserRegisterRequestDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserRegisterRequestDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'login';
    yield serializers.serialize(
      object.login,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'confirmPassword';
    yield serializers.serialize(
      object.confirmPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserRegisterRequestDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserRegisterRequestDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserRegisterRequestDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserRegisterRequestDTOBuilder();
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

