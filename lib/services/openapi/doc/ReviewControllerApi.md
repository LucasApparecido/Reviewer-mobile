# reviewerapi.api.ReviewControllerApi

## Load the API package
```dart
import 'package:reviewerapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create1**](ReviewControllerApi.md#create1) | **POST** /api/v1/review | 
[**delete1**](ReviewControllerApi.md#delete1) | **DELETE** /api/v1/review/{id} | 
[**getById1**](ReviewControllerApi.md#getbyid1) | **GET** /api/v1/review/{id} | 
[**listAll1**](ReviewControllerApi.md#listall1) | **GET** /api/v1/review | 
[**update1**](ReviewControllerApi.md#update1) | **PUT** /api/v1/review/{id} | 
[**viewReview**](ReviewControllerApi.md#viewreview) | **GET** /api/v1/review/view/{id} | 


# **create1**
> create1(update1Request)



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

final api_instance = ReviewControllerApi();
final update1Request = Update1Request(); // Update1Request | 

try {
    api_instance.create1(update1Request);
} catch (e) {
    print('Exception when calling ReviewControllerApi->create1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update1Request** | [**Update1Request**](Update1Request.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete1**
> delete1(id)



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

final api_instance = ReviewControllerApi();
final id = 789; // int | 

try {
    api_instance.delete1(id);
} catch (e) {
    print('Exception when calling ReviewControllerApi->delete1: $e\n');
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

# **getById1**
> ReviewResponseDTO getById1(id)



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

final api_instance = ReviewControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getById1(id);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->getById1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**ReviewResponseDTO**](ReviewResponseDTO.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAll1**
> PageReviewListDTO listAll1(pageable)



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

final api_instance = ReviewControllerApi();
final pageable = ; // Pageable | 

try {
    final result = api_instance.listAll1(pageable);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->listAll1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageable** | [**Pageable**](.md)|  | 

### Return type

[**PageReviewListDTO**](PageReviewListDTO.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update1**
> ReviewResponseDTO update1(id, update1Request)



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

final api_instance = ReviewControllerApi();
final id = 789; // int | 
final update1Request = Update1Request(); // Update1Request | 

try {
    final result = api_instance.update1(id, update1Request);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->update1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **update1Request** | [**Update1Request**](Update1Request.md)|  | [optional] 

### Return type

[**ReviewResponseDTO**](ReviewResponseDTO.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewReview**
> ReviewResponseDTO viewReview(id)



### Example
```dart
import 'package:reviewerapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer_Authentication
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer_Authentication').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ReviewControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.viewReview(id);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->viewReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**ReviewResponseDTO**](ReviewResponseDTO.md)

### Authorization

[Bearer_Authentication](../README.md#Bearer_Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

