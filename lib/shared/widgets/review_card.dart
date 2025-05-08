import 'package:flutter/material.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';

class ReviewCard extends StatelessWidget {
  final String user;
  final String review;
  final int rating;
  final String? avatarUrl;
  final bool showActions;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const ReviewCard({
    super.key,
    required this.user,
    required this.review,
    required this.rating,
    this.avatarUrl,
    this.showActions = false,
    this.onEdit,
    this.onDelete,
  });

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder:
          (_) => SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.edit, color: AppColors.mediumText),
                  title: const Text(
                    'Editar',
                    style: TextStyle(color: AppColors.darkText),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    if (onEdit != null) onEdit!();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.delete, color: AppColors.error),
                  title: const Text(
                    'Excluir',
                    style: TextStyle(color: AppColors.darkText),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    if (onDelete != null) onDelete!();
                  },
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TOPO
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          avatarUrl != null ? NetworkImage(avatarUrl!) : null,
                      backgroundColor: AppColors.mediumText,
                      child:
                          avatarUrl == null
                              ? const Icon(Icons.person, color: Colors.white)
                              : null,
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
                if (showActions)
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: AppColors.mediumText,
                    ),
                    onPressed: () => _showMenu(context),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              review,
              style: const TextStyle(fontSize: 14, color: AppColors.mediumText),
            ),
            const SizedBox(height: 12),
            Row(
              children: List.generate(5, (i) {
                return Icon(
                  i < rating ? Icons.star : Icons.star_border,
                  size: 20,
                  color: AppColors.stars,
                );
              }),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    // ação monetária futura
                  },
                  icon: const Icon(Icons.monetization_on, size: 20),
                  color: AppColors.coin,
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
