import 'package:flutter/material.dart';
import 'package:reviewer_mobile/main.dart';
import 'package:reviewer_mobile/theme/app_colors.dart'; // Importando o AppColors
import 'package:routefly/routefly.dart';

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
          color: AppColors.primary,
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.mediumText,
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
        itemCount: mockReviews.length,
        itemBuilder: (context, index) {
          final review = mockReviews[index];
          return ListTile(
            title: Text(
              review['user'],
              style: const TextStyle(color: AppColors.darkText),
            ),
            subtitle: Text(
              review['review'],
              style: const TextStyle(color: AppColors.mediumText),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(5, (i) {
                return Icon(
                  i < review['stars'] ? Icons.star : Icons.star_border,
                  color: AppColors.primaryVariant,
                  size: 20,
                );
              }),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.lightGray,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                color: AppColors.darkText,
                onPressed: () {
                  Routefly.push(routePaths.appHome);
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                color: AppColors.darkText,
                onPressed: () {
                  //Routefly.push(routePaths.search);
                },
              ),
              const SizedBox(width: 40), // espaço para o botão central
              IconButton(
                icon: const Icon(Icons.notifications),
                color: AppColors.darkText,
                onPressed: () {
                  //Routefly.push(routePaths.notifications);
                },
              ),
              IconButton(
                icon: const Icon(Icons.person),
                color: AppColors.darkText,
                onPressed: () {
                  //Routefly.push(routePaths.profile);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.accent,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Routefly.push(routePaths.review.createReview);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}