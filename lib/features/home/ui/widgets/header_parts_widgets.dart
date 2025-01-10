import 'package:flutter/material.dart';
import 'package:flutter_pet_app_ui/core/helpers/spacing.dart';
import 'package:flutter_pet_app_ui/core/theming/app_text_styles.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/app_icon_button.dart';

class HeaderParts extends StatelessWidget {
  const HeaderParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
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
          ),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  text: "Mansoura, ",
                  style: AppTextStyles.font30BoldBlack,
                  children: [
                    TextSpan(
                        text: "EG",
                        style: AppTextStyles.font30BoldBlack
                            .copyWith(fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              const Spacer(),
              AppIconButton(
                icon: Icons.search,
                onPressed: () {},
              ),
              horizontalSpace(10),
              AppIconButton(
                icon: Icons.notifications_outlined,
                onPressed: () {},
                showBadge: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
