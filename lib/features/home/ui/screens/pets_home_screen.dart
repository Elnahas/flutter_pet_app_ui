import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/features/home/ui/widgets/category_items.dart';
import 'package:flutter_pet_app_ui/features/home/ui/widgets/header_parts_widgets.dart';
import 'package:flutter_pet_app_ui/features/home/ui/widgets/join_now_section.dart';
import 'package:flutter_pet_app_ui/features/home/ui/widgets/pets_items.dart';
import 'package:flutter_pet_app_ui/features/home/ui/widgets/view_all_widget.dart';
import '../../../../core/data/model/cats_model.dart';

class PetsHomeScreen extends StatelessWidget {
  const PetsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            const HeaderParts(),
            const SizedBox(height: 20),
            const JoinNowSection(),
            const SizedBox(height: 30),
            const ViewAllWidget("Categories"),
            const SizedBox(height: 25),
            const CategoryItems(),
            const SizedBox(height: 20),
            const ViewAllWidget("Pets"),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(cats.length, (index) {
                  final cat = cats[index];
                  return PetsItems(size: size, cat: cat);
                }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
