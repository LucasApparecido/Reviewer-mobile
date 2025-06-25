# reviewerapi.api.RegistrationControllerApi

## Load the API package
```dart
import 'package:reviewerapi/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**register**](RegistrationControllerApi.md#register) | **POST** /api/v1/register | 


# **register**
> UserResponseDTO register(userRegisterRequestDTO)



### Example
```dart
import 'package:reviewerapi/api.dart';

final api = Reviewerapi().getRegistrationControllerApi();
final UserRegisterRequestDTO userRegisterRequestDTO = ; // UserRegisterRequestDTO | 

try {
    final response = api.register(userRegisterRequestDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RegistrationControllerApi->register: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userRegisterRequestDTO** | [**UserRegisterRequestDTO**](UserRegisterRequestDTO.md)|  | 

### Return type

[**UserResponseDTO**](UserResponseDTO.md)

### Authorization

[Bearer Authentication](../README.md#Bearer Authentication)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

