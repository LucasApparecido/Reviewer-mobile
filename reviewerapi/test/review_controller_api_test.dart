import 'package:test/test.dart';
import 'package:reviewerapi/reviewerapi.dart';


/// tests for ReviewControllerApi
void main() {
  final instance = Reviewerapi().getReviewControllerApi();

  group(ReviewControllerApi, () {
    // Endpoint to register a object
    //
    //Future create1(ReviewRequestDTO reviewRequestDTO) async
    test('test create1', () async {
      // TODO
    });

    // Endpoint to remove a object
    //
    //Future delete1(int id) async
    test('test delete1', () async {
      // TODO
    });

    // Endpoint to search for an object by primary key
    //
    //Future<ReviewResponseDTO> getById1(int id) async
    test('test getById1', () async {
      // TODO
    });

    // Endpoint to list all objects
    //
    //Future<PageReviewListDTO> listAll1(Pageable pageable) async
    test('test listAll1', () async {
      // TODO
    });

    // Endpoint to edit a object
    //
    //Future<ReviewResponseDTO> update1(int id, ReviewRequestDTO reviewRequestDTO) async
    test('test update1', () async {
      // TODO
    });

    //Future<ReviewResponseDTO> viewReview(int id) async
    test('test viewReview', () async {
      // TODO
    });

  });
}
