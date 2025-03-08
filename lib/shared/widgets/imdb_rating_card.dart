import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/theme/app_colors.dart';

class ImdbRatingCard extends ConsumerWidget {
  const ImdbRatingCard({super.key, required this.rating});

  final String rating;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.black.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Text(
          rating,
          style: context.textTheme.bodyMedium
              ?.copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
