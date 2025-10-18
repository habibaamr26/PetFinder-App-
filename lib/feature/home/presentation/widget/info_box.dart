
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text_style.dart';

class InfoBox extends StatelessWidget {
  final String title;
  final String value;

  const InfoBox({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.imageBckground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.textStyleMedium18.copyWith(color:AppColors.black),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTextStyles.textStyleMedium16.copyWith(color:AppColors.grey),
          ),
        ],
      ),
    );
  }
}
