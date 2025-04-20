# moodbeat_core.api.AuthApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentProfile**](AuthApi.md#getcurrentprofile) | **GET** /api/v1/auth/profile | Get current user profile


# **getCurrentProfile**
> AuthProfileResponse getCurrentProfile()

Get current user profile

Get profile of the currently authenticated user

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getAuthApi();

try {
    final response = api.getCurrentProfile();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->getCurrentProfile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthProfileResponse**](AuthProfileResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

