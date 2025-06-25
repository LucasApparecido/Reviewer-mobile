# reviewerapi.api.LikeControllerApi

## Load the API package
```dart
import 'package:reviewerapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**likeReview**](LikeControllerApi.md#likereview) | **POST** /api/v1/reviews/{reviewId}/like | 
[**unlikeReview**](LikeControllerApi.md#unlikereview) | **DELETE** /api/v1/reviews/{reviewId}/like | 


# **likeReview**
> likeReview(reviewId)



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getLikeControllerApi();
final int reviewId = 789; // int | 

try {
    api.likeReview(reviewId);
} catch on DioException (e) {
    print('Exception when calling LikeControllerApi->likeReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlikeReview**
> unlikeReview(reviewId)



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getLikeControllerApi();
final int reviewId = 789; // int | 

try {
    api.unlikeReview(reviewId);
} catch on DioException (e) {
    print('Exception when calling LikeControllerApi->unlikeReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reviewId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

