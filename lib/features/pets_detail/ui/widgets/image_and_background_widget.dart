import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_background_pattern_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/data/model/cats_model.dart';
import '../../../../core/helpers/app_assets.dart';

class ItemsImageAndBackground extends StatelessWidget {
  final Cat cat;

  const ItemsImageAndBackground({super.key, 
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: cat.color.withOpacity(0.5),
      ),
      child: Stack(
        children: [

          AppBackgroundPatternSvg(assetPath: AppAssets.pawPrint, angle: -11.5, size: 250 , left: -60,top: 30,color: cat.color,),

          AppBackgroundPatternSvg(assetPath: AppAssets.pawPrint, angle: 12, size: 250 , right: -60,bottom: 0,color: cat.color,),

          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Hero(
              tag: cat.image,
              child: Image.asset(
                cat.image,
                height: 365.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
