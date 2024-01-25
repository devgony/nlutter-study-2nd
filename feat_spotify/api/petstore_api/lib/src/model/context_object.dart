//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/external_url_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_object.g.dart';

/// ContextObject
///
/// Properties:
/// * [type] - The object type, e.g. \"artist\", \"playlist\", \"album\", \"show\". 
/// * [href] - A link to the Web API endpoint providing full details of the track.
/// * [externalUrls] 
/// * [uri] - The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the context. 
@BuiltValue()
abstract class ContextObject implements Built<ContextObject, ContextObjectBuilder> {
  /// The object type, e.g. \"artist\", \"playlist\", \"album\", \"show\". 
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// A link to the Web API endpoint providing full details of the track.
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'external_urls')
  ExternalUrlObject? get externalUrls;

  /// The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the context. 
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  ContextObject._();

  factory ContextObject([void updates(ContextObjectBuilder b)]) = _$ContextObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextObject> get serializer => _$ContextObjectSerializer();
}

class _$ContextObjectSerializer implements PrimitiveSerializer<ContextObject> {
  @override
  final Iterable<Type> types = const [ContextObject, _$ContextObject];

  @override
  final String wireName = r'ContextObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.href != null) {
      yield r'href';
      yield serializers.serialize(
        object.href,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalUrls != null) {
      yield r'external_urls';
      yield serializers.serialize(
        object.externalUrls,
        specifiedType: const FullType(ExternalUrlObject),
      );
    }
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContextObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'external_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExternalUrlObject),
          ) as ExternalUrlObject;
          result.externalUrls.replace(valueDes);
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextObjectBuilder();
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

