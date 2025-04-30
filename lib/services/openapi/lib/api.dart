//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/auth_controller_api.dart';
part 'api/initializer_controller_api.dart';
part 'api/review_controller_api.dart';
part 'api/user_controller_api.dart';

part 'model/auth_dto.dart';
part 'model/file_dto.dart';
part 'model/image_dto.dart';
part 'model/page_review_list_dto.dart';
part 'model/page_user_list_dto.dart';
part 'model/page_user_log.dart';
part 'model/pageable.dart';
part 'model/pageable_object.dart';
part 'model/review_list_dto.dart';
part 'model/review_request_dto.dart';
part 'model/review_response_dto.dart';
part 'model/sort_object.dart';
part 'model/update1_request.dart';
part 'model/user_group.dart';
part 'model/user_list_dto.dart';
part 'model/user_log.dart';
part 'model/user_request_dto.dart';
part 'model/user_response_dto.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
