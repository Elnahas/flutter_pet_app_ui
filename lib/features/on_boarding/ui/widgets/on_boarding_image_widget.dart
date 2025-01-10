import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingImageWidget extends StatelessWidget {
  final String imagePath;

  const OnBoardingImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 50.w,
      child: Image.asset(
        imagePath,
        height: 320.h,
        fit: BoxFit.fill,
      ),
    );
  }
}
