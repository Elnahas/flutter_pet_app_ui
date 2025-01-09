import 'package:flutter/material.dart';

import '../../../../core/data/model/cats_model.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/const.dart';
import '../../../pets_detail/ui/widgets/pets_detail_screen.dart';

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
            bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            icons.length,
            (index) => GestureDetector(
              onTap: () {},
              child: Container(
                height: 60,
                width: 50,
                padding: const EdgeInsets.all(5),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        Icon(
                          icons[index],
                          size: 30,
                          color: selectedIndex == index
                              ? AppColors.blue
                              : AppColors.black.withOpacity(0.6),
                        ),
                        const SizedBox(height: 5),
                        selectedIndex == index
                            ? Container(
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.blue,
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    index == 2
                        ? Positioned(
                            right: 0,
                            top: -10,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.buttonColor,
                              ),
                              child: const Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
             const SizedBox(height: 5),
            headerParts(),
            const SizedBox(height: 20),
              joinNow(),
                          const SizedBox(height: 30),
              categoryViewAll("Categories"),
                          const SizedBox(height: 25),
              categoryItems(),
                const SizedBox(height: 20),
              categoryViewAll("Pets"),
                          const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(cats.length, (index) {
                    final cat = cats[index];
                    return petsItems(size, cat);
                  }),
                ),
              ),
                    ],
                  ),
          )),
    );
  }


  Padding petsItems(Size size, Cat cat) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PetsDetailScreen(cat: cat),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: size.height * 0.3,
            width: size.width * 0.55,
            color: cat.color.withOpacity(0.5),
            child: Stack(
              children: [
                Positioned(
                  bottom: -10,
                  right: -10,
                  height: 100,
                  width: 100,
                  child: Transform.rotate(
                    angle: 12,
                    child: Image.network(
                      "https://clipart-library.com/images/rTnrpap6c.png",
                      color: cat.color,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: -25,
                  height: 90,
                  width: 90,
                  child: Transform.rotate(
                    angle: -11.5,
                    child: Image.network(
                      "https://clipart-library.com/images/rTnrpap6c.png",
                      color: cat.color,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  right: 10,
                  child: Hero(
                    tag: cat.image,
                    child: Image.asset(
                      cat.image,
                      height: size.height * 0.23,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
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
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          cat.fav
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_rounded,
                          color: cat.fav ? Colors.red : AppColors.black.withOpacity(0.6),
                        ),
                      ),
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

    SingleChildScrollView categoryItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12.withOpacity(0.03),
            ),
            child: const Icon(Icons.tune_rounded),
          ),
          ...List.generate(
            categories.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                  selectedCategory = index;
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: selectedCategory == index
                        ? AppColors.buttonColor
                        : Colors.black12.withOpacity(0.03),
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: selectedCategory == index ? Colors.white : AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
                  color: AppColors.black.withOpacity(0.6),
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.blue,
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
                    color: AppColors.black,
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
          color: AppColors.blueBackground,
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
                    color: AppColors.pawColor2,
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
                    color: AppColors.pawColor2,
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
                    color: AppColors.pawColor2,
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
              color: AppColors.black,
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
