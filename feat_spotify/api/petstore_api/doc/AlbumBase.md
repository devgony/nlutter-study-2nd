# openapi.model.AlbumBase

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**albumType** | **String** | The type of the album.  | 
**totalTracks** | **int** | The number of tracks in the album. | 
**availableMarkets** | **BuiltList&lt;String&gt;** | The markets in which the album is available: [ISO 3166-1 alpha-2 country codes](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). _**NOTE**: an album is considered available in a market when at least 1 of its tracks is available in that market._  | 
**externalUrls** | [**ExternalUrlObject**](ExternalUrlObject.md) |  | 
**href** | **String** | A link to the Web API endpoint providing full details of the album.  | 
**id** | **String** | The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the album.  | 
**images** | [**BuiltList&lt;ImageObject&gt;**](ImageObject.md) | The cover art for the album in various sizes, widest first.  | 
**name** | **String** | The name of the album. In case of an album takedown, the value may be an empty string.  | 
**releaseDate** | **String** | The date the album was first released.  | 
**releaseDatePrecision** | **String** | The precision with which `release_date` value is known.  | 
**restrictions** | [**AlbumRestrictionObject**](AlbumRestrictionObject.md) |  | [optional] 
**type** | **String** | The object type.  | 
**uri** | **String** | The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the album.  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


