# moodbeat_core.model.SpotifyFullTrack

## Load the model package
```dart
import 'package:moodbeat_core/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**album** | [**SpotifySimpleAlbum**](SpotifySimpleAlbum.md) | The album on which the track appears. The album object includes a link in href to full information about the album. | [optional] 
**artists** | [**BuiltList&lt;SpotifySimpleArtist&gt;**](SpotifySimpleArtist.md) |  | [optional] 
**availableMarkets** | **BuiltList&lt;String&gt;** | A list of the countries in which the track can be played, identified by their ISO 3166-1 alpha-2 codes. | [optional] 
**discNumber** | **int** | The disc number (usually 1 unless the album consists of more than one disc). | [optional] 
**durationMs** | **int** | The length of the track, in milliseconds. | [optional] 
**explicit** | **bool** | Whether or not the track has explicit lyrics. true => yes, it does; false => no, it does not. | [optional] 
**externalIds** | **BuiltMap&lt;String, String&gt;** | Known external IDs for the track. | [optional] 
**externalUrls** | **BuiltMap&lt;String, String&gt;** | External URLs for this track. | [optional] 
**href** | **String** | A link to the Web API endpoint providing full details for this track. | [optional] 
**id** | **String** |  | [optional] 
**isPlayable** | **bool** | IsPlayable defines if the track is playable. It's reported when the \"market\" parameter is passed to the tracks listing API. See: https://developer.spotify.com/documentation/general/guides/track-relinking-guide/ | [optional] 
**linkedFrom** | [**SpotifyLinkedFromInfo**](SpotifyLinkedFromInfo.md) | LinkedFrom points to the linked track. It's reported when the \"market\" parameter is passed to the tracks listing API. | [optional] 
**name** | **String** |  | [optional] 
**popularity** | **int** | Popularity of the track.  The value will be between 0 and 100, with 100 being the most popular.  The popularity is calculated from both total plays and most recent plays. | [optional] 
**previewUrl** | **String** | A URL to a 30 second preview (MP3) of the track. | [optional] 
**trackNumber** | **int** | The number of the track.  If an album has several discs, the track number is the number on the specified DiscNumber. | [optional] 
**type** | **String** | Type of the track | [optional] 
**uri** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


