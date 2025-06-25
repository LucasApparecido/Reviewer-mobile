# reviewerapi.api.CommentControllerApi

## Load the API package
```dart
import 'package:reviewerapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create2**](CommentControllerApi.md#create2) | **POST** /api/v1/comment | 
[**delete2**](CommentControllerApi.md#delete2) | **DELETE** /api/v1/comment/{id} | 
[**getById2**](CommentControllerApi.md#getbyid2) | **GET** /api/v1/comment/{id} | 
[**listAll2**](CommentControllerApi.md#listall2) | **GET** /api/v1/comment | 
[**listByReview**](CommentControllerApi.md#listbyreview) | **GET** /api/v1/comment/review/{reviewId} | 
[**update2**](CommentControllerApi.md#update2) | **PUT** /api/v1/comment/{id} | 


# **create2**
> create2(commentRequestDTO)



Endpoint to register a object

### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getCommentControllerApi();
final CommentRequestDTO commentRequestDTO = ; // CommentRequestDTO | 

try {
    api.create2(commentRequestDTO);
} catch on DioException (e) {
    print('Exception when calling CommentControllerApi->create2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentRequestDTO** | [**CommentRequestDTO**](CommentRequestDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete2**
> delete2(id)



Endpoint to remove a object

### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getCommentControllerApi();
final int id = 789; // int | 

try {
    api.delete2(id);
} catch on DioException (e) {
    print('Exception when calling CommentControllerApi->delete2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getById2**
> CommentResponseDTO getById2(id)



Endpoint to search for an object by primary key

### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getCommentControllerApi();
final int id = 789; // int | 

try {
    final response = api.getById2(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommentControllerApi->getById2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**CommentResponseDTO**](CommentResponseDTO.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAll2**
> PageCommentListDTO listAll2(pageable)



Endpoint to list all objects

### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getCommentControllerApi();
final Pageable pageable = ; // Pageable | 

try {
    final response = api.listAll2(pageable);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommentControllerApi->listAll2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageable** | [**Pageable**](.md)|  | 

### Return type

[**PageCommentListDTO**](PageCommentListDTO.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listByReview**
> PageCommentListDTO listByReview(reviewId, pageable)



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getCommentControllerApi();
final int reviewId = 789; // int | 
final Pageable pageable = ; // Pageable | 

try {
    final response = api.listByReview(reviewId, pageable);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommentControllerApi->listByReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **int**|  | 
 **pageable** | [**Pageable**](.md)|  | 

### Return type

[**PageCommentListDTO**](PageCommentListDTO.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update2**
> CommentResponseDTO update2(id, commentRequestDTO)



Endpoint to edit a object

### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getCommentControllerApi();
final int id = 789; // int | 
final CommentRequestDTO commentRequestDTO = ; // CommentRequestDTO | 

try {
    final response = api.update2(id, commentRequestDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommentControllerApi->update2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **commentRequestDTO** | [**CommentRequestDTO**](CommentRequestDTO.md)|  | 

### Return type

[**CommentResponseDTO**](CommentResponseDTO.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

