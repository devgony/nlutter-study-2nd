//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/simplified_artist_object.dart';
import 'package:openapi/src/model/simplified_album_object.dart';
import 'package:openapi/src/model/external_url_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/album_restriction_object.dart';
import 'package:openapi/src/model/image_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'artist_discography_album_object.g.dart';

/// ArtistDiscographyAlbumObject
///
/// Properties:
/// * [albumType] - The type of the album. 
/// * [totalTracks] - The number of tracks in the album.
/// * [availableMarkets] - The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). _**NOTE**: an album is considered available in a market when at least 1 of its tracks is available in that market._ 
/// * [externalUrls] 
/// * [href] - A link to the Web API endpoint providing full details of the album. 
/// * [id] - The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album. 
/// * [images] - The cover art for the album in various sizes, widest first. 
/// * [name] - The name of the album. In case of an album takedown, the value may be an empty string. 
/// * [releaseDate] - The date the album was first released. 
/// * [releaseDatePrecision] - The precision with which `release_date` value is known. 
/// * [restrictions] 
/// * [type] - The object type. 
/// * [uri] - The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the album. 
/// * [artists] - The artists of the album. Each artist object includes a link in `href` to more detailed information about the artist. 
/// * [albumGroup] - This field describes the relationship between the artist and the album. 
@BuiltValue()
abstract class ArtistDiscographyAlbumObject implements SimplifiedAlbumObject, Built<ArtistDiscographyAlbumObject, ArtistDiscographyAlbumObjectBuilder> {
  /// This field describes the relationship between the artist and the album. 
  @BuiltValueField(wireName: r'album_group')
  ArtistDiscographyAlbumObjectAlbumGroupEnum get albumGroup;
  // enum albumGroupEnum {  album,  single,  compilation,  appears_on,  };

  ArtistDiscographyAlbumObject._();

  factory ArtistDiscographyAlbumObject([void updates(ArtistDiscographyAlbumObjectBuilder b)]) = _$ArtistDiscographyAlbumObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArtistDiscographyAlbumObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArtistDiscographyAlbumObject> get serializer => _$ArtistDiscographyAlbumObjectSerializer();
}

class _$ArtistDiscographyAlbumObjectSerializer implements PrimitiveSerializer<ArtistDiscographyAlbumObject> {
  @override
  final Iterable<Type> types = const [ArtistDiscographyAlbumObject, _$ArtistDiscographyAlbumObject];

  @override
  final String wireName = r'ArtistDiscographyAlbumObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArtistDiscographyAlbumObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'images';
    yield serializers.serialize(
      object.images,
      specifiedType: const FullType(BuiltList, [FullType(ImageObject)]),
    );
    yield r'release_date';
    yield serializers.serialize(
      object.releaseDate,
      specifiedType: const FullType(String),
    );
    if (object.restrictions != null) {
      yield r'restrictions';
      yield serializers.serialize(
        object.restrictions,
        specifiedType: const FullType(AlbumRestrictionObject),
      );
    }
    yield r'external_urls';
    yield serializers.serialize(
      object.externalUrls,
      specifiedType: const FullType(ExternalUrlObject),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AlbumBaseTypeEnum),
    );
    yield r'album_group';
    yield serializers.serialize(
      object.albumGroup,
      specifiedType: const FullType(ArtistDiscographyAlbumObjectAlbumGroupEnum),
    );
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    yield r'total_tracks';
    yield serializers.serialize(
      object.totalTracks,
      specifiedType: const FullType(int),
    );
    yield r'artists';
    yield serializers.serialize(
      object.artists,
      specifiedType: const FullType(BuiltList, [FullType(SimplifiedArtistObject)]),
    );
    yield r'album_type';
    yield serializers.serialize(
      object.albumType,
      specifiedType: const FullType(AlbumBaseAlbumTypeEnum),
    );
    yield r'available_markets';
    yield serializers.serialize(
      object.availableMarkets,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'release_date_precision';
    yield serializers.serialize(
      object.releaseDatePrecision,
      specifiedType: const FullType(AlbumBaseReleaseDatePrecisionEnum),
    );
    yield r'href';
    yield serializers.serialize(
      object.href,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ArtistDiscographyAlbumObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ArtistDiscographyAlbumObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ImageObject)]),
          ) as BuiltList<ImageObject>;
          result.images.replace(valueDes);
          break;
        case r'release_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.releaseDate = valueDes;
          break;
        case r'restrictions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlbumRestrictionObject),
          ) as AlbumRestrictionObject;
          result.restrictions.replace(valueDes);
          break;
        case r'external_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExternalUrlObject),
          ) as ExternalUrlObject;
          result.externalUrls.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlbumBaseTypeEnum),
          ) as AlbumBaseTypeEnum;
          result.type = valueDes;
          break;
        case r'album_group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ArtistDiscographyAlbumObjectAlbumGroupEnum),
          ) as ArtistDiscographyAlbumObjectAlbumGroupEnum;
          result.albumGroup = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'total_tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTracks = valueDes;
          break;
        case r'artists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SimplifiedArtistObject)]),
          ) as BuiltList<SimplifiedArtistObject>;
          result.artists.replace(valueDes);
          break;
        case r'album_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlbumBaseAlbumTypeEnum),
          ) as AlbumBaseAlbumTypeEnum;
          result.albumType = valueDes;
          break;
        case r'available_markets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.availableMarkets.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'release_date_precision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlbumBaseReleaseDatePrecisionEnum),
          ) as AlbumBaseReleaseDatePrecisionEnum;
          result.releaseDatePrecision = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArtistDiscographyAlbumObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArtistDiscographyAlbumObjectBuilder();
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

class ArtistDiscographyAlbumObjectAlbumTypeEnum extends EnumClass {

  /// The type of the album. 
  @BuiltValueEnumConst(wireName: r'album')
  static const ArtistDiscographyAlbumObjectAlbumTypeEnum album = _$artistDiscographyAlbumObjectAlbumTypeEnum_album;
  /// The type of the album. 
  @BuiltValueEnumConst(wireName: r'single')
  static const ArtistDiscographyAlbumObjectAlbumTypeEnum single = _$artistDiscographyAlbumObjectAlbumTypeEnum_single;
  /// The type of the album. 
  @BuiltValueEnumConst(wireName: r'compilation')
  static const ArtistDiscographyAlbumObjectAlbumTypeEnum compilation = _$artistDiscographyAlbumObjectAlbumTypeEnum_compilation;

  static Serializer<ArtistDiscographyAlbumObjectAlbumTypeEnum> get serializer => _$artistDiscographyAlbumObjectAlbumTypeEnumSerializer;

  const ArtistDiscographyAlbumObjectAlbumTypeEnum._(String name): super(name);

  static BuiltSet<ArtistDiscographyAlbumObjectAlbumTypeEnum> get values => _$artistDiscographyAlbumObjectAlbumTypeEnumValues;
  static ArtistDiscographyAlbumObjectAlbumTypeEnum valueOf(String name) => _$artistDiscographyAlbumObjectAlbumTypeEnumValueOf(name);
}

class ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum extends EnumClass {

  /// The precision with which `release_date` value is known. 
  @BuiltValueEnumConst(wireName: r'year')
  static const ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum year = _$artistDiscographyAlbumObjectReleaseDatePrecisionEnum_year;
  /// The precision with which `release_date` value is known. 
  @BuiltValueEnumConst(wireName: r'month')
  static const ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum month = _$artistDiscographyAlbumObjectReleaseDatePrecisionEnum_month;
  /// The precision with which `release_date` value is known. 
  @BuiltValueEnumConst(wireName: r'day')
  static const ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum day = _$artistDiscographyAlbumObjectReleaseDatePrecisionEnum_day;

  static Serializer<ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum> get serializer => _$artistDiscographyAlbumObjectReleaseDatePrecisionEnumSerializer;

  const ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum._(String name): super(name);

  static BuiltSet<ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum> get values => _$artistDiscographyAlbumObjectReleaseDatePrecisionEnumValues;
  static ArtistDiscographyAlbumObjectReleaseDatePrecisionEnum valueOf(String name) => _$artistDiscographyAlbumObjectReleaseDatePrecisionEnumValueOf(name);
}

class ArtistDiscographyAlbumObjectTypeEnum extends EnumClass {

  /// The object type. 
  @BuiltValueEnumConst(wireName: r'album')
  static const ArtistDiscographyAlbumObjectTypeEnum album = _$artistDiscographyAlbumObjectTypeEnum_album;

  static Serializer<ArtistDiscographyAlbumObjectTypeEnum> get serializer => _$artistDiscographyAlbumObjectTypeEnumSerializer;

  const ArtistDiscographyAlbumObjectTypeEnum._(String name): super(name);

  static BuiltSet<ArtistDiscographyAlbumObjectTypeEnum> get values => _$artistDiscographyAlbumObjectTypeEnumValues;
  static ArtistDiscographyAlbumObjectTypeEnum valueOf(String name) => _$artistDiscographyAlbumObjectTypeEnumValueOf(name);
}

class ArtistDiscographyAlbumObjectAlbumGroupEnum extends EnumClass {

  /// This field describes the relationship between the artist and the album. 
  @BuiltValueEnumConst(wireName: r'album')
  static const ArtistDiscographyAlbumObjectAlbumGroupEnum album = _$artistDiscographyAlbumObjectAlbumGroupEnum_album;
  /// This field describes the relationship between the artist and the album. 
  @BuiltValueEnumConst(wireName: r'single')
  static const ArtistDiscographyAlbumObjectAlbumGroupEnum single = _$artistDiscographyAlbumObjectAlbumGroupEnum_single;
  /// This field describes the relationship between the artist and the album. 
  @BuiltValueEnumConst(wireName: r'compilation')
  static const ArtistDiscographyAlbumObjectAlbumGroupEnum compilation = _$artistDiscographyAlbumObjectAlbumGroupEnum_compilation;
  /// This field describes the relationship between the artist and the album. 
  @BuiltValueEnumConst(wireName: r'appears_on')
  static const ArtistDiscographyAlbumObjectAlbumGroupEnum appearsOn = _$artistDiscographyAlbumObjectAlbumGroupEnum_appearsOn;

  static Serializer<ArtistDiscographyAlbumObjectAlbumGroupEnum> get serializer => _$artistDiscographyAlbumObjectAlbumGroupEnumSerializer;

  const ArtistDiscographyAlbumObjectAlbumGroupEnum._(String name): super(name);

  static BuiltSet<ArtistDiscographyAlbumObjectAlbumGroupEnum> get values => _$artistDiscographyAlbumObjectAlbumGroupEnumValues;
  static ArtistDiscographyAlbumObjectAlbumGroupEnum valueOf(String name) => _$artistDiscographyAlbumObjectAlbumGroupEnumValueOf(name);
}

