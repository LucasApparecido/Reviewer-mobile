import 'package:flutter/material.dart';
import 'package:reviewer_mobile/openapi/lib/api.dart';
import 'package:reviewer_mobile/shared/widgets/custom_bottom_app_bar.dart';
import 'package:reviewer_mobile/shared/widgets/review_card.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _reviewApi = ReviewControllerApi();
  List<Review> _reviews = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchReviews();
  }

  Future<void> _fetchReviews() async {
    try {
      final reviews = await _reviewApi.listAll();
      setState(() {
        _reviews = reviews ?? [];
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Erro ao carregar reviews: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: AppColors.lightGray,
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.error,
                radius: 25,
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 16),
              const Text(
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
      body: ListView.builder(
        itemCount: _reviews.length,
        itemBuilder: (context, index) {
          final review = _reviews[index];
          return ReviewCard(
            user: 'Usuário Fixo', // Nome fixo
            review: review.content ?? '',
            stars: review.rating ?? 0,
            avatarUrl: 'https://i.pravatar.cc/150?img=5', // Avatar fixo
          );
        },
      ),
      bottomNavigationBar: const CustomBottomAppBar(), // Usando o componente
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
