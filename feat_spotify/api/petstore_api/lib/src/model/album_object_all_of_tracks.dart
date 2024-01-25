//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/simplified_track_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/paging_simplified_track_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'album_object_all_of_tracks.g.dart';

/// The tracks of the album. 
///
/// Properties:
/// * [href] - A link to the Web API endpoint returning the full result of the request 
/// * [limit] - The maximum number of items in the response (as set in the query or by default). 
/// * [next] - URL to the next page of items. ( `null` if none) 
/// * [offset] - The offset of the items returned (as set in the query or by default) 
/// * [previous] - URL to the previous page of items. ( `null` if none) 
/// * [total] - The total number of items available to return. 
/// * [items] 
@BuiltValue()
abstract class AlbumObjectAllOfTracks implements PagingSimplifiedTrackObject, Built<AlbumObjectAllOfTracks, AlbumObjectAllOfTracksBuilder> {
  AlbumObjectAllOfTracks._();

  factory AlbumObjectAllOfTracks([void updates(AlbumObjectAllOfTracksBuilder b)]) = _$AlbumObjectAllOfTracks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlbumObjectAllOfTracksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlbumObjectAllOfTracks> get serializer => _$AlbumObjectAllOfTracksSerializer();
}

class _$AlbumObjectAllOfTracksSerializer implements PrimitiveSerializer<AlbumObjectAllOfTracks> {
  @override
  final Iterable<Type> types = const [AlbumObjectAllOfTracks, _$AlbumObjectAllOfTracks];

  @override
  final String wireName = r'AlbumObjectAllOfTracks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlbumObjectAllOfTracks object, {
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
      specifiedType: const FullType(BuiltList, [FullType(SimplifiedTrackObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlbumObjectAllOfTracks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlbumObjectAllOfTracksBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(SimplifiedTrackObject)]),
          ) as BuiltList<SimplifiedTrackObject>;
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
  AlbumObjectAllOfTracks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlbumObjectAllOfTracksBuilder();
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

