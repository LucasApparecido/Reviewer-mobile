//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_dto.g.dart';

/// AuthDTO
///
/// Properties:
/// * [login] 
/// * [password] 
@BuiltValue()
abstract class AuthDTO implements Built<AuthDTO, AuthDTOBuilder> {
  @BuiltValueField(wireName: r'login')
  String? get login;

  @BuiltValueField(wireName: r'password')
  String? get password;

  AuthDTO._();

  factory AuthDTO([void updates(AuthDTOBuilder b)]) = _$AuthDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthDTO> get serializer => _$AuthDTOSerializer();
}

class _$AuthDTOSerializer implements PrimitiveSerializer<AuthDTO> {
  @override
  final Iterable<Type> types = const [AuthDTO, _$AuthDTO];

  @override
  final String wireName = r'AuthDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.login != null) {
      yield r'login';
      yield serializers.serialize(
        object.login,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'login':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.login = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthDTOBuilder();
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

