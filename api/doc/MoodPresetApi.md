# moodbeat_core.api.MoodPresetApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMoodPresets**](MoodPresetApi.md#getmoodpresets) | **GET** /api/v1/mood-presets | Mood Presets Handler


# **getMoodPresets**
> BuiltList<DbMoodPreset> getMoodPresets()

Mood Presets Handler

Handles mood presets related requests

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getMoodPresetApi();

try {
    final response = api.getMoodPresets();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MoodPresetApi->getMoodPresets: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DbMoodPreset&gt;**](DbMoodPreset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

