import 'package:test/test.dart';
import 'package:reviewerapi/reviewerapi.dart';


/// tests for UserControllerApi
void main() {
  final instance = Reviewerapi().getUserControllerApi();

  group(UserControllerApi, () {
    // Endpoint to register a object
    //
    //Future create(UserRequestDTO userRequestDTO) async
    test('test create', () async {
      // TODO
    });

    // Endpoint to remove a object
    //
    //Future delete(int id) async
    test('test delete', () async {
      // TODO
    });

    // Endpoint to search for an object by primary key
    //
    //Future<UserResponseDTO> getById(int id) async
    test('test getById', () async {
      // TODO
    });

    //Future<PageUserLog> getLogUsers(Pageable pageable) async
    test('test getLogUsers', () async {
      // TODO
    });

    //Future<BuiltList<UserGroup>> getUserGroup() async
    test('test getUserGroup', () async {
      // TODO
    });

    //Future<bool> isUserEnabled(int id) async
    test('test isUserEnabled', () async {
      // TODO
    });

    // Endpoint to list all objects
    //
    //Future<PageUserListDTO> listAll(Pageable pageable) async
    test('test listAll', () async {
      // TODO
    });

    //Future toggleUserAccess(int id, bool enable) async
    test('test toggleUserAccess', () async {
      // TODO
    });

    // Endpoint to edit a object
    //
    //Future<UserResponseDTO> update(int id, UserRequestDTO userRequestDTO) async
    test('test update', () async {
      // TODO
    });

  });
}
