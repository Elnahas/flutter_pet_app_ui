import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_background_pattern_svg.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_favorite_circle_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/data/model/cats_model.dart';
import '../../../../core/helpers/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../pets_detail/ui/screens/pets_detail_screen.dart';

class PetsItems extends StatelessWidget {
  final CatModel cat;

  const PetsItems({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20, bottom: 20),
      child: GestureDetector(
        onTap: () {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: PetsDetailScreen(cat: cat),
            withNavBar: false, 
            pageTransitionAnimation: PageTransitionAnimation.fade,
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 245.h,
            width: 205.w,
            color: cat.color.withOpacity(0.5),
            child: Stack(
              children: [
                AppBackgroundPatternSvg(
                  assetPath: AppAssets.pawPrint,
                  angle: 12,
                  size: 120,
                  bottom: -10,
                  right: -10,
                  color: cat.color,
                ),
                AppBackgroundPatternSvg(
                  assetPath: AppAssets.pawPrint,
                  angle: -11.5,
                  size: 110,
                  top: 100,
                  left: -25,
                  color: cat.color,
                ),
                Positioned(
                  bottom: -10,
                  right: 10,
                  child: Hero(
                    tag: cat.image,
                    child: Image.asset(
                      cat.image,
                      height: 185.h,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cat.name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: AppColors.blue,
                                size: 18,
                              ),
                              Text(
                                "${cat.distance} km",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      AppFavoriteCircleAvatar(isFavorite: cat.fav)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
