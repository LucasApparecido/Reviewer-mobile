import 'package:flutter/material.dart';
import 'package:reviewer_mobile/shared/widgets/custom_bottom_app_bar.dart';
import 'package:reviewer_mobile/shared/widgets/review_card.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> mockReviews = const [
    {
      'user': 'João',
      'review': 'Achei esse livro maravilhoso!',
      'stars': 5,
    },
    {
      'user': 'Maria',
      'review': 'O filme foi meio fraco...',
      'stars': 2,
    },
  ];

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
      body: ListView.builder( // Utilizando ReviewCard com Mock
        itemCount: mockReviews.length,
        itemBuilder: (context, index) {
          final review = mockReviews[index];
          return ReviewCard(
              user: review['user'] ?? 'Anônimo',
              review: review['review']!,
              stars: review['stars'] ?? 0,
              avatarUrl: null,
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
