import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reviewer_mobile/main.route.dart';
import 'package:routefly/routefly.dart';

import '../main.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;

  final ValueNotifier<bool> isAuthenticated = ValueNotifier(false);

  AuthService._internal();

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('accessToken');

    if (token != null && token.isNotEmpty) {
      isAuthenticated.value = true;
    }
  }

  Future<bool> login(String login, String password) async {
        // Mock de autenticação
    if (login == 'admin@test.com' && password == '123456') {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('accessToken', 'mock_token');
      isAuthenticated.value = true;
      return true;
    }

    return false;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    isAuthenticated.value = false;
    Routefly.navigate(routePaths.login);
  }
}
