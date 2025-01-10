import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_background_pattern_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_assets.dart';
import '../../../../core/theming/app_colors.dart';

class PatternBackgroundWidget extends StatelessWidget {
  const PatternBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 240.h,
          width: 330.w,
          color: AppColors.orangeContainer,
          child: const Stack(
            children: [
              AppBackgroundPatternSvg(
                assetPath: AppAssets.pawPrint,
                angle: -11,
                size: 170,
                top: 5,
                left: -40,
                color: AppColors.pawColor1,
              ),
              AppBackgroundPatternSvg(
                assetPath: AppAssets.pawPrint,
                angle: -13,
                size: 150,
                bottom: -20,
                right: -20,
                color: AppColors.pawColor1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
