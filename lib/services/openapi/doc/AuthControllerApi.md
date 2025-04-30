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
> Object login(authDTO)



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthControllerApi();
final authDTO = AuthDTO(); // AuthDTO | 

try {
    final result = api_instance.login(authDTO);
    print(result);
} catch (e) {
    print('Exception when calling AuthControllerApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authDTO** | [**AuthDTO**](AuthDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> Object logout()



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthControllerApi();

try {
    final result = api_instance.logout();
    print(result);
} catch (e) {
    print('Exception when calling AuthControllerApi->logout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refresh**
> Object refresh(refreshToken)



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthControllerApi();
final refreshToken = refreshToken_example; // String | 

try {
    final result = api_instance.refresh(refreshToken);
    print(result);
} catch (e) {
    print('Exception when calling AuthControllerApi->refresh: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

