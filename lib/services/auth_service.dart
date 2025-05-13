import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:reviewer_mobile/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reviewer_mobile/services/dio_service.dart';
import 'package:routefly/routefly.dart';
import 'package:reviewer_mobile/main.route.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;

  final Dio _dio = DioService().dio;
  final ValueNotifier<bool> isAuthenticated = ValueNotifier(false);

  AuthService._internal();

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('accessToken');

    if (token != null && token.isNotEmpty) {
      DioService().setAuthToken(token);
      isAuthenticated.value = true;
    }
  }

  Future<void> login(String login, String password) async {
    final response = await _dio.post(
      '/auth/login',
      data: {'login': login, 'password': password},
    );

    final token = response.data['accessToken'];
    if (token == null) throw Exception("Token inválido");

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', token);
    DioService().setAuthToken(token);
    isAuthenticated.value = true;
  }

  Future<void> logout() async {
    await _dio.get('/auth/logout');
    DioService().clearAuthToken();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    isAuthenticated.value = false;
    Routefly.navigate(routePaths.login);
  }
}
