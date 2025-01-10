import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/data/model/onboards_model.dart';
import 'package:flutter_pet_app_ui/core/helpers/spacing.dart';
import 'package:flutter_pet_app_ui/core/theming/app_colors.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../home/ui/screens/pets_home_screen.dart';
import '../widgets/onboarding_items.dart';

class PetsOnBoardingScreen extends StatefulWidget {
  const PetsOnBoardingScreen({super.key});

  @override
  State<PetsOnBoardingScreen> createState() => _PetsOnBoardingScreenState();
}

class _PetsOnBoardingScreenState extends State<PetsOnBoardingScreen> {
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 600.h,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              controller: pageController,
              itemCount: onBoardData.length,
              itemBuilder: (context, index) {
                return OnBoardingItem(index: index);
              },
            ),
          ),
          AppTextButton(
              buttonHeight: 70,
              buttonWidth: 200,
              buttonText: currentIndex == onBoardData.length - 1
                  ? "Get Started"
                  : "Next",
              onPressed: () {
                if (currentIndex == onBoardData.length - 1) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetsHomeScreen(),
                    ),
                    (route) => false,
                  );
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                }
              }),
          verticalSpace(30),
          SmoothPageIndicator(
            
            controller: pageController,
            count: onBoardData.length,
            effect: const ExpandingDotsEffect(activeDotColor: AppColors.buttonColor),
          ),
        ],
      ),
    );
  }
}
