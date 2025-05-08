import 'package:dio/dio.dart';
import 'dio_service.dart';

class UserService {
  final Dio _dio = DioService().dio;

  Future<Response> getUserById(int id) {
    return _dio.get('/user/$id');
  }

  Future<Response> listUsers({int page = 0, int size = 10}) {
    return _dio.get(
      '/user',
      queryParameters: {'pageable.page': page, 'pageable.size': size},
    );
  }

  Future<Response> createUser(Map<String, dynamic> userData) {
    return _dio.post('/user', data: userData);
  }

  Future<Response> updateUser(int id, Map<String, dynamic> userData) {
    return _dio.put('/user/$id', data: userData);
  }

  Future<Response> deleteUser(int id) {
    return _dio.delete('/user/$id');
  }

  Future<Response> toggleUserAccess(int id, bool enable) {
    return _dio.put('/user/$id/access', queryParameters: {'enable': enable});
  }

  Future<Response> isUserEnabled(int id) {
    return _dio.get('/user/$id/enabled');
  }

  Future<Response> getUserGroups() {
    return _dio.get('/user/getUserGroup');
  }

  Future<Response> getUserLogs({int page = 0, int size = 10}) {
    return _dio.get(
      '/user/getLogUsers',
      queryParameters: {'pageable.page': page, 'pageable.size': size},
    );
  }
}
