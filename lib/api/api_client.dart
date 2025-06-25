import 'package:dio/dio.dart';
import 'package:reviewer_mobile/core/auth/token_service.dart';

Dio createApiClient(TokenService tokenService) {
  final dio = Dio(BaseOptions(
    // ATENÇÃO: Use 'http://10.0.2.2:8080' para emuladores Android.
    baseUrl: 'http://10.0.2.2:8080/api/v1',
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 15),
  ));

  dio.interceptors.add(AuthInterceptor(dio, tokenService));

  return dio;
}

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final TokenService tokenService;

  AuthInterceptor(this.dio, this.tokenService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final publicPaths = ['/auth/login', '/register'];
    if (publicPaths.any((path) => options.path.contains(path))) {
      return handler.next(options);
    }

    final accessToken = await tokenService.getAccessToken();
    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    return handler.next(options);
  }

}