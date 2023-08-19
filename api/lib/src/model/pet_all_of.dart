//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pet_all_of.g.dart';

/// PetAllOf
///
/// Properties:
/// * [id] 
@BuiltValue(instantiable: false)
abstract class PetAllOf  {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueSerializer(custom: true)
  static Serializer<PetAllOf> get serializer => _$PetAllOfSerializer();
}

class _$PetAllOfSerializer implements PrimitiveSerializer<PetAllOf> {
  @override
  final Iterable<Type> types = const [PetAllOf];

  @override
  final String wireName = r'PetAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PetAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PetAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  PetAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($PetAllOf)) as $PetAllOf;
  }
}

/// a concrete implementation of [PetAllOf], since [PetAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PetAllOf implements PetAllOf, Built<$PetAllOf, $PetAllOfBuilder> {
  $PetAllOf._();

  factory $PetAllOf([void Function($PetAllOfBuilder)? updates]) = _$$PetAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PetAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PetAllOf> get serializer => _$$PetAllOfSerializer();
}

class _$$PetAllOfSerializer implements PrimitiveSerializer<$PetAllOf> {
  @override
  final Iterable<Type> types = const [$PetAllOf, _$$PetAllOf];

  @override
  final String wireName = r'$PetAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $PetAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PetAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PetAllOfBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $PetAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PetAllOfBuilder();
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

