import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'dio_service.dart';

class ReviewService {
  final Dio _dio = DioService().dio;

  Future<Response> getReviewById(int id) {
    return _dio.get('/review/$id');
  }

  Future<Response> listReviews({int page = 0, int size = 10}) {
    return _dio.get(
      '/review',
      queryParameters: {'pageable.page': page, 'pageable.size': size},
    );
  }

  Future<Response> createReviewAsJson(Map<String, dynamic> reviewData) {
    return _dio.post(
      '/review',
      data: reviewData,
      options: Options(contentType: Headers.jsonContentType),
    );
  }

  Future<Response> updateReviewAsJson(int id, Map<String, dynamic> reviewData) {
    return _dio.put('/review/$id', data: reviewData);
  }

  Future<Response> deleteReview(int id) {
    return _dio.delete('/review/$id');
  }

  Future<Response> viewReview(int id) {
    return _dio.get('/review/view/$id');
  }
}
