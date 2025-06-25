# reviewerapi.api.AuthControllerApi

## Load the API package
```dart
import 'package:reviewerapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthControllerApi.md#login) | **POST** /api/v1/auth/login | 
[**logout**](AuthControllerApi.md#logout) | **GET** /api/v1/auth/logout | 
[**refresh**](AuthControllerApi.md#refresh) | **GET** /api/v1/auth/refresh | 


# **login**
> JsonObject login(authDTO)



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getAuthControllerApi();
final AuthDTO authDTO = ; // AuthDTO | 

try {
    final response = api.login(authDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authDTO** | [**AuthDTO**](AuthDTO.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> JsonObject logout()



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getAuthControllerApi();

try {
    final response = api.logout();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->logout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refresh**
> JsonObject refresh(refreshToken)



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getAuthControllerApi();
final String refreshToken = refreshToken_example; // String | 

try {
    final response = api.refresh(refreshToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthControllerApi->refresh: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

