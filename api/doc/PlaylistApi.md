# moodbeat_core.api.PlaylistApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMonthlyPlaylist**](PlaylistApi.md#getmonthlyplaylist) | **GET** /api/v1/playlists/{entry_date} | Get a playlist


# **getMonthlyPlaylist**
> PlaylistsFullPlaylist getMonthlyPlaylist(entryDate, withDay)

Get a playlist

Get a playlist by entry date

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getPlaylistApi();
final String entryDate = entryDate_example; // String | Entry date in YYYY-MM-DD format
final bool withDay = true; // bool | Include day in the response

try {
    final response = api.getMonthlyPlaylist(entryDate, withDay);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlaylistApi->getMonthlyPlaylist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entryDate** | **String**| Entry date in YYYY-MM-DD format | 
 **withDay** | **bool**| Include day in the response | [optional] 

### Return type

[**PlaylistsFullPlaylist**](PlaylistsFullPlaylist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

