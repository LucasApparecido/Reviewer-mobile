import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';

class ReviewCard extends StatelessWidget {
  final String user;
  final String review;
  final int stars;
  final String? avatarUrl;

  const ReviewCard({
    Key? key,
    required this.user,
    required this.review,
    required this.stars,
    this.avatarUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Topo: avatar + nome
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: avatarUrl != null
                      ? NetworkImage(avatarUrl!)
                      : null,
                  child: avatarUrl == null
                      ? const Icon(Icons.person, color: Colors.white)
                      : null,
                  backgroundColor: AppColors.mediumText,
                ),
                const SizedBox(width: 12),
                Text(
                  user,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.darkText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Texto da review
            Text(
              review,
              style: const TextStyle(fontSize: 14, color: AppColors.mediumText),
            ),
            const SizedBox(height: 12),
            // Estrelas
            Row(
              children: List.generate(5, (i) {
                return Icon(
                  i < stars ? Icons.star : Icons.star_border,
                  size: 20,
                  color: AppColors.stars,
                );
              }),
            ),
            const SizedBox(height: 12),
            // Ações (moeda futura, comentar)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.monetization_on, size: 18),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(12),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // ação de comentar
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.highlight,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: const Icon(Icons.comment, size: 18),
                  label: const Text("Comentar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}