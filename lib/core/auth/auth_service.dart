import 'package:reviewer_mobile/core/auth/token_service.dart';
import 'package:reviewerapi/reviewerapi.dart';

class AuthService {
  final AuthControllerApi _authApi;
  final RegistrationControllerApi _registrationApi;
  final TokenService _tokenService;

  AuthService(this._authApi, this._registrationApi, this._tokenService);

  Future<void> login(String login, String password) async {
    final authRequest = AuthDTO((b) => b
      ..login = login
      ..password = password);

    try {
      final response = await _authApi.login(authDTO: authRequest);

      if (response.statusCode == 200 && response.data != null) {
        final responseData = Map<String, dynamic>.from(response.data as Map);
        final accessToken = responseData['accessToken'] as String?;
        final refreshToken = responseData['refreshToken'] as String?;

        if (accessToken != null && refreshToken != null) {
          await _tokenService.saveTokens(accessToken: accessToken, refreshToken: refreshToken);
        } else {
          throw Exception('Tokens não encontrados na resposta do servidor.');
        }
      } else {
        throw Exception('Falha no login. Resposta do servidor: ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserResponseDTO> register(UserRegisterRequestDTO request) async {
    final response = await _registrationApi.register(userRegisterRequestDTO: request);

    if (response.statusCode == 201 && response.data != null) {
      return response.data!;
    } else {
      String errorMessage = 'Falha ao registrar.';
      if (response.data is Map) {
        errorMessage = (response.data as Map)['message'] ?? errorMessage;
      }
      throw Exception(errorMessage);
    }
  }

  Future<void> logout() async {
    await _tokenService.clearTokens();
  }
}