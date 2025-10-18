
import 'package:flutter/material.dart';

import '../../../../core/constant/app_strings.dart';
import '../../../../core/constant/app_text_style.dart';

PreferredSizeWidget customAppBar()
{
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    title: const Text(
      AppStrings.findYourForeverPet,
      style: AppTextStyles.textStyleBold24,
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.notifications_outlined, color: Colors.black),
        onPressed: () {},
      ),
    ],
  );
}