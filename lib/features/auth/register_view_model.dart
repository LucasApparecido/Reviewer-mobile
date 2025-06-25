import 'package:flutter/material.dart';
import 'package:reviewer_mobile/core/auth/auth_service.dart';
import 'package:reviewerapi/reviewerapi.dart';

enum ViewState { idle, loading, success, error }

class RegisterViewModel extends ChangeNotifier {
  final AuthService _authService;
  RegisterViewModel(this._authService);

  var state = ViewState.idle;
  String errorMessage = '';

  Future<bool> register({
    required String name,
    required String login,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    state = ViewState.loading;
    notifyListeners();
    
    if (password != confirmPassword) {
      errorMessage = "As senhas não coincidem.";
      state = ViewState.error;
      notifyListeners();
      return false;
    }

    final request = UserRegisterRequestDTO((b) => b
      ..name = name
      ..login = login
      ..email = email
      ..password = password
      ..confirmPassword = confirmPassword
    );

    try {
      await _authService.register(request);
      state = ViewState.success;
      notifyListeners();
      return true;
    } catch (e) {
      errorMessage = e.toString();
      state = ViewState.error;
      notifyListeners();
      return false;
    }
  }
}