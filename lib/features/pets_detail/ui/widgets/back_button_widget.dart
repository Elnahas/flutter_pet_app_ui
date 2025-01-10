import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/widgets/app_icon_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonWidget extends StatelessWidget {

  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 115.h,
      right: 20,
      left: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIconButton(
              backgroundColor: Colors.white,
              icon: Icons.arrow_back_ios_rounded,
              onPressed: () {
                Navigator.pop(context);
              }),
          AppIconButton(
              backgroundColor: Colors.white,
              icon: Icons.more_horiz,
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
