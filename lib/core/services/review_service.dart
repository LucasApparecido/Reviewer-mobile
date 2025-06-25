import 'package:reviewerapi/reviewerapi.dart';
import 'package:dio/dio.dart';

class ReviewService {
  final ReviewControllerApi _reviewApi;

  ReviewService(this._reviewApi);

  Future<PageReviewListDTO> fetchReviews({int page = 0, int size = 10}) async {
    try {
      final response = await _reviewApi.listAll1(page: page, size: size, sort: ['publicationDate,desc']);
      
      if (response.statusCode == 200 && response.data != null) {
        return response.data!;
      } else {
        throw Exception("Falha ao carregar as reviews.");
      }
    } on DioException catch (e) {
      print(e);
      throw Exception("Erro de comunicação com o servidor.");
    }
  }

  // Adicione aqui outros métodos: createReview, updateReview, deleteReview, etc.
}