import 'package:dio/dio.dart';
import 'package:reviewerapi/src/api/review_controller_api.dart';
import 'package:reviewerapi/src/model/review_request_dto.dart';
import 'package:reviewerapi/src/serializers.dart';

class ReviewService {
  final ReviewControllerApi _api;

  ReviewService()
      : _api = ReviewControllerApi(
    Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8080/api/v1')),
    serializers,
  );

  Future<void> createReview(String title, String content) async {
    final reviewDTO = ReviewRequestDTO((b) => b
      ..title = title
      ..content = content,
    );

    await _api.createReview(reviewRequestDTO: reviewDTO);
  }
}
