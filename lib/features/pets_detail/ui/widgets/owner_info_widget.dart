import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/helpers/spacing.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_icon_button.dart';

import '../../../../core/data/model/cats_model.dart';
import '../../../../core/theming/app_colors.dart';

class OwnerInfoWidget extends StatelessWidget {
  final CatModel cat;

  const OwnerInfoWidget({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: cat.color,
          backgroundImage: AssetImage(cat.owner.image),
        ),
        verticalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cat.owner.name,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${cat.name} Owner",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),

        AppIconButton(icon: Icons.chat_outlined, onPressed: (){} , backgroundColor: AppColors.color3.withOpacity(0.3), iconColor: Colors.lightBlue,),

        horizontalSpace(10),

AppIconButton(icon: Icons.phone_outlined, onPressed: (){} , backgroundColor:Colors.red.withOpacity(0.2), iconColor: Colors.red,),



      ],
    );
  }
}
