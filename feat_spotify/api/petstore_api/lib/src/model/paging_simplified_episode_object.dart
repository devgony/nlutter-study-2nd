//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/simplified_episode_object.dart';
import 'package:openapi/src/model/paging_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paging_simplified_episode_object.g.dart';

/// PagingSimplifiedEpisodeObject
///
/// Properties:
/// * [href] - A link to the Web API endpoint returning the full result of the request 
/// * [limit] - The maximum number of items in the response (as set in the query or by default). 
/// * [next] - URL to the next page of items. ( `null` if none) 
/// * [offset] - The offset of the items returned (as set in the query or by default) 
/// * [previous] - URL to the previous page of items. ( `null` if none) 
/// * [total] - The total number of items available to return. 
/// * [items] 
@BuiltValue(instantiable: false)
abstract class PagingSimplifiedEpisodeObject implements PagingObject {
  @BuiltValueField(wireName: r'items')
  BuiltList<SimplifiedEpisodeObject> get items;

  @BuiltValueSerializer(custom: true)
  static Serializer<PagingSimplifiedEpisodeObject> get serializer => _$PagingSimplifiedEpisodeObjectSerializer();
}

class _$PagingSimplifiedEpisodeObjectSerializer implements PrimitiveSerializer<PagingSimplifiedEpisodeObject> {
  @override
  final Iterable<Type> types = const [PagingSimplifiedEpisodeObject];

  @override
  final String wireName = r'PagingSimplifiedEpisodeObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PagingSimplifiedEpisodeObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'next';
    yield object.next == null ? null : serializers.serialize(
      object.next,
      specifiedType: const FullType.nullable(String),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(int),
    );
    yield r'previous';
    yield object.previous == null ? null : serializers.serialize(
      object.previous,
      specifiedType: const FullType.nullable(String),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(int),
    );
    yield r'href';
    yield serializers.serialize(
      object.href,
      specifiedType: const FullType(String),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SimplifiedEpisodeObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PagingSimplifiedEpisodeObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  PagingSimplifiedEpisodeObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($PagingSimplifiedEpisodeObject)) as $PagingSimplifiedEpisodeObject;
  }
}

/// a concrete implementation of [PagingSimplifiedEpisodeObject], since [PagingSimplifiedEpisodeObject] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PagingSimplifiedEpisodeObject implements PagingSimplifiedEpisodeObject, Built<$PagingSimplifiedEpisodeObject, $PagingSimplifiedEpisodeObjectBuilder> {
  $PagingSimplifiedEpisodeObject._();

  factory $PagingSimplifiedEpisodeObject([void Function($PagingSimplifiedEpisodeObjectBuilder)? updates]) = _$$PagingSimplifiedEpisodeObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PagingSimplifiedEpisodeObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PagingSimplifiedEpisodeObject> get serializer => _$$PagingSimplifiedEpisodeObjectSerializer();
}

class _$$PagingSimplifiedEpisodeObjectSerializer implements PrimitiveSerializer<$PagingSimplifiedEpisodeObject> {
  @override
  final Iterable<Type> types = const [$PagingSimplifiedEpisodeObject, _$$PagingSimplifiedEpisodeObject];

  @override
  final String wireName = r'$PagingSimplifiedEpisodeObject';

  @override
  Object serialize(
    Serializers serializers,
    $PagingSimplifiedEpisodeObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PagingSimplifiedEpisodeObject))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PagingSimplifiedEpisodeObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.next = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'offset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.offset = valueDes;
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previous = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SimplifiedEpisodeObject)]),
          ) as BuiltList<SimplifiedEpisodeObject>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $PagingSimplifiedEpisodeObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PagingSimplifiedEpisodeObjectBuilder();
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

