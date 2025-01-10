import 'package:flutter/material.dart';
import '../../../../core/data/model/cats_model.dart';
import '../../../../core/theming/app_colors.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({super.key});

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = index;
                });
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
                    color: selectedCategory == index
                        ? Colors.white
                        : AppColors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
