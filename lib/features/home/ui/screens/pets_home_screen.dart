import 'package:flutter/material.dart';

import '../../../../core/utils/const.dart';

class PetsHomeScreen extends StatefulWidget {
  const PetsHomeScreen({super.key});

  @override
  State<PetsHomeScreen> createState() => _PetsHomeScreenState();
}

class _PetsHomeScreenState extends State<PetsHomeScreen> {
  int selectedCategory = 0;
  int selectedIndex = 0;
  List<IconData> icons = [
    Icons.home_outlined,
    Icons.favorite_outline_rounded,
    Icons.chat,
    Icons.person_outline_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
           const SizedBox(height: 5),
          headerParts(),
          const SizedBox(height: 20),
            joinNow(),
                        const SizedBox(height: 30),
            categoryViewAll("Categories"),
        ],
      )),
    );
  }

  Padding headerParts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 16,
                  color: black.withOpacity(0.6),
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: blue,
                size: 18,
              ),
            ],
          ),
          Row(
            children: [
              const Text.rich(
                TextSpan(
                  text: "Mansoura, ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                  children: [
                    TextSpan(
                      text: "EG",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.search),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    const Icon(Icons.notifications_outlined),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Container(
                        height: 7,
                        width: 7,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding joinNow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 180,
          width: double.infinity,
          color: blueBackground,
          child: Stack(
            children: [
              Positioned(
                bottom: -20,
                right: -30,
                width: 100,
                height: 100,
                child: Transform.rotate(
                  angle: 12,
                  child: Image.network(
                    "https://clipart-library.com/images/rTnrpap6c.png",
                    color: pawColor2,
                  ),
                ),
              ),
              Positioned(
                bottom: -35,
                left: -15,
                width: 100,
                height: 100,
                child: Transform.rotate(
                  angle: -12,
                  child: Image.network(
                    "https://clipart-library.com/images/rTnrpap6c.png",
                    color: pawColor2,
                  ),
                ),
              ),
              Positioned(
                top: -40,
                left: 120,
                width: 110,
                height: 110,
                child: Transform.rotate(
                  angle: -16,
                  child: Image.network(
                    "https://clipart-library.com/images/rTnrpap6c.png",
                    color: pawColor2,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 20,
                height: 170,
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
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amberAccent),
                      child: const Text(
                        "Join Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding categoryViewAll(name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const Text(
                "View All",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsetsDirectional.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.amber,
                ),
                child: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 14,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }


}
