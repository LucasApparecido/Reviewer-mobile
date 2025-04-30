//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserControllerApi {
  UserControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Endpoint to register a object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserRequestDTO] userRequestDTO (required):
  Future<Response> createWithHttpInfo(UserRequestDTO userRequestDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user';

    // ignore: prefer_final_locals
    Object? postBody = userRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Endpoint to register a object
  ///
  /// Parameters:
  ///
  /// * [UserRequestDTO] userRequestDTO (required):
  Future<void> create(UserRequestDTO userRequestDTO,) async {
    final response = await createWithHttpInfo(userRequestDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Endpoint to remove a object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> deleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Endpoint to remove a object
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<void> delete(int id,) async {
    final response = await deleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Endpoint to search for an object by primary key
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> getByIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Endpoint to search for an object by primary key
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<UserResponseDTO?> getById(int id,) async {
    final response = await getByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserResponseDTO',) as UserResponseDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/user/getLogUsers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Pageable] pageable (required):
  Future<Response> getLogUsersWithHttpInfo(Pageable pageable,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/getLogUsers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'pageable', pageable));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [Pageable] pageable (required):
  Future<PageUserLog?> getLogUsers(Pageable pageable,) async {
    final response = await getLogUsersWithHttpInfo(pageable,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageUserLog',) as PageUserLog;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/user/getUserGroup' operation and returns the [Response].
  Future<Response> getUserGroupWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/getUserGroup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<List<UserGroup>?> getUserGroup() async {
    final response = await getUserGroupWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserGroup>') as List)
        .cast<UserGroup>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/user/{id}/enabled' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> isUserEnabledWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{id}/enabled'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  Future<bool?> isUserEnabled(int id,) async {
    final response = await isUserEnabledWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;
    
    }
    return null;
  }

  /// Endpoint to list all objects
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Pageable] pageable (required):
  Future<Response> listAllWithHttpInfo(Pageable pageable,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'pageable', pageable));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Endpoint to list all objects
  ///
  /// Parameters:
  ///
  /// * [Pageable] pageable (required):
  Future<PageUserListDTO?> listAll(Pageable pageable,) async {
    final response = await listAllWithHttpInfo(pageable,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageUserListDTO',) as PageUserListDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/v1/user/{id}/access' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [bool] enable (required):
  Future<Response> toggleUserAccessWithHttpInfo(int id, bool enable,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{id}/access'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'enable', enable));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [bool] enable (required):
  Future<void> toggleUserAccess(int id, bool enable,) async {
    final response = await toggleUserAccessWithHttpInfo(id, enable,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Endpoint to edit a object
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [UserRequestDTO] userRequestDTO (required):
  Future<Response> updateWithHttpInfo(int id, UserRequestDTO userRequestDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = userRequestDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Endpoint to edit a object
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [UserRequestDTO] userRequestDTO (required):
  Future<UserResponseDTO?> update(int id, UserRequestDTO userRequestDTO,) async {
    final response = await updateWithHttpInfo(id, userRequestDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserResponseDTO',) as UserResponseDTO;
    
    }
    return null;
  }
}
