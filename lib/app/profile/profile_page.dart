import 'package:flutter/material.dart';
import 'package:reviewer_mobile/openapi/lib/api.dart';
import 'package:reviewer_mobile/shared/widgets/custom_bottom_app_bar.dart';
import 'package:reviewer_mobile/shared/widgets/review_card.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';

import '../../main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _reviewApi = ReviewControllerApi();
  List<Review> _userReviews = [];

  @override
  void initState() {
    super.initState();
    _fetchUserReviews();
  }

  Future<void> _fetchUserReviews() async {
    try {
      final reviews =
          await _reviewApi
              .listAll(); // Substitua por endpoint do usuário, se disponível
      setState(() {
        _userReviews = reviews ?? [];
      });
    } catch (e) {
      setState(() {});
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao carregar reviews do usuário: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.mediumText,
        title: const Text('Perfil', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=5', // Foto Mock - depois troca pela foto real
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Killua Zoldyk',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.darkText,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildProfileButton('Posts'),
                _buildProfileButton('Followers'),
                _buildProfileButton('Following'),
              ],
            ),
            const SizedBox(height: 20),
            ..._userReviews.map((review) {
              return ReviewCard(
                user: 'Usuário Fixo', // Nome fixo
                review: review.content ?? '',
                stars: review.rating ?? 0,
                avatarUrl: 'https://i.pravatar.cc/150?img=5', // Avatar fixo
              );
            }).toList(),
          ],
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

  Widget _buildProfileButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.mediumText),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          // Exemplo de ação nos botões
        },
        child: Text(text, style: const TextStyle(color: AppColors.mediumText)),
      ),
    );
  }
}
