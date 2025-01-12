import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/features/pets_detail/ui/widgets/back_button_widget.dart';
import 'package:flutter_pet_app_ui/features/pets_detail/ui/widgets/image_and_background_widget.dart';
import 'package:flutter_pet_app_ui/features/pets_detail/ui/widgets/more_info_widget.dart';
import 'package:flutter_pet_app_ui/features/pets_detail/ui/widgets/name_address_favorite_widget.dart';
import 'package:flutter_pet_app_ui/features/pets_detail/ui/widgets/owner_info_widget.dart';
import 'package:readmore/readmore.dart';
import '../../../../core/data/model/cats_model.dart';
import '../../../../core/theming/app_colors.dart';

class PetsDetailScreen extends StatefulWidget {
  final CatModel cat;
  const PetsDetailScreen({super.key, required this.cat});

  @override
  State<PetsDetailScreen> createState() => _PetsDetailScreenState();
}

class _PetsDetailScreenState extends State<PetsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          ItemsImageAndBackground(cat: widget.cat),
          const BackButtonWidget(),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.52,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      NameAddressAndFavoriteWidget(cat: widget.cat),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MoreInfoWidget(
                            color: AppColors.color1,
                            backgroundColor: AppColors.color1.withOpacity(0.5),
                            title: widget.cat.sex,
                            label: "Sex",
                          ),
                          MoreInfoWidget(
                            color: AppColors.color2,
                            backgroundColor: AppColors.color2.withOpacity(0.5),
                            title: "${widget.cat.age.toString()} Years",
                            label: "Age",
                          ),
                          MoreInfoWidget(
                            color: AppColors.color3,
                            backgroundColor: AppColors.color3.withOpacity(0.5),
                            title: "${widget.cat.weight.toString()} KG",
                            label: "Weight",
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      OwnerInfoWidget(cat: widget.cat),
                      const SizedBox(height: 20),
                      ReadMoreText(
                        widget.cat.description,
                        textAlign: TextAlign.justify,
                        trimCollapsedText: 'See More',
                        colorClickableText: Colors.orange,
                        trimLength: 100,
                        trimMode: TrimMode.Length,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.buttonColor,
                        ),
                        child: const Center(
                          child: Text(
                            'Adopt Me',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
