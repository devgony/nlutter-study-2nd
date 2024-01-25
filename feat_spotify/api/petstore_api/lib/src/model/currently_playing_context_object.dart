//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/disallows_object.dart';
import 'package:openapi/src/model/device_object.dart';
import 'package:openapi/src/model/context_object.dart';
import 'package:openapi/src/model/queue_object_currently_playing.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'currently_playing_context_object.g.dart';

/// CurrentlyPlayingContextObject
///
/// Properties:
/// * [device] 
/// * [repeatState] - off, track, context
/// * [shuffleState] - If shuffle is on or off.
/// * [context] 
/// * [timestamp] - Unix Millisecond Timestamp when data was fetched.
/// * [progressMs] - Progress into the currently playing track or episode. Can be `null`.
/// * [isPlaying] - If something is currently playing, return `true`.
/// * [item] 
/// * [currentlyPlayingType] - The object type of the currently playing item. Can be one of `track`, `episode`, `ad` or `unknown`. 
/// * [actions] 
@BuiltValue()
abstract class CurrentlyPlayingContextObject implements Built<CurrentlyPlayingContextObject, CurrentlyPlayingContextObjectBuilder> {
  @BuiltValueField(wireName: r'device')
  DeviceObject? get device;

  /// off, track, context
  @BuiltValueField(wireName: r'repeat_state')
  String? get repeatState;

  /// If shuffle is on or off.
  @BuiltValueField(wireName: r'shuffle_state')
  bool? get shuffleState;

  @BuiltValueField(wireName: r'context')
  ContextObject? get context;

  /// Unix Millisecond Timestamp when data was fetched.
  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  /// Progress into the currently playing track or episode. Can be `null`.
  @BuiltValueField(wireName: r'progress_ms')
  int? get progressMs;

  /// If something is currently playing, return `true`.
  @BuiltValueField(wireName: r'is_playing')
  bool? get isPlaying;

  @BuiltValueField(wireName: r'item')
  QueueObjectCurrentlyPlaying? get item;

  /// The object type of the currently playing item. Can be one of `track`, `episode`, `ad` or `unknown`. 
  @BuiltValueField(wireName: r'currently_playing_type')
  String? get currentlyPlayingType;

  @BuiltValueField(wireName: r'actions')
  DisallowsObject? get actions;

  CurrentlyPlayingContextObject._();

  factory CurrentlyPlayingContextObject([void updates(CurrentlyPlayingContextObjectBuilder b)]) = _$CurrentlyPlayingContextObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurrentlyPlayingContextObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrentlyPlayingContextObject> get serializer => _$CurrentlyPlayingContextObjectSerializer();
}

class _$CurrentlyPlayingContextObjectSerializer implements PrimitiveSerializer<CurrentlyPlayingContextObject> {
  @override
  final Iterable<Type> types = const [CurrentlyPlayingContextObject, _$CurrentlyPlayingContextObject];

  @override
  final String wireName = r'CurrentlyPlayingContextObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrentlyPlayingContextObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.device != null) {
      yield r'device';
      yield serializers.serialize(
        object.device,
        specifiedType: const FullType(DeviceObject),
      );
    }
    if (object.repeatState != null) {
      yield r'repeat_state';
      yield serializers.serialize(
        object.repeatState,
        specifiedType: const FullType(String),
      );
    }
    if (object.shuffleState != null) {
      yield r'shuffle_state';
      yield serializers.serialize(
        object.shuffleState,
        specifiedType: const FullType(bool),
      );
    }
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType(ContextObject),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(int),
      );
    }
    if (object.progressMs != null) {
      yield r'progress_ms';
      yield serializers.serialize(
        object.progressMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.isPlaying != null) {
      yield r'is_playing';
      yield serializers.serialize(
        object.isPlaying,
        specifiedType: const FullType(bool),
      );
    }
    if (object.item != null) {
      yield r'item';
      yield serializers.serialize(
        object.item,
        specifiedType: const FullType(QueueObjectCurrentlyPlaying),
      );
    }
    if (object.currentlyPlayingType != null) {
      yield r'currently_playing_type';
      yield serializers.serialize(
        object.currentlyPlayingType,
        specifiedType: const FullType(String),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(DisallowsObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CurrentlyPlayingContextObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CurrentlyPlayingContextObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceObject),
          ) as DeviceObject;
          result.device.replace(valueDes);
          break;
        case r'repeat_state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.repeatState = valueDes;
          break;
        case r'shuffle_state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.shuffleState = valueDes;
          break;
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContextObject),
          ) as ContextObject;
          result.context.replace(valueDes);
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
          break;
        case r'progress_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.progressMs = valueDes;
          break;
        case r'is_playing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPlaying = valueDes;
          break;
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QueueObjectCurrentlyPlaying),
          ) as QueueObjectCurrentlyPlaying;
          result.item.replace(valueDes);
          break;
        case r'currently_playing_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currentlyPlayingType = valueDes;
          break;
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DisallowsObject),
          ) as DisallowsObject;
          result.actions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CurrentlyPlayingContextObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurrentlyPlayingContextObjectBuilder();
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

