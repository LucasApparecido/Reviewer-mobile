import 'package:flutter/material.dart';
import 'package:reviewer_mobile/services/review_service.dart';
import 'package:reviewerapi/reviewerapi.dart';

enum ViewState { idle, loading, loaded, error }
enum LoadMoreState { idle, loading, error }

class HomeViewModel extends ChangeNotifier {
  final ReviewService _reviewService;
  HomeViewModel(this._reviewService);

  var state = ViewState.idle;
  var loadMoreState = LoadMoreState.idle;

  List<ReviewListDTO> reviews = [];
  int _currentPage = 0;
  bool _hasMore = true;

  Future<void> fetchInitialReviews() async {
    if (state == ViewState.loading) return;

    state = ViewState.loading;
    notifyListeners();

    try {
      _currentPage = 0;
      reviews.clear();
      final pageResult = await _reviewService.fetchReviews(page: _currentPage);
      reviews.addAll(pageResult.content?.toList() ?? []);
      _hasMore = !(pageResult.last ?? true);
      _currentPage++;
      state = ViewState.loaded;
    } catch (e) {
      state = ViewState.error;
    }
    notifyListeners();
  }

  Future<void> fetchMoreReviews() async {
    if (loadMoreState == LoadMoreState.loading || !_hasMore) return;
    
    loadMoreState = LoadMoreState.loading;
    notifyListeners();

    try {
      final pageResult = await _reviewService.fetchReviews(page: _currentPage);
      reviews.addAll(pageResult.content?.toList() ?? []);
      _hasMore = !(pageResult.last ?? true);
      _currentPage++;
      loadMoreState = LoadMoreState.idle;
    } catch(e) {
      loadMoreState = LoadMoreState.error;
    }
    notifyListeners();
  }
}