import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final bool showBadge;
  final Color? backgroundColor;
  final Color? iconColor;
  final VoidCallback onPressed;

  const AppIconButton({
    super.key,
    required this.icon,
    this.showBadge = false,
    required this.onPressed,
    this.backgroundColor, this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color:backgroundColor?? Colors.black12.withOpacity(0.03),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            color: iconColor ?? Colors.black54,
            icon: Icon(icon ),
            onPressed: onPressed,
          ),
        ),
        if (showBadge)
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              height: 7.h,
              width: 7.w,
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
