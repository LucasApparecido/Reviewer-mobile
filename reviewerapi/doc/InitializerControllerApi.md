# reviewerapi.api.InitializerControllerApi

## Load the API package
```dart
import 'package:reviewerapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**initializerRoles**](InitializerControllerApi.md#initializerroles) | **PUT** /api/v1/initializer/{password} | 


# **initializerRoles**
> initializerRoles(password)



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getInitializerControllerApi();
final String password = password_example; // String | 

try {
    api.initializerRoles(password);
} catch on DioException (e) {
    print('Exception when calling InitializerControllerApi->initializerRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

