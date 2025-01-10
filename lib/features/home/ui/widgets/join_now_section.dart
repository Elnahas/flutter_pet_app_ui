import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/helpers/app_assets.dart';
import 'package:flutter_pet_app_ui/core/helpers/spacing.dart';
import 'package:flutter_pet_app_ui/core/theming/app_text_styles.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_background_pattern_svg.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class JoinNowSection extends StatelessWidget {
  const JoinNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 180.h,
          width: double.infinity,
          color: AppColors.blueBackground,
          child: Stack(
            children: [
              const AppBackgroundPatternSvg(
                assetPath: AppAssets.pawPrint,
                angle: 12,
                size: 120,
                bottom: -20,
                right: -30,
                color: AppColors.pawColor2,
              ),
              const AppBackgroundPatternSvg(
                assetPath: AppAssets.pawPrint,
                angle: -12,
                size: 120,
                bottom: -35,
                left: -15,
                color: AppColors.pawColor2,
              ),
              const AppBackgroundPatternSvg(
                assetPath: AppAssets.pawPrint,
                angle: -16,
                size: 150,
                top: -40,
                left: 120,
                color: AppColors.pawColor2,
              ),
              Positioned(
                bottom: 0,
                right: 20,
                height: 170.h,
                child: Image.asset(
                  "assets/images/cat1.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Join Our Animal\nLovers Community",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(10),
                    AppTextButton(
                      buttonWidth: 100,
                      buttonHeight: 45,
                      backgroundColor: Colors.amberAccent,
                      textStyle: AppTextStyles.font14NormalWhite,
                      buttonText: "Join Now", onPressed: (){}),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
