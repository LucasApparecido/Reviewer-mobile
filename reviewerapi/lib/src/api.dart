//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:reviewerapi/src/serializers.dart';
import 'package:reviewerapi/src/auth/api_key_auth.dart';
import 'package:reviewerapi/src/auth/basic_auth.dart';
import 'package:reviewerapi/src/auth/bearer_auth.dart';
import 'package:reviewerapi/src/auth/oauth.dart';
import 'package:reviewerapi/src/api/auth_controller_api.dart';
import 'package:reviewerapi/src/api/comment_controller_api.dart';
import 'package:reviewerapi/src/api/initializer_controller_api.dart';
import 'package:reviewerapi/src/api/like_controller_api.dart';
import 'package:reviewerapi/src/api/registration_controller_api.dart';
import 'package:reviewerapi/src/api/review_controller_api.dart';
import 'package:reviewerapi/src/api/user_controller_api.dart';

class Reviewerapi {
  static const String basePath = r'http://127.0.0.1:8080';

  final Dio dio;
  final Serializers serializers;

  Reviewerapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthControllerApi getAuthControllerApi() {
    return AuthControllerApi(dio, serializers);
  }

  /// Get CommentControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CommentControllerApi getCommentControllerApi() {
    return CommentControllerApi(dio, serializers);
  }

  /// Get InitializerControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InitializerControllerApi getInitializerControllerApi() {
    return InitializerControllerApi(dio, serializers);
  }

  /// Get LikeControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LikeControllerApi getLikeControllerApi() {
    return LikeControllerApi(dio, serializers);
  }

  /// Get RegistrationControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RegistrationControllerApi getRegistrationControllerApi() {
    return RegistrationControllerApi(dio, serializers);
  }

  /// Get ReviewControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReviewControllerApi getReviewControllerApi() {
    return ReviewControllerApi(dio, serializers);
  }

  /// Get UserControllerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserControllerApi getUserControllerApi() {
    return UserControllerApi(dio, serializers);
  }
}
