import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_text_style.dart';
class CustomSearchBar extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onFilterTap;
  final bool showFilterIcon;

  const CustomSearchBar({
    Key? key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onFilterTap,
    this.showFilterIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: AppTextStyles.textStyleRegular16,
      decoration: InputDecoration(
        hintText: hintText ?? 'Search',
        hintStyle: AppTextStyles.textStyleRegular16,
        prefixIcon: const Icon(Icons.search, ),
        suffixIcon: showFilterIcon
            ? IconButton(
          icon: const Icon(Icons.tune),
          onPressed: onFilterTap,
        )
            : null,
        filled: true,
        fillColor: Colors.grey[50],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color:  AppColors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
    );
  }
}