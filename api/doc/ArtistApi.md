# moodbeat_core.api.ArtistApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listArtists**](ArtistApi.md#listartists) | **GET** /api/v1/artists | List all artists


# **listArtists**
> BuiltList<DbArtist> listArtists()

List all artists

Get a list of all artists

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getArtistApi();

try {
    final response = api.listArtists();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ArtistApi->listArtists: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DbArtist&gt;**](DbArtist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

