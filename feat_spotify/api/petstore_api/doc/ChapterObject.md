# openapi.model.ChapterObject

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**audioPreviewUrl** | **String** | A URL to a 30 second preview (MP3 format) of the chapter. `null` if not available.  | 
**availableMarkets** | **BuiltList&lt;String&gt;** | A list of the countries in which the chapter can be played, identified by their [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.  | [optional] 
**chapterNumber** | **int** | The number of the chapter  | 
**description** | **String** | A description of the chapter. HTML tags are stripped away from this field, use `html_description` field in case HTML tags are needed.  | 
**htmlDescription** | **String** | A description of the chapter. This field may contain HTML tags.  | 
**durationMs** | **int** | The chapter length in milliseconds.  | 
**explicit** | **bool** | Whether or not the chapter has explicit content (true = yes it does; false = no it does not OR unknown).  | 
**externalUrls** | [**ExternalUrlObject**](ExternalUrlObject.md) |  | 
**href** | **String** | A link to the Web API endpoint providing full details of the chapter.  | 
**id** | **String** | The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the chapter.  | 
**images** | [**BuiltList&lt;ImageObject&gt;**](ImageObject.md) | The cover art for the chapter in various sizes, widest first.  | 
**isPlayable** | **bool** | True if the chapter is playable in the given market. Otherwise false.  | 
**languages** | **BuiltList&lt;String&gt;** | A list of the languages used in the chapter, identified by their [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639) code.  | 
**name** | **String** | The name of the chapter.  | 
**releaseDate** | **String** | The date the chapter was first released, for example `\"1981-12-15\"`. Depending on the precision, it might be shown as `\"1981\"` or `\"1981-12\"`.  | 
**releaseDatePrecision** | **String** | The precision with which `release_date` value is known.  | 
**resumePoint** | [**ResumePointObject**](ResumePointObject.md) |  | 
**type** | **String** | The object type.  | 
**uri** | **String** | The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the chapter.  | 
**restrictions** | [**ChapterRestrictionObject**](ChapterRestrictionObject.md) |  | [optional] 
**audiobook** | [**ChapterObjectAllOfAudiobook**](ChapterObjectAllOfAudiobook.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


