import 'package:flutter/material.dart';
import 'package:reviewer_mobile/main.dart';
import 'package:reviewer_mobile/services/review_service.dart';
import 'package:reviewer_mobile/shared/widgets/custom_bottom_app_bar.dart';
import 'package:reviewer_mobile/shared/widgets/review_card.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ReviewService _reviewService = ReviewService();
  final ScrollController _scrollController = ScrollController();

  List<dynamic> _reviews = [];
  bool _isLoading = false;
  bool _hasMore = true;
  int _page = 0;
  final int _pageSize = 5;

  @override
  void initState() {
    super.initState();
    _fetchReviews();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200 &&
        !_isLoading &&
        _hasMore) {
      _fetchReviews();
    }
  }

  Future<void> _fetchReviews({bool isRefresh = false}) async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    final int nextPage = isRefresh ? 0 : _page;

    try {
      final response =
      await _reviewService.listReviews(page: nextPage, size: _pageSize);
      final data = response.data['content'] ?? [];

      setState(() {
        if (isRefresh) {
          _reviews = data;
          _page = 1;
        } else {
          _reviews.addAll(data);
          _page++;
        }
        _hasMore = data.length == _pageSize;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao carregar reviews: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _onRefresh() async {
    await _fetchReviews(isRefresh: true);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: AppColors.mediumText,
          child: Row(
            children: const [
              CircleAvatar(
                backgroundColor: AppColors.primaryDark,
                radius: 25,
                child: Icon(Icons.person, color: Colors.white),
              ),
              SizedBox(width: 16),
              Text(
                'Reviews',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkText,
                ),
              ),
            ],
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _reviews.length + 1,
          itemBuilder: (context, index) {
            if (index < _reviews.length) {
              final review = _reviews[index];
              return ReviewCard(
                user: review['user']?['name'] ?? 'Anônimo',
                review: review['content'] ?? '',
                rating: review['rating'] ?? 0,
                avatarUrl: 'https://i.pravatar.cc/150?img=${index + 1}',
              );
            } else if (_isLoading) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              );
            } else if (!_hasMore) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Text(
                    'Você chegou ao fim da internet... pelo menos por aqui! 😅',
                    style: TextStyle(
                      color: AppColors.darkText,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.highlight,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Routefly.push(routePaths.review.createReview);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
