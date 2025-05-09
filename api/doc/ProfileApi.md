# moodbeat_core.api.ProfileApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearDefaultPresets**](ProfileApi.md#cleardefaultpresets) | **DELETE** /api/v1/profile/mood-presets | Clear default presets
[**clearSelectedArtists**](ProfileApi.md#clearselectedartists) | **DELETE** /api/v1/profile/selected-artists | Clear selected artists
[**clearSongGenres**](ProfileApi.md#clearsonggenres) | **DELETE** /api/v1/profile/song-genres | Clear song genres
[**clearStressfulPresets**](ProfileApi.md#clearstressfulpresets) | **DELETE** /api/v1/profile/stressful-presets | Clear stressful presets
[**finishUserSetup**](ProfileApi.md#finishusersetup) | **PUT** /api/v1/profile/setup | Finish user setup
[**getUserProfile**](ProfileApi.md#getuserprofile) | **GET** /api/v1/profile | Get user profile
[**getUserSettings**](ProfileApi.md#getusersettings) | **GET** /api/v1/profile/settings | Get user settings
[**hideArtist**](ProfileApi.md#hideartist) | **POST** /api/v1/profile/selected-artists/{artist_id}/hide | Hide artist
[**listDefaultPresets**](ProfileApi.md#listdefaultpresets) | **GET** /api/v1/profile/mood-presets | List default presets
[**listSelectedArtists**](ProfileApi.md#listselectedartists) | **GET** /api/v1/profile/selected-artists | List selected artists
[**listSelectedSongGenres**](ProfileApi.md#listselectedsonggenres) | **GET** /api/v1/profile/song-genres | List song genres
[**listStressfulPresets**](ProfileApi.md#liststressfulpresets) | **GET** /api/v1/profile/stressful-presets | List stressful presets
[**selectArtists**](ProfileApi.md#selectartists) | **PUT** /api/v1/profile/selected-artists | Select artists
[**selectDefaultPreset**](ProfileApi.md#selectdefaultpreset) | **PUT** /api/v1/profile/mood-presets | Select a default preset
[**selectSongGenres**](ProfileApi.md#selectsonggenres) | **PUT** /api/v1/profile/song-genres | Select song genres
[**selectStressfulPreset**](ProfileApi.md#selectstressfulpreset) | **PUT** /api/v1/profile/stressful-presets | Select a stressful preset
[**showArtist**](ProfileApi.md#showartist) | **POST** /api/v1/profile/selected-artists/{artist_id}/show | Show artist
[**updateUserSettings**](ProfileApi.md#updateusersettings) | **PUT** /api/v1/profile/settings | Update user settings


# **clearDefaultPresets**
> clearDefaultPresets()

Clear default presets

Clear default presets

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    api.clearDefaultPresets();
} catch on DioException (e) {
    print('Exception when calling ProfileApi->clearDefaultPresets: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearSelectedArtists**
> DbArtist clearSelectedArtists()

Clear selected artists

Clear selected artists

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    final response = api.clearSelectedArtists();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->clearSelectedArtists: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DbArtist**](DbArtist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearSongGenres**
> clearSongGenres()

Clear song genres

Clear song genres

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    api.clearSongGenres();
} catch on DioException (e) {
    print('Exception when calling ProfileApi->clearSongGenres: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearStressfulPresets**
> clearStressfulPresets()

Clear stressful presets

Clear stressful presets

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    api.clearStressfulPresets();
} catch on DioException (e) {
    print('Exception when calling ProfileApi->clearStressfulPresets: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finishUserSetup**
> finishUserSetup()

Finish user setup

Finish user setup

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    api.finishUserSetup();
} catch on DioException (e) {
    print('Exception when calling ProfileApi->finishUserSetup: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **listDefaultPresets**
> BuiltList<DbListSelectedPresetsByUserRow> listDefaultPresets()

List default presets

List default presets

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    final response = api.listDefaultPresets();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->listDefaultPresets: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DbListSelectedPresetsByUserRow&gt;**](DbListSelectedPresetsByUserRow.md)

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

# **listSelectedSongGenres**
> BuiltList<DbUserSelectedGenre> listSelectedSongGenres()

List song genres

List song genres

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    final response = api.listSelectedSongGenres();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->listSelectedSongGenres: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DbUserSelectedGenre&gt;**](DbUserSelectedGenre.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStressfulPresets**
> BuiltList<DbListSelectedStressfulPresetsByUserRow> listStressfulPresets()

List stressful presets

List stressful presets

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();

try {
    final response = api.listStressfulPresets();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->listStressfulPresets: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DbListSelectedStressfulPresetsByUserRow&gt;**](DbListSelectedStressfulPresetsByUserRow.md)

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
final ProfileSelectArtistsMutation artists = ; // ProfileSelectArtistsMutation | Artist IDs

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
 **artists** | [**ProfileSelectArtistsMutation**](ProfileSelectArtistsMutation.md)| Artist IDs | 

### Return type

[**BuiltList&lt;DbArtist&gt;**](DbArtist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **selectDefaultPreset**
> DbUserSelectedPreset selectDefaultPreset(presetId)

Select a default preset

Select a default preset

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();
final ProfileSelectDefaultPresetMutation presetId = ; // ProfileSelectDefaultPresetMutation | Preset IDs

try {
    final response = api.selectDefaultPreset(presetId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->selectDefaultPreset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **presetId** | [**ProfileSelectDefaultPresetMutation**](ProfileSelectDefaultPresetMutation.md)| Preset IDs | 

### Return type

[**DbUserSelectedPreset**](DbUserSelectedPreset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **selectSongGenres**
> BuiltList<DbUserSelectedGenre> selectSongGenres(genreId)

Select song genres

Select song genres

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();
final ProfileSelectSongGenresMutation genreId = ; // ProfileSelectSongGenresMutation | Genre IDs

try {
    final response = api.selectSongGenres(genreId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->selectSongGenres: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **genreId** | [**ProfileSelectSongGenresMutation**](ProfileSelectSongGenresMutation.md)| Genre IDs | 

### Return type

[**BuiltList&lt;DbUserSelectedGenre&gt;**](DbUserSelectedGenre.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **selectStressfulPreset**
> DbUserSelectedStressfulPreset selectStressfulPreset(presetId)

Select a stressful preset

Select a stressful preset

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();
final ProfileSelectStressfulPresetMutation presetId = ; // ProfileSelectStressfulPresetMutation | Preset IDs

try {
    final response = api.selectStressfulPreset(presetId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->selectStressfulPreset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **presetId** | [**ProfileSelectStressfulPresetMutation**](ProfileSelectStressfulPresetMutation.md)| Preset IDs | 

### Return type

[**DbUserSelectedStressfulPreset**](DbUserSelectedStressfulPreset.md)

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

# **updateUserSettings**
> DbUserSetting updateUserSettings(settings)

Update user settings

Update user settings

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getProfileApi();
final UpdateUserSettingsMutation settings = ; // UpdateUserSettingsMutation | User settings

try {
    final response = api.updateUserSettings(settings);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileApi->updateUserSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settings** | [**UpdateUserSettingsMutation**](UpdateUserSettingsMutation.md)| User settings | 

### Return type

[**DbUserSetting**](DbUserSetting.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

