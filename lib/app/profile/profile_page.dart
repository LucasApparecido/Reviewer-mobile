import 'package:flutter/material.dart';
import 'package:reviewer_mobile/main.dart';
import 'package:reviewer_mobile/services/review_service.dart';
import 'package:reviewer_mobile/shared/widgets/custom_bottom_app_bar.dart';
import 'package:reviewer_mobile/shared/widgets/review_card.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';
import 'package:routefly/routefly.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ReviewService _reviewService = ReviewService();
  List<dynamic> _userReviews = [];

  @override
  void initState() {
    super.initState();
    _fetchUserReviews();
  }

  Future<void> _fetchUserReviews() async {
    try {
      final response = await _reviewService.listReviews(page: 0, size: 10);
      final List<dynamic> data = response.data['content'] ?? [];

      setState(() {
        _userReviews =
            data
                .map(
                  (review) => {
                    'id': review['id'],
                    'title': review['title'],
                    'content': review['content'],
                    'publicationDate': review['publicationDate'],
                    'images': review['images'],
                  },
                )
                .toList();
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao carregar reviews do usuário: $e')),
      );
    }
  }

  Future<void> _onRefresh() async {
    await _fetchUserReviews();
  }

  Future<void> _deleteReview(int id, int index) async {
    try {
      await _reviewService.deleteReview(id);
      setState(() {
        _userReviews.removeAt(index);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Review excluída com sucesso!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Erro ao excluir review: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'Perfil',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=09'),
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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _userReviews.length,
              itemBuilder: (context, index) {
                final review = _userReviews[index];
                return ReviewCard(
                  user: 'Usuário',
                  review: review['content'] ?? '',
                  rating: 5,
                  avatarUrl: 'https://i.pravatar.cc/150?img=5',
                  showActions: true,
                  onEdit: () async {
                    final result = await Routefly.push(
                      routePaths.review.editReview,
                      arguments: {
                        'reviewId': review['id'],
                        'initialReview': review['content'],
                        'initialStars': 0,
                      },
                    );

                    if (result == true) {
                      _fetchUserReviews();
                    }
                  },
                  onDelete: () {
                    showDialog(
                      context: context,
                      builder:
                          (_) => AlertDialog(
                            title: const Text('Excluir Review'),
                            content: const Text(
                              'Deseja realmente excluir esta review?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Cancelar'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                  await _deleteReview(review['id'], index);
                                },
                                child: const Text('Excluir'),
                              ),
                            ],
                          ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.highlight,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () async {
          final result = await Routefly.push(routePaths.review.createReview);

          if (result == true) {
            _onRefresh();
          }
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
        onPressed: () {},
        child: Text(text, style: const TextStyle(color: AppColors.mediumText)),
      ),
    );
  }
}
