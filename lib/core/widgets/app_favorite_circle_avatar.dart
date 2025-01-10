import 'package:flutter/material.dart';

import '../theming/app_colors.dart';

class AppFavoriteCircleAvatar extends StatelessWidget {
  final bool isFavorite;

  const AppFavoriteCircleAvatar({
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return         Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                color: isFavorite
                    ? Colors.red.withOpacity(0.1)
                    : AppColors.black.withOpacity(0.2),
                blurRadius: 2,
                spreadRadius: 1,
              )
            ],
          ),
          child: Icon(
            isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
            color: isFavorite ? Colors.red : AppColors.black.withOpacity(0.6),
          ),
        );
  }
}
