//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_object.g.dart';

/// SortObject
///
/// Properties:
/// * [direction] 
/// * [nullHandling] 
/// * [ascending] 
/// * [property] 
/// * [ignoreCase] 
@BuiltValue()
abstract class SortObject implements Built<SortObject, SortObjectBuilder> {
  @BuiltValueField(wireName: r'direction')
  String? get direction;

  @BuiltValueField(wireName: r'nullHandling')
  String? get nullHandling;

  @BuiltValueField(wireName: r'ascending')
  bool? get ascending;

  @BuiltValueField(wireName: r'property')
  String? get property;

  @BuiltValueField(wireName: r'ignoreCase')
  bool? get ignoreCase;

  SortObject._();

  factory SortObject([void updates(SortObjectBuilder b)]) = _$SortObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortObject> get serializer => _$SortObjectSerializer();
}

class _$SortObjectSerializer implements PrimitiveSerializer<SortObject> {
  @override
  final Iterable<Type> types = const [SortObject, _$SortObject];

  @override
  final String wireName = r'SortObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(String),
      );
    }
    if (object.nullHandling != null) {
      yield r'nullHandling';
      yield serializers.serialize(
        object.nullHandling,
        specifiedType: const FullType(String),
      );
    }
    if (object.ascending != null) {
      yield r'ascending';
      yield serializers.serialize(
        object.ascending,
        specifiedType: const FullType(bool),
      );
    }
    if (object.property != null) {
      yield r'property';
      yield serializers.serialize(
        object.property,
        specifiedType: const FullType(String),
      );
    }
    if (object.ignoreCase != null) {
      yield r'ignoreCase';
      yield serializers.serialize(
        object.ignoreCase,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SortObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SortObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.direction = valueDes;
          break;
        case r'nullHandling':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nullHandling = valueDes;
          break;
        case r'ascending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ascending = valueDes;
          break;
        case r'property':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.property = valueDes;
          break;
        case r'ignoreCase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreCase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SortObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortObjectBuilder();
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

