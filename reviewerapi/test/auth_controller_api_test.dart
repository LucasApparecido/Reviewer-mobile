import 'package:test/test.dart';
import 'package:reviewerapi/reviewerapi.dart';


/// tests for AuthControllerApi
void main() {
  final instance = Reviewerapi().getAuthControllerApi();

  group(AuthControllerApi, () {
    //Future<JsonObject> login(AuthDTO authDTO) async
    test('test login', () async {
      // TODO
    });

    //Future<JsonObject> logout() async
    test('test logout', () async {
      // TODO
    });

    //Future<JsonObject> refresh(String refreshToken) async
    test('test refresh', () async {
      // TODO
    });

  });
}
