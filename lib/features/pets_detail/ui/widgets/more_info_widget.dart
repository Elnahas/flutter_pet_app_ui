import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/helpers/app_assets.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_background_pattern_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreInfoWidget extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final String title;
  final String label;

  const MoreInfoWidget({super.key, 
    required this.color,
    required this.backgroundColor,
    required this.title,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          
          AppBackgroundPatternSvg(assetPath: AppAssets.pawPrint, angle: 12, size: 75 , bottom: -20,right: 0,color: color,),

          Container(
            height: 100.h,
            width: 110.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
