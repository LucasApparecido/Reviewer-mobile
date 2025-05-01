# api.api.ArtifactControllerApi

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *http://127.0.0.1:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create1**](ArtifactControllerApi.md#create1) | **POST** /api/v1/artefacts | 
[**delete1**](ArtifactControllerApi.md#delete1) | **DELETE** /api/v1/artefacts/{id} | 
[**getById1**](ArtifactControllerApi.md#getbyid1) | **GET** /api/v1/artefacts/{id} | 
[**listAllArtifacts**](ArtifactControllerApi.md#listallartifacts) | **GET** /api/v1/artefacts | 
[**listOrderByCollectionYear**](ArtifactControllerApi.md#listorderbycollectionyear) | **GET** /api/v1/artefacts/collectionYear | 
[**update1**](ArtifactControllerApi.md#update1) | **PUT** /api/v1/artefacts/{id} | 


# **create1**
> Object create1(createArtifactDTO)



End point para inclusão de artefato

### Example
```dart
import 'package:api/api.dart';

final api_instance = ArtifactControllerApi();
final createArtifactDTO = CreateArtifactDTO(); // CreateArtifactDTO | 

try {
    final result = api_instance.create1(createArtifactDTO);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactControllerApi->create1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createArtifactDTO** | [**CreateArtifactDTO**](CreateArtifactDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete1**
> Object delete1(id)



Deleta um artefato pelo seu artifactId

### Example
```dart
import 'package:api/api.dart';

final api_instance = ArtifactControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.delete1(id);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactControllerApi->delete1: $e\n');
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

# **getById1**
> Object getById1(id)



Retorna um artefato pelo seu id

### Example
```dart
import 'package:api/api.dart';

final api_instance = ArtifactControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getById1(id);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactControllerApi->getById1: $e\n');
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

# **listAllArtifacts**
> List<Artifact> listAllArtifacts()



Lista todos os artefatos registrados

### Example
```dart
import 'package:api/api.dart';

final api_instance = ArtifactControllerApi();

try {
    final result = api_instance.listAllArtifacts();
    print(result);
} catch (e) {
    print('Exception when calling ArtifactControllerApi->listAllArtifacts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Artifact>**](Artifact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrderByCollectionYear**
> List<Artifact> listOrderByCollectionYear()



Lista todos os artefatos por ano de coleta

### Example
```dart
import 'package:api/api.dart';

final api_instance = ArtifactControllerApi();

try {
    final result = api_instance.listOrderByCollectionYear();
    print(result);
} catch (e) {
    print('Exception when calling ArtifactControllerApi->listOrderByCollectionYear: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Artifact>**](Artifact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update1**
> Object update1(id, createArtifactDTO)



End point para atualização de artefato

### Example
```dart
import 'package:api/api.dart';

final api_instance = ArtifactControllerApi();
final id = 789; // int | 
final createArtifactDTO = CreateArtifactDTO(); // CreateArtifactDTO | 

try {
    final result = api_instance.update1(id, createArtifactDTO);
    print(result);
} catch (e) {
    print('Exception when calling ArtifactControllerApi->update1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **createArtifactDTO** | [**CreateArtifactDTO**](CreateArtifactDTO.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

