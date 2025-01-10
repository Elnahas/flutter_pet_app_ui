import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/helpers/spacing.dart';
import 'package:flutter_pet_app_ui/features/on_boarding/ui/widgets/on_boarding_image_widget.dart';
import 'package:flutter_pet_app_ui/features/on_boarding/ui/widgets/pattern_background_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/data/model/onboards_model.dart';
import '../../../../core/theming/app_text_styles.dart';

class OnBoardingItem extends StatelessWidget {
  final int index;

  const OnBoardingItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image Container
        Container(
          height: 325.h,
          width: 330.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              const PatternBackgroundWidget(),
              OnBoardingImageWidget(imagePath: onBoardData[index].image),
            ],
          ),
        ),
        verticalSpace(30),
        // Title
        Text.rich(
          TextSpan(
            style: AppTextStyles.font35BoldBlack,
            children: const [
              TextSpan(text: "Find You "),
              TextSpan(
                text: "Dream\n",
                style: TextStyle(color: Colors.lightBlue),
              ),
              TextSpan(text: "Pet Here"),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        verticalSpace(10),
        // Description
        Text(
          onBoardData[index].text,
          textAlign: TextAlign.center,
          style: AppTextStyles.font15Grey,
        ),
      ],
    );
  }
}
