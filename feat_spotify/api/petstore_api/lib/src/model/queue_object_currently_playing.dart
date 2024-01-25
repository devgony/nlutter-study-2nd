//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/episode_object.dart';
import 'package:openapi/src/model/external_id_object.dart';
import 'package:openapi/src/model/artist_object.dart';
import 'package:openapi/src/model/resume_point_object.dart';
import 'package:openapi/src/model/simplified_album_object.dart';
import 'package:openapi/src/model/external_url_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/episode_restriction_object.dart';
import 'package:openapi/src/model/track_object.dart';
import 'package:openapi/src/model/episode_object_all_of_show.dart';
import 'package:openapi/src/model/image_object.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'queue_object_currently_playing.g.dart';

/// The currently playing track or episode. Can be `null`.
///
/// Properties:
/// * [album] 
/// * [artists] - The artists who performed the track. Each artist object includes a link in `href` to more detailed information about the artist. 
/// * [availableMarkets] - A list of the countries in which the track can be played, identified by their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code. 
/// * [discNumber] - The disc number (usually `1` unless the album consists of more than one disc). 
/// * [durationMs] - The episode length in milliseconds. 
/// * [explicit] - Whether or not the episode has explicit content (true = yes it does; false = no it does not OR unknown). 
/// * [externalIds] 
/// * [externalUrls] 
/// * [href] - A link to the Web API endpoint providing full details of the episode. 
/// * [id] - The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the episode. 
/// * [isPlayable] - True if the episode is playable in the given market. Otherwise false. 
/// * [linkedFrom] - Part of the response when [Track Relinking](/documentation/web-api/concepts/track-relinking) is applied, and the requested track has been replaced with different track. The track in the `linked_from` object contains information about the originally requested track. 
/// * [restrictions] 
/// * [name] - The name of the episode. 
/// * [popularity] - The popularity of the track. The value will be between 0 and 100, with 100 being the most popular.<br/>The popularity of a track is a value between 0 and 100, with 100 being the most popular. The popularity is calculated by algorithm and is based, in the most part, on the total number of plays the track has had and how recent those plays are.<br/>Generally speaking, songs that are being played a lot now will have a higher popularity than songs that were played a lot in the past. Duplicate tracks (e.g. the same track from a single and an album) are rated independently. Artist and album popularity is derived mathematically from track popularity. _**Note**: the popularity value may lag actual popularity by a few days: the value is not updated in real time._ 
/// * [previewUrl] - A link to a 30 second preview (MP3 format) of the track. Can be `null` 
/// * [trackNumber] - The number of the track. If an album has several discs, the track number is the number on the specified disc. 
/// * [type] - The object type: \"track\". 
/// * [uri] - The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the episode. 
/// * [isLocal] - Whether or not the track is from a local file. 
/// * [audioPreviewUrl] - A URL to a 30 second preview (MP3 format) of the episode. `null` if not available. 
/// * [description] - A description of the episode. HTML tags are stripped away from this field, use `html_description` field in case HTML tags are needed. 
/// * [htmlDescription] - A description of the episode. This field may contain HTML tags. 
/// * [images] - The cover art for the episode in various sizes, widest first. 
/// * [isExternallyHosted] - True if the episode is hosted outside of Spotify's CDN. 
/// * [language] - The language used in the episode, identified by a [ISO 639](https://en.wikipedia.org/wiki/ISO_639) code. This field is deprecated and might be removed in the future. Please use the `languages` field instead. 
/// * [languages] - A list of the languages used in the episode, identified by their [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code. 
/// * [releaseDate] - The date the episode was first released, for example `\"1981-12-15\"`. Depending on the precision, it might be shown as `\"1981\"` or `\"1981-12\"`. 
/// * [releaseDatePrecision] - The precision with which `release_date` value is known. 
/// * [resumePoint] 
/// * [show_] 
@BuiltValue()
abstract class QueueObjectCurrentlyPlaying implements Built<QueueObjectCurrentlyPlaying, QueueObjectCurrentlyPlayingBuilder> {
  /// One Of [EpisodeObject], [TrackObject]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'EpisodeObject': EpisodeObject,
    r'TrackObject': TrackObject,
  };

  QueueObjectCurrentlyPlaying._();

  factory QueueObjectCurrentlyPlaying([void updates(QueueObjectCurrentlyPlayingBuilder b)]) = _$QueueObjectCurrentlyPlaying;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueObjectCurrentlyPlayingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueObjectCurrentlyPlaying> get serializer => _$QueueObjectCurrentlyPlayingSerializer();
}

extension QueueObjectCurrentlyPlayingDiscriminatorExt on QueueObjectCurrentlyPlaying {
    String? get discriminatorValue {
        if (this is EpisodeObject) {
            return r'EpisodeObject';
        }
        if (this is TrackObject) {
            return r'TrackObject';
        }
        return null;
    }
}
extension QueueObjectCurrentlyPlayingBuilderDiscriminatorExt on QueueObjectCurrentlyPlayingBuilder {
    String? get discriminatorValue {
        if (this is EpisodeObjectBuilder) {
            return r'EpisodeObject';
        }
        if (this is TrackObjectBuilder) {
            return r'TrackObject';
        }
        return null;
    }
}

class _$QueueObjectCurrentlyPlayingSerializer implements PrimitiveSerializer<QueueObjectCurrentlyPlaying> {
  @override
  final Iterable<Type> types = const [QueueObjectCurrentlyPlaying, _$QueueObjectCurrentlyPlaying];

  @override
  final String wireName = r'QueueObjectCurrentlyPlaying';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueObjectCurrentlyPlaying object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueObjectCurrentlyPlaying object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  QueueObjectCurrentlyPlaying deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueObjectCurrentlyPlayingBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(QueueObjectCurrentlyPlaying.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [EpisodeObject, TrackObject, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'EpisodeObject':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(EpisodeObject),
        ) as EpisodeObject;
        oneOfType = EpisodeObject;
        break;
      case r'TrackObject':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(TrackObject),
        ) as TrackObject;
        oneOfType = TrackObject;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class QueueObjectCurrentlyPlayingTypeEnum extends EnumClass {

  /// The object type: \"track\". 
  @BuiltValueEnumConst(wireName: r'track')
  static const QueueObjectCurrentlyPlayingTypeEnum track = _$queueObjectCurrentlyPlayingTypeEnum_track;
  /// The object type: \"track\". 
  @BuiltValueEnumConst(wireName: r'episode')
  static const QueueObjectCurrentlyPlayingTypeEnum episode = _$queueObjectCurrentlyPlayingTypeEnum_episode;

  static Serializer<QueueObjectCurrentlyPlayingTypeEnum> get serializer => _$queueObjectCurrentlyPlayingTypeEnumSerializer;

  const QueueObjectCurrentlyPlayingTypeEnum._(String name): super(name);

  static BuiltSet<QueueObjectCurrentlyPlayingTypeEnum> get values => _$queueObjectCurrentlyPlayingTypeEnumValues;
  static QueueObjectCurrentlyPlayingTypeEnum valueOf(String name) => _$queueObjectCurrentlyPlayingTypeEnumValueOf(name);
}

class QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum extends EnumClass {

  /// The precision with which `release_date` value is known. 
  @BuiltValueEnumConst(wireName: r'year')
  static const QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum year = _$queueObjectCurrentlyPlayingReleaseDatePrecisionEnum_year;
  /// The precision with which `release_date` value is known. 
  @BuiltValueEnumConst(wireName: r'month')
  static const QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum month = _$queueObjectCurrentlyPlayingReleaseDatePrecisionEnum_month;
  /// The precision with which `release_date` value is known. 
  @BuiltValueEnumConst(wireName: r'day')
  static const QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum day = _$queueObjectCurrentlyPlayingReleaseDatePrecisionEnum_day;

  static Serializer<QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum> get serializer => _$queueObjectCurrentlyPlayingReleaseDatePrecisionEnumSerializer;

  const QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum._(String name): super(name);

  static BuiltSet<QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum> get values => _$queueObjectCurrentlyPlayingReleaseDatePrecisionEnumValues;
  static QueueObjectCurrentlyPlayingReleaseDatePrecisionEnum valueOf(String name) => _$queueObjectCurrentlyPlayingReleaseDatePrecisionEnumValueOf(name);
}

