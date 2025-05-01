# api.api.ReviewControllerApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ReviewControllerApi.md#create) | **POST** /api/v1/reviews | 
[**delete**](ReviewControllerApi.md#delete) | **DELETE** /api/v1/reviews/{id} | 
[**getById**](ReviewControllerApi.md#getbyid) | **GET** /api/v1/reviews/{id} | 
[**listAll**](ReviewControllerApi.md#listall) | **GET** /api/v1/reviews | 
[**update**](ReviewControllerApi.md#update) | **PUT** /api/v1/reviews/{id} | 


# **create**
> Object create(createReviewDTO)



End point para inclusão de review

### Example
```dart
import 'package:api/api.dart';

final api_instance = ReviewControllerApi();
final createReviewDTO = CreateReviewDTO(); // CreateReviewDTO | 

try {
    final result = api_instance.create(createReviewDTO);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createReviewDTO** | [**CreateReviewDTO**](CreateReviewDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> Object delete(id)



Deleta um review pelo seu id

### Example
```dart
import 'package:api/api.dart';

final api_instance = ReviewControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.delete(id);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getById**
> Object getById(id)



Retorna um review pelo seu id

### Example
```dart
import 'package:api/api.dart';

final api_instance = ReviewControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getById(id);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->getById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAll**
> List<Review> listAll()



Lista todos os reviews registrados

### Example
```dart
import 'package:api/api.dart';

final api_instance = ReviewControllerApi();

try {
    final result = api_instance.listAll();
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->listAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Review>**](Review.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Object update(id, createReviewDTO)



End point para atualização de review

### Example
```dart
import 'package:api/api.dart';

final api_instance = ReviewControllerApi();
final id = 789; // int | 
final createReviewDTO = CreateReviewDTO(); // CreateReviewDTO | 

try {
    final result = api_instance.update(id, createReviewDTO);
    print(result);
} catch (e) {
    print('Exception when calling ReviewControllerApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **createReviewDTO** | [**CreateReviewDTO**](CreateReviewDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

