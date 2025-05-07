# moodbeat_core.api.ProfileApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserProfile**](ProfileApi.md#getuserprofile) | **GET** /api/v1/profile | Get user profile
[**getUserSettings**](ProfileApi.md#getusersettings) | **GET** /api/v1/profile/settings | Get user settings
[**hideArtist**](ProfileApi.md#hideartist) | **POST** /api/v1/profile/selected-artists/{artist_id}/hide | Hide artist
[**listSelectedArtists**](ProfileApi.md#listselectedartists) | **GET** /api/v1/profile/selected-artists | List selected artists
[**selectArtists**](ProfileApi.md#selectartists) | **PUT** /api/v1/profile/selected-artists | Select artists
[**showArtist**](ProfileApi.md#showartist) | **POST** /api/v1/profile/selected-artists/{artist_id}/show | Show artist


# **getUserProfile**
> DbGetUserByIdRow getUserProfile()

Get user profile

Get user profile

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    final response = api.getUserProfile();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->getUserProfile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DbGetUserByIdRow**](DbGetUserByIdRow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSettings**
> DbUserSetting getUserSettings()

Get user settings

Get user settings

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    final response = api.getUserSettings();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->getUserSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DbUserSetting**](DbUserSetting.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hideArtist**
> DbArtist hideArtist(artistId)

Hide artist

Hide artist

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();
final String artistId = artistId_example; // String | Artist ID

try {
    final response = api.hideArtist(artistId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->hideArtist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistId** | **String**| Artist ID | 

### Return type

[**DbArtist**](DbArtist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSelectedArtists**
> BuiltList<DbArtist> listSelectedArtists()

List selected artists

Get a list of selected artists

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    final response = api.listSelectedArtists();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->listSelectedArtists: $e\n');
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

# **selectArtists**
> BuiltList<DbArtist> selectArtists(artists)

Select artists

Select artists

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();
final BuiltList<String> artists = ; // BuiltList<String> | List of artist IDs

try {
    final response = api.selectArtists(artists);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->selectArtists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artists** | [**BuiltList&lt;String&gt;**](String.md)| List of artist IDs | 

### Return type

[**BuiltList&lt;DbArtist&gt;**](DbArtist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **showArtist**
> DbArtist showArtist(artistId)

Show artist

Show artist

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();
final String artistId = artistId_example; // String | Artist ID

try {
    final response = api.showArtist(artistId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->showArtist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artistId** | **String**| Artist ID | 

### Return type

[**DbArtist**](DbArtist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

