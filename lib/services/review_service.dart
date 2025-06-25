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
      print("Erro em fetchReviews: $e");
      throw Exception("Erro de comunicação com o servidor ao buscar reviews.");
    }
  }

  Future<ReviewResponseDTO> getReviewById(int id) async {
    try {
      final response = await _reviewApi.getById1(id: id);
      if (response.statusCode == 200 && response.data != null) {
        return response.data!;
      } else {
        throw Exception("Review não encontrada.");
      }
    } on DioException catch (e) {
      print("Erro em getReviewById: $e");
      throw Exception("Erro ao buscar detalhes da review.");
    }
  }

  Future<ReviewResponseDTO> createReview(ReviewRequestDTO request) async {
    try {
      final response = await _reviewApi.create1(reviewRequestDTO: request);
      if (response.statusCode == 201 && response.data != null) {
        return response.data!;
      } else {
        throw Exception("Não foi possível criar a review.");
      }
    } on DioException catch (e) {
      print("Erro em createReview: $e");
      throw Exception("Erro de servidor ao criar a review.");
    }
  }

  Future<ReviewResponseDTO> updateReview(int id, ReviewRequestDTO request) async {
    try {
      final response = await _reviewApi.update1(id: id, reviewRequestDTO: request);
      if (response.statusCode == 200 && response.data != null) {
        return response.data!;
      } else {
        throw Exception("Não foi possível atualizar a review.");
      }
    } on DioException catch (e) {
      print("Erro em updateReview: $e");
      throw Exception("Erro de servidor ao atualizar a review.");
    }
  }

  Future<void> deleteReview(int id) async {
    try {
      final response = await _reviewApi.delete1(id: id);
      if (response.statusCode != 200 && response.statusCode != 204) {
        throw Exception("Falha ao deletar a review.");
      }
    } on DioException catch (e) {
      print("Erro em deleteReview: $e");
      throw Exception("Erro de servidor ao deletar a review.");
    }
  }
}