# moodbeat_core.model.SpotifySimpleAlbum

## Load the model package
```dart
import 'package:moodbeat_core/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**albumGroup** | **String** | The field is present when getting an artist’s albums. Possible values are “album”, “single”, “compilation”, “appears_on”. Compare to album_type this field represents relationship between the artist and the album. | [optional] 
**albumType** | **String** | The type of the album: one of \"album\", \"single\", or \"compilation\". | [optional] 
**artists** | [**BuiltList&lt;SpotifySimpleArtist&gt;**](SpotifySimpleArtist.md) | A slice of SimpleArtists | [optional] 
**availableMarkets** | **BuiltList&lt;String&gt;** | The markets in which the album is available, identified using ISO 3166-1 alpha-2 country codes.  Note that al album is considered available in a market when at least 1 of its tracks is available in that market. | [optional] 
**externalUrls** | **BuiltMap&lt;String, String&gt;** | Known external URLs for this album. | [optional] 
**href** | **String** | A link to the Web API endpoint providing full details of the album. | [optional] 
**id** | **String** | The SpotifyID for the album. | [optional] 
**images** | [**BuiltList&lt;SpotifyImage&gt;**](SpotifyImage.md) | The cover art for the album in various sizes, widest first. | [optional] 
**name** | **String** | The name of the album. | [optional] 
**releaseDate** | **String** | The date the album was first released.  For example, \"1981-12-15\". Depending on the ReleaseDatePrecision, it might be shown as \"1981\" or \"1981-12\". You can use ReleaseDateTime to convert this to a time.Time value. | [optional] 
**releaseDatePrecision** | **String** | The precision with which ReleaseDate value is known: \"year\", \"month\", or \"day\" | [optional] 
**totalTracks** | **int** | The number of tracks on the album. | [optional] 
**uri** | **String** | The SpotifyURI for the album. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


