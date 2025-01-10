import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final bool showBadge;
  final VoidCallback onPressed;

  const AppIconButton({
    super.key,
    required this.icon,
    this.showBadge = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.03),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
          ),
        ),
        if (showBadge)
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              height: 7,
              width: 7,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
      ],
    );
  }
}
