import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class ViewAllWidget extends StatelessWidget {
  final String name;
  const ViewAllWidget(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
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
