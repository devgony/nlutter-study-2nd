//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/external_url_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/followers_object.dart';
import 'package:openapi/src/model/image_object.dart';
import 'package:openapi/src/model/playlist_owner_object.dart';
import 'package:openapi/src/model/paging_playlist_track_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlist_object.g.dart';

/// PlaylistObject
///
/// Properties:
/// * [collaborative] - `true` if the owner allows other users to modify the playlist. 
/// * [description] - The playlist description. _Only returned for modified, verified playlists, otherwise_ `null`. 
/// * [externalUrls] 
/// * [followers] 
/// * [href] - A link to the Web API endpoint providing full details of the playlist. 
/// * [id] - The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the playlist. 
/// * [images] - Images for the playlist. The array may be empty or contain up to three images. The images are returned by size in descending order. See [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**: If returned, the source URL for the image (`url`) is temporary and will expire in less than a day._ 
/// * [name] - The name of the playlist. 
/// * [owner] 
/// * [public] - The playlist's public/private status: `true` the playlist is public, `false` the playlist is private, `null` the playlist status is not relevant. For more about public/private status, see [Working with Playlists](/documentation/web-api/concepts/playlists) 
/// * [snapshotId] - The version identifier for the current playlist. Can be supplied in other requests to target a specific playlist version 
/// * [tracks] 
/// * [type] - The object type: \"playlist\" 
/// * [uri] - The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the playlist. 
@BuiltValue()
abstract class PlaylistObject implements Built<PlaylistObject, PlaylistObjectBuilder> {
  /// `true` if the owner allows other users to modify the playlist. 
  @BuiltValueField(wireName: r'collaborative')
  bool? get collaborative;

  /// The playlist description. _Only returned for modified, verified playlists, otherwise_ `null`. 
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'external_urls')
  ExternalUrlObject? get externalUrls;

  @BuiltValueField(wireName: r'followers')
  FollowersObject? get followers;

  /// A link to the Web API endpoint providing full details of the playlist. 
  @BuiltValueField(wireName: r'href')
  String? get href;

  /// The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the playlist. 
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Images for the playlist. The array may be empty or contain up to three images. The images are returned by size in descending order. See [Working with Playlists](/documentation/web-api/concepts/playlists). _**Note**: If returned, the source URL for the image (`url`) is temporary and will expire in less than a day._ 
  @BuiltValueField(wireName: r'images')
  BuiltList<ImageObject>? get images;

  /// The name of the playlist. 
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'owner')
  PlaylistOwnerObject? get owner;

  /// The playlist's public/private status: `true` the playlist is public, `false` the playlist is private, `null` the playlist status is not relevant. For more about public/private status, see [Working with Playlists](/documentation/web-api/concepts/playlists) 
  @BuiltValueField(wireName: r'public')
  bool? get public;

  /// The version identifier for the current playlist. Can be supplied in other requests to target a specific playlist version 
  @BuiltValueField(wireName: r'snapshot_id')
  String? get snapshotId;

  @BuiltValueField(wireName: r'tracks')
  PagingPlaylistTrackObject? get tracks;

  /// The object type: \"playlist\" 
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the playlist. 
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  PlaylistObject._();

  factory PlaylistObject([void updates(PlaylistObjectBuilder b)]) = _$PlaylistObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaylistObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaylistObject> get serializer => _$PlaylistObjectSerializer();
}

class _$PlaylistObjectSerializer implements PrimitiveSerializer<PlaylistObject> {
  @override
  final Iterable<Type> types = const [PlaylistObject, _$PlaylistObject];

  @override
  final String wireName = r'PlaylistObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaylistObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.collaborative != null) {
      yield r'collaborative';
      yield serializers.serialize(
        object.collaborative,
        specifiedType: const FullType(bool),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.followers != null) {
      yield r'followers';
      yield serializers.serialize(
        object.followers,
        specifiedType: const FullType(FollowersObject),
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
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType: const FullType(BuiltList, [FullType(ImageObject)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(PlaylistOwnerObject),
      );
    }
    if (object.public != null) {
      yield r'public';
      yield serializers.serialize(
        object.public,
        specifiedType: const FullType(bool),
      );
    }
    if (object.snapshotId != null) {
      yield r'snapshot_id';
      yield serializers.serialize(
        object.snapshotId,
        specifiedType: const FullType(String),
      );
    }
    if (object.tracks != null) {
      yield r'tracks';
      yield serializers.serialize(
        object.tracks,
        specifiedType: const FullType(PagingPlaylistTrackObject),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
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
    PlaylistObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlaylistObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'collaborative':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.collaborative = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'external_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExternalUrlObject),
          ) as ExternalUrlObject;
          result.externalUrls.replace(valueDes);
          break;
        case r'followers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FollowersObject),
          ) as FollowersObject;
          result.followers.replace(valueDes);
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
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ImageObject)]),
          ) as BuiltList<ImageObject>;
          result.images.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlaylistOwnerObject),
          ) as PlaylistOwnerObject;
          result.owner.replace(valueDes);
          break;
        case r'public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.public = valueDes;
          break;
        case r'snapshot_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.snapshotId = valueDes;
          break;
        case r'tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PagingPlaylistTrackObject),
          ) as PagingPlaylistTrackObject;
          result.tracks.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  PlaylistObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaylistObjectBuilder();
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

