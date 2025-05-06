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

