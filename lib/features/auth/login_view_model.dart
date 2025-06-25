import 'package:flutter/material.dart';
import 'package:reviewer_mobile/core/auth/auth_service.dart';

enum ViewState { idle, loading, success, error }

class LoginViewModel extends ChangeNotifier {
  final AuthService _authService;
  LoginViewModel(this._authService);

  var _state = ViewState.idle;
  ViewState get state => _state;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  Future<bool> login(String login, String password) async {
    _state = ViewState.loading;
    notifyListeners();

    try {
      await _authService.login(login, password);
      _state = ViewState.success;
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      _state = ViewState.error;
      notifyListeners();
      return false;
    }
  }
}