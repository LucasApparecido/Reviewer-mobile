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
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InitializerControllerApi();
final password = password_example; // String | 

try {
    api_instance.initializerRoles(password);
} catch (e) {
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

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

