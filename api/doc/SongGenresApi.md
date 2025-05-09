# moodbeat_core.api.SongGenresApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listSongGenres**](SongGenresApi.md#listsonggenres) | **GET** /api/v1/song-genres | List song genres


# **listSongGenres**
> BuiltList<DbGenre> listSongGenres()

List song genres

List song genres

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getSongGenresApi();

try {
    final response = api.listSongGenres();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SongGenresApi->listSongGenres: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DbGenre&gt;**](DbGenre.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

