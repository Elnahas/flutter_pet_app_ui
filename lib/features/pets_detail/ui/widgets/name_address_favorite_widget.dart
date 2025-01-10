import 'package:flutter/material.dart';

import '../../../../core/data/model/cats_model.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/app_favorite_circle_avatar.dart';

class NameAddressAndFavoriteWidget extends StatelessWidget {
  final Cat cat;

  const NameAddressAndFavoriteWidget({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cat.name,
                style: const TextStyle(
                  fontSize: 25,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.blue,
                  ),
                  Text(
                    '${cat.location} (${cat.distance} Km)',
                    style: TextStyle(
                      color: AppColors.black.withOpacity(0.6),
                      fontSize: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        AppFavoriteCircleAvatar(
          isFavorite: cat.fav,
        ),
      ],
    );
  }
}
