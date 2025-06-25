import 'package:flutter/material.dart';
import 'package:reviewerapi/reviewerapi.dart';

class ReviewCard extends StatelessWidget {
  final ReviewListDTO review;

  const ReviewCard({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(review.title ?? 'Sem Título', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(review.content ?? ''),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}