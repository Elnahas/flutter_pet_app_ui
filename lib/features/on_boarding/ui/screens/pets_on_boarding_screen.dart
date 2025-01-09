import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/data/model/onboards_model.dart';
import 'package:flutter_pet_app_ui/core/utils/const.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../home/ui/screens/pets_home_screen.dart';

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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.7,
              color: Colors.white,
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
                    return onBoardingItems(size, index);
                  }),
            ),
            GestureDetector(
                onTap: () {
                  if (currentIndex == onBoardData.length - 1) {
                         Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetsHomeScreen(),
                    ),
                    (route) => false);
                  } else {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  }
                },
                child: Container(
                  height: 70,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.buttonColor),
                  child: Center(
                      child: Text(
                    currentIndex == onBoardData.length - 1
                        ? "Get Started"
                        : "Next",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onBoardData.length,
                  (index) => indicatorForSlider(index: index),
                )
              ],
            )
          ],
        ));
  }

  Column onBoardingItems(Size size, int index) {
    return Column(
      children: [
        Container(
          height: size.height * 0.4,
          width: size.width * 0.9,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 240,
                    width: size.width * 0.9,
                    color: AppColors.orangeContainer,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 5,
                            left: -40,
                            width: 130,
                            height: 130,
                            child: Transform.rotate(
                              angle: -11,
                              child: Image.network(
                                "https://clipart-library.com/images/rTnrpap6c.png",
                                color: AppColors.pawColor1,
                              ),
                            )),
                        Positioned(
                            bottom: -20,
                            right: -20,
                            width: 130,
                            height: 130,
                            child: Transform.rotate(
                              angle: -13,
                              child: Image.network(
                                "https://clipart-library.com/images/rTnrpap6c.png",
                                color: AppColors.pawColor1,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  // bottom: 0,
                  right: 60,
                  child: Image.asset(
                    onBoardData[index].image,
                    height: 375,
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.w900,
                height: 1.2),
            children: [
              TextSpan(text: "Find You "),
              TextSpan(
                  text: "Dream\n",
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.w900)),
              TextSpan(text: "Pet Here"),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          onBoardData[index].text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        )
      ],
    );
  }

  AnimatedContainer indicatorForSlider({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: currentIndex == index ? 20 : 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: currentIndex == index ? Colors.orange : AppColors.black.withOpacity(0.2),
      ),
    );
  }
}
