# reviewerapi.api.UserControllerApi

## Load the API package
```dart
import 'package:reviewerapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UserControllerApi.md#create) | **POST** /api/v1/user | 
[**delete**](UserControllerApi.md#delete) | **DELETE** /api/v1/user/{id} | 
[**getById**](UserControllerApi.md#getbyid) | **GET** /api/v1/user/{id} | 
[**getLogUsers**](UserControllerApi.md#getlogusers) | **GET** /api/v1/user/getLogUsers | 
[**getUserGroup**](UserControllerApi.md#getusergroup) | **GET** /api/v1/user/getUserGroup | 
[**isUserEnabled**](UserControllerApi.md#isuserenabled) | **GET** /api/v1/user/{id}/enabled | 
[**listAll**](UserControllerApi.md#listall) | **GET** /api/v1/user | 
[**toggleUserAccess**](UserControllerApi.md#toggleuseraccess) | **PUT** /api/v1/user/{id}/access | 
[**update**](UserControllerApi.md#update) | **PUT** /api/v1/user/{id} | 


# **create**
> create(userRequestDTO)



Endpoint to register a object

### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final userRequestDTO = UserRequestDTO(); // UserRequestDTO | 

try {
    api_instance.create(userRequestDTO);
} catch (e) {
    print('Exception when calling UserControllerApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userRequestDTO** | [**UserRequestDTO**](UserRequestDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(id)



Endpoint to remove a object

### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final id = 789; // int | 

try {
    api_instance.delete(id);
} catch (e) {
    print('Exception when calling UserControllerApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getById**
> UserResponseDTO getById(id)



Endpoint to search for an object by primary key

### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getById(id);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**UserResponseDTO**](UserResponseDTO.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLogUsers**
> PageUserLog getLogUsers(pageable)



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final pageable = ; // Pageable | 

try {
    final result = api_instance.getLogUsers(pageable);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getLogUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageable** | [**Pageable**](.md)|  | 

### Return type

[**PageUserLog**](PageUserLog.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroup**
> List<UserGroup> getUserGroup()



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();

try {
    final result = api_instance.getUserGroup();
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->getUserGroup: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserGroup>**](UserGroup.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isUserEnabled**
> bool isUserEnabled(id)



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.isUserEnabled(id);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->isUserEnabled: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

**bool**

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAll**
> PageUserListDTO listAll(pageable)



Endpoint to list all objects

### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final pageable = ; // Pageable | 

try {
    final result = api_instance.listAll(pageable);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->listAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageable** | [**Pageable**](.md)|  | 

### Return type

[**PageUserListDTO**](PageUserListDTO.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **toggleUserAccess**
> toggleUserAccess(id, enable)



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final id = 789; // int | 
final enable = true; // bool | 

try {
    api_instance.toggleUserAccess(id, enable);
} catch (e) {
    print('Exception when calling UserControllerApi->toggleUserAccess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **enable** | **bool**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> UserResponseDTO update(id, userRequestDTO)



Endpoint to edit a object

### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserControllerApi();
final id = 789; // int | 
final userRequestDTO = UserRequestDTO(); // UserRequestDTO | 

try {
    final result = api_instance.update(id, userRequestDTO);
    print(result);
} catch (e) {
    print('Exception when calling UserControllerApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **userRequestDTO** | [**UserRequestDTO**](UserRequestDTO.md)|  | 

### Return type

[**UserResponseDTO**](UserResponseDTO.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

