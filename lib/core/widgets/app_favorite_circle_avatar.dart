import 'package:flutter/material.dart';

class AppFavoriteCircleAvatar extends StatelessWidget {
  final bool isFavorite;

  const AppFavoriteCircleAvatar({
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: Icon(
        isFavorite ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
        color: isFavorite ? Colors.red : Colors.black.withOpacity(0.6),
      ),
    );
  }
}
