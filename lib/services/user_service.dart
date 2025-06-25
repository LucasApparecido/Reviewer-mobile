import 'package:dio/dio.dart';
import 'package:reviewerapi/reviewerapi.dart';

class UserService {
  final UserControllerApi _userApi;

  UserService(this._userApi);

  Future<UserResponseDTO> getProfile(int userId) async {
    try {
      final response = await _userApi.getById(id: userId);
       if (response.statusCode == 200 && response.data != null) {
        return response.data!;
      } else {
        throw Exception("Usuário não encontrado.");
      }
    } on DioException catch (e) {
       print("Erro em getProfile: $e");
      throw Exception("Erro ao buscar o perfil do usuário.");
    }
  }

  Future<PageReviewListDTO> getUserReviews(int userId, {int page = 0, int size = 10}) async {
    print("Simulação: Buscando reviews para o usuário $userId");
    await Future.delayed(const Duration(seconds: 1));
    
    final emptyPage = PageReviewListDTO((b) => b
      ..content = ListBuilder<ReviewListDTO>([])
      ..totalElements = 0
      ..totalPages = 0
      ..number = 0
      ..last = true
    );
    return emptyPage;
  }
}