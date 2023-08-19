//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'new_pet.g.dart';

/// NewPet
///
/// Properties:
/// * [name] 
/// * [tag] 
@BuiltValue(instantiable: false)
abstract class NewPet  {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'tag')
  String? get tag;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewPet> get serializer => _$NewPetSerializer();
}

class _$NewPetSerializer implements PrimitiveSerializer<NewPet> {
  @override
  final Iterable<Type> types = const [NewPet];

  @override
  final String wireName = r'NewPet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewPet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.tag != null) {
      yield r'tag';
      yield serializers.serialize(
        object.tag,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewPet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  NewPet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($NewPet)) as $NewPet;
  }
}

/// a concrete implementation of [NewPet], since [NewPet] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NewPet implements NewPet, Built<$NewPet, $NewPetBuilder> {
  $NewPet._();

  factory $NewPet([void Function($NewPetBuilder)? updates]) = _$$NewPet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NewPetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NewPet> get serializer => _$$NewPetSerializer();
}

class _$$NewPetSerializer implements PrimitiveSerializer<$NewPet> {
  @override
  final Iterable<Type> types = const [$NewPet, _$$NewPet];

  @override
  final String wireName = r'$NewPet';

  @override
  Object serialize(
    Serializers serializers,
    $NewPet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(NewPet))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewPetBuilder result,
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
        case r'tag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tag = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $NewPet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NewPetBuilder();
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

