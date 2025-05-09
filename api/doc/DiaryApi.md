# moodbeat_core.api.DiaryApi

## Load the API package
```dart
import 'package:moodbeat_core/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDiaryEntry**](DiaryApi.md#creatediaryentry) | **POST** /api/v1/diary-entries | Create a new diary entry
[**getDiaryEntryByDate**](DiaryApi.md#getdiaryentrybydate) | **GET** /api/v1/diary-entries/date/{date} | Diary Handler
[**getDiaryEntryByID**](DiaryApi.md#getdiaryentrybyid) | **GET** /api/v1/diary-entries/{id} | Diary Handler
[**listDiaryEntriesByDateRange**](DiaryApi.md#listdiaryentriesbydaterange) | **GET** /api/v1/diary-entries | List diary entries by date range


# **createDiaryEntry**
> DbDiaryEntry createDiaryEntry(entryDate, content, emotion, image)

Create a new diary entry

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getDiaryApi();
final String entryDate = entryDate_example; // String | Entry date in YYYY-MM-DD format
final String content = content_example; // String | Diary content
final String emotion = emotion_example; // String | Emotion keyword
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | Optional image file

try {
    final response = api.createDiaryEntry(entryDate, content, emotion, image);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiaryApi->createDiaryEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entryDate** | **String**| Entry date in YYYY-MM-DD format | 
 **content** | **String**| Diary content | 
 **emotion** | **String**| Emotion keyword | 
 **image** | **MultipartFile**| Optional image file | [optional] 

### Return type

[**DbDiaryEntry**](DbDiaryEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDiaryEntryByDate**
> DbDiaryEntry getDiaryEntryByDate(date)

Diary Handler

Handles diary-related requests

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getDiaryApi();
final String date = date_example; // String | Diary entry date

try {
    final response = api.getDiaryEntryByDate(date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiaryApi->getDiaryEntryByDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| Diary entry date | 

### Return type

[**DbDiaryEntry**](DbDiaryEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDiaryEntryByID**
> DbDiaryEntry getDiaryEntryByID(id)

Diary Handler

Handles diary-related requests

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getDiaryApi();
final String id = id_example; // String | Diary entry ID

try {
    final response = api.getDiaryEntryByID(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiaryApi->getDiaryEntryByID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Diary entry ID | 

### Return type

[**DbDiaryEntry**](DbDiaryEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDiaryEntriesByDateRange**
> BuiltList<DbListDiaryEntriesByDateRangeRow> listDiaryEntriesByDateRange(startDate, endDate)

List diary entries by date range

### Example
```dart
import 'package:moodbeat_core/api.dart';

final api = MoodbeatCore().getDiaryApi();
final String startDate = startDate_example; // String | Start date (YYYY-MM-DD)
final String endDate = endDate_example; // String | End date (YYYY-MM-DD)

try {
    final response = api.listDiaryEntriesByDateRange(startDate, endDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiaryApi->listDiaryEntriesByDateRange: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| Start date (YYYY-MM-DD) | 
 **endDate** | **String**| End date (YYYY-MM-DD) | 

### Return type

[**BuiltList&lt;DbListDiaryEntriesByDateRangeRow&gt;**](DbListDiaryEntriesByDateRangeRow.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

