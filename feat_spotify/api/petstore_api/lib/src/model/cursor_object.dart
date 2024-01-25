//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cursor_object.g.dart';

/// CursorObject
///
/// Properties:
/// * [after] - The cursor to use as key to find the next page of items.
/// * [before] - The cursor to use as key to find the previous page of items.
@BuiltValue()
abstract class CursorObject implements Built<CursorObject, CursorObjectBuilder> {
  /// The cursor to use as key to find the next page of items.
  @BuiltValueField(wireName: r'after')
  String? get after;

  /// The cursor to use as key to find the previous page of items.
  @BuiltValueField(wireName: r'before')
  String? get before;

  CursorObject._();

  factory CursorObject([void updates(CursorObjectBuilder b)]) = _$CursorObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CursorObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CursorObject> get serializer => _$CursorObjectSerializer();
}

class _$CursorObjectSerializer implements PrimitiveSerializer<CursorObject> {
  @override
  final Iterable<Type> types = const [CursorObject, _$CursorObject];

  @override
  final String wireName = r'CursorObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CursorObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.after != null) {
      yield r'after';
      yield serializers.serialize(
        object.after,
        specifiedType: const FullType(String),
      );
    }
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CursorObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CursorObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.after = valueDes;
          break;
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.before = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CursorObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CursorObjectBuilder();
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

