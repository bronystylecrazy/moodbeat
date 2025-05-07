# moodbeat_core.api.PlaylistsApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMonthlyPlaylist**](PlaylistsApi.md#getmonthlyplaylist) | **GET** /api/v1/playlists/{entry_date} | Get a playlist


# **getMonthlyPlaylist**
> BuiltList<DbFulltrack> getMonthlyPlaylist(entryDate)

Get a playlist

Get a playlist by entry date

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getPlaylistsApi();
final String entryDate = entryDate_example; // String | Entry date in YYYY-MM-DD format

try {
    final response = api.getMonthlyPlaylist(entryDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlaylistsApi->getMonthlyPlaylist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entryDate** | **String**| Entry date in YYYY-MM-DD format | 

### Return type

[**BuiltList&lt;DbFulltrack&gt;**](DbFulltrack.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

