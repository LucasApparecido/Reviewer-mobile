import 'package:test/test.dart';
import 'package:reviewerapi/reviewerapi.dart';


/// tests for CommentControllerApi
void main() {
  final instance = Reviewerapi().getCommentControllerApi();

  group(CommentControllerApi, () {
    // Endpoint to register a object
    //
    //Future create2(CommentRequestDTO commentRequestDTO) async
    test('test create2', () async {
      // TODO
    });

    // Endpoint to remove a object
    //
    //Future delete2(int id) async
    test('test delete2', () async {
      // TODO
    });

    // Endpoint to search for an object by primary key
    //
    //Future<CommentResponseDTO> getById2(int id) async
    test('test getById2', () async {
      // TODO
    });

    // Endpoint to list all objects
    //
    //Future<PageCommentListDTO> listAll2(Pageable pageable) async
    test('test listAll2', () async {
      // TODO
    });

    //Future<PageCommentListDTO> listByReview(int reviewId, Pageable pageable) async
    test('test listByReview', () async {
      // TODO
    });

    // Endpoint to edit a object
    //
    //Future<CommentResponseDTO> update2(int id, CommentRequestDTO commentRequestDTO) async
    test('test update2', () async {
      // TODO
    });

  });
}
