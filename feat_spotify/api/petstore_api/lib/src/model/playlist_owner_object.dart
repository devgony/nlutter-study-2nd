//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/external_url_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/followers_object.dart';
import 'package:openapi/src/model/playlist_user_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlist_owner_object.g.dart';

/// PlaylistOwnerObject
///
/// Properties:
/// * [externalUrls] 
/// * [followers] 
/// * [href] - A link to the Web API endpoint for this user. 
/// * [id] - The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids) for this user. 
/// * [type] - The object type. 
/// * [uri] - The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for this user. 
/// * [displayName] - The name displayed on the user's profile. `null` if not available. 
@BuiltValue()
abstract class PlaylistOwnerObject implements PlaylistUserObject, Built<PlaylistOwnerObject, PlaylistOwnerObjectBuilder> {
  /// The name displayed on the user's profile. `null` if not available. 
  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  PlaylistOwnerObject._();

  factory PlaylistOwnerObject([void updates(PlaylistOwnerObjectBuilder b)]) = _$PlaylistOwnerObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaylistOwnerObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaylistOwnerObject> get serializer => _$PlaylistOwnerObjectSerializer();
}

class _$PlaylistOwnerObjectSerializer implements PrimitiveSerializer<PlaylistOwnerObject> {
  @override
  final Iterable<Type> types = const [PlaylistOwnerObject, _$PlaylistOwnerObject];

  @override
  final String wireName = r'PlaylistOwnerObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaylistOwnerObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.followers != null) {
      yield r'followers';
      yield serializers.serialize(
        object.followers,
        specifiedType: const FullType(FollowersObject),
      );
    }
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.externalUrls != null) {
      yield r'external_urls';
      yield serializers.serialize(
        object.externalUrls,
        specifiedType: const FullType(ExternalUrlObject),
      );
    }
    if (object.href != null) {
      yield r'href';
      yield serializers.serialize(
        object.href,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(PlaylistUserObjectTypeEnum),
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
    PlaylistOwnerObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlaylistOwnerObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'followers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FollowersObject),
          ) as FollowersObject;
          result.followers.replace(valueDes);
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'external_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExternalUrlObject),
          ) as ExternalUrlObject;
          result.externalUrls.replace(valueDes);
          break;
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlaylistUserObjectTypeEnum),
          ) as PlaylistUserObjectTypeEnum;
          result.type = valueDes;
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
  PlaylistOwnerObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaylistOwnerObjectBuilder();
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

class PlaylistOwnerObjectTypeEnum extends EnumClass {

  /// The object type. 
  @BuiltValueEnumConst(wireName: r'user')
  static const PlaylistOwnerObjectTypeEnum user = _$playlistOwnerObjectTypeEnum_user;

  static Serializer<PlaylistOwnerObjectTypeEnum> get serializer => _$playlistOwnerObjectTypeEnumSerializer;

  const PlaylistOwnerObjectTypeEnum._(String name): super(name);

  static BuiltSet<PlaylistOwnerObjectTypeEnum> get values => _$playlistOwnerObjectTypeEnumValues;
  static PlaylistOwnerObjectTypeEnum valueOf(String name) => _$playlistOwnerObjectTypeEnumValueOf(name);
}

