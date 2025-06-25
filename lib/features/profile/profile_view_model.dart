import 'package:flutter/material.dart';
import 'package:reviewer_mobile/core/auth/auth_service.dart';
import 'package:reviewer_mobile/services/user_service.dart';
import 'package:reviewerapi/reviewerapi.dart';

enum ViewState { idle, loading, loaded, error }

class ProfileViewModel extends ChangeNotifier {
  final UserService _userService;
  final AuthService _authService;
  final int userId = 1; 

  ProfileViewModel(this._userService, this._authService);

  var state = ViewState.idle;
  String errorMessage = '';

  UserResponseDTO? userProfile;
  List<ReviewListDTO> userReviews = [];

  Future<void> fetchProfileData() async {
    state = ViewState.loading;
    notifyListeners();

    try {
      final profileFuture = _userService.getProfile(userId);
      final reviewsFuture = _userService.getUserReviews(userId);

      final results = await Future.wait([profileFuture, reviewsFuture]);

      userProfile = results[0] as UserResponseDTO;
      userReviews = (results[1] as PageReviewListDTO).content?.toList() ?? [];
      
      state = ViewState.loaded;
    } catch (e) {
      errorMessage = e.toString();
      state = ViewState.error;
    }
    notifyListeners();
  }

  Future<void> logout() async {
    await _authService.logout();
  }
}