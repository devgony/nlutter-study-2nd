//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resume_point_object.g.dart';

/// ResumePointObject
///
/// Properties:
/// * [fullyPlayed] - Whether or not the episode has been fully played by the user. 
/// * [resumePositionMs] - The user's most recent position in the episode in milliseconds. 
@BuiltValue()
abstract class ResumePointObject implements Built<ResumePointObject, ResumePointObjectBuilder> {
  /// Whether or not the episode has been fully played by the user. 
  @BuiltValueField(wireName: r'fully_played')
  bool? get fullyPlayed;

  /// The user's most recent position in the episode in milliseconds. 
  @BuiltValueField(wireName: r'resume_position_ms')
  int? get resumePositionMs;

  ResumePointObject._();

  factory ResumePointObject([void updates(ResumePointObjectBuilder b)]) = _$ResumePointObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResumePointObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResumePointObject> get serializer => _$ResumePointObjectSerializer();
}

class _$ResumePointObjectSerializer implements PrimitiveSerializer<ResumePointObject> {
  @override
  final Iterable<Type> types = const [ResumePointObject, _$ResumePointObject];

  @override
  final String wireName = r'ResumePointObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResumePointObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fullyPlayed != null) {
      yield r'fully_played';
      yield serializers.serialize(
        object.fullyPlayed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.resumePositionMs != null) {
      yield r'resume_position_ms';
      yield serializers.serialize(
        object.resumePositionMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResumePointObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResumePointObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fully_played':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.fullyPlayed = valueDes;
          break;
        case r'resume_position_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.resumePositionMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResumePointObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResumePointObjectBuilder();
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

