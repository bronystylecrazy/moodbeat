# moodbeat_core.api.TrackApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSuggestedTracks**](TrackApi.md#getsuggestedtracks) | **GET** /api/v1/suggest | Suggests a track based on the user&#39;s mood and entry date.


# **getSuggestedTracks**
> BuiltList<SpotifyFullTrack> getSuggestedTracks(mood, entryDate)

Suggests a track based on the user's mood and entry date.

Suggests a track based on the user's mood and entry date.

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getTrackApi();
final String mood = mood_example; // String | Mood
final String entryDate = entryDate_example; // String | Entry Date

try {
    final response = api.getSuggestedTracks(mood, entryDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackApi->getSuggestedTracks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mood** | **String**| Mood | 
 **entryDate** | **String**| Entry Date | 

### Return type

[**BuiltList&lt;SpotifyFullTrack&gt;**](SpotifyFullTrack.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

