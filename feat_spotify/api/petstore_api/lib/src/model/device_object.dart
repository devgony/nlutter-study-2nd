//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_object.g.dart';

/// DeviceObject
///
/// Properties:
/// * [id] - The device ID. This ID is unique and persistent to some extent. However, this is not guaranteed and any cached `device_id` should periodically be cleared out and refetched as necessary.
/// * [isActive] - If this device is the currently active device.
/// * [isPrivateSession] - If this device is currently in a private session.
/// * [isRestricted] - Whether controlling this device is restricted. At present if this is \"true\" then no Web API commands will be accepted by this device.
/// * [name] - A human-readable name for the device. Some devices have a name that the user can configure (e.g. \\\"Loudest speaker\\\") and some devices have a generic name associated with the manufacturer or device model.
/// * [type] - Device type, such as \"computer\", \"smartphone\" or \"speaker\".
/// * [volumePercent] - The current volume in percent.
/// * [supportsVolume] - If this device can be used to set the volume.
@BuiltValue()
abstract class DeviceObject implements Built<DeviceObject, DeviceObjectBuilder> {
  /// The device ID. This ID is unique and persistent to some extent. However, this is not guaranteed and any cached `device_id` should periodically be cleared out and refetched as necessary.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// If this device is the currently active device.
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  /// If this device is currently in a private session.
  @BuiltValueField(wireName: r'is_private_session')
  bool? get isPrivateSession;

  /// Whether controlling this device is restricted. At present if this is \"true\" then no Web API commands will be accepted by this device.
  @BuiltValueField(wireName: r'is_restricted')
  bool? get isRestricted;

  /// A human-readable name for the device. Some devices have a name that the user can configure (e.g. \\\"Loudest speaker\\\") and some devices have a generic name associated with the manufacturer or device model.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Device type, such as \"computer\", \"smartphone\" or \"speaker\".
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// The current volume in percent.
  @BuiltValueField(wireName: r'volume_percent')
  int? get volumePercent;

  /// If this device can be used to set the volume.
  @BuiltValueField(wireName: r'supports_volume')
  bool? get supportsVolume;

  DeviceObject._();

  factory DeviceObject([void updates(DeviceObjectBuilder b)]) = _$DeviceObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceObject> get serializer => _$DeviceObjectSerializer();
}

class _$DeviceObjectSerializer implements PrimitiveSerializer<DeviceObject> {
  @override
  final Iterable<Type> types = const [DeviceObject, _$DeviceObject];

  @override
  final String wireName = r'DeviceObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPrivateSession != null) {
      yield r'is_private_session';
      yield serializers.serialize(
        object.isPrivateSession,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isRestricted != null) {
      yield r'is_restricted';
      yield serializers.serialize(
        object.isRestricted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.volumePercent != null) {
      yield r'volume_percent';
      yield serializers.serialize(
        object.volumePercent,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.supportsVolume != null) {
      yield r'supports_volume';
      yield serializers.serialize(
        object.supportsVolume,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'is_private_session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPrivateSession = valueDes;
          break;
        case r'is_restricted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRestricted = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'volume_percent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.volumePercent = valueDes;
          break;
        case r'supports_volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsVolume = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceObjectBuilder();
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

