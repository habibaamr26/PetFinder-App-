import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text_style.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  String selectedCategory = 'all';
  final List<String> categories = ["All", 'Cats', 'Dogs', 'Birds', 'Fish'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category == selectedCategory;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = category;
                });
              },
              child: Container(
                width: 56,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: isSelected
                        ? AppColors.primaryDark
                        : Colors.transparent,
                  ),
                  color: isSelected
                      ? AppColors.primaryDark
                      : AppColors.listBackground,
                ),
                alignment: Alignment.center,
                child: Text(
                  category,
                  style: AppTextStyles.textStyleSemiBold14.copyWith(
                    color: isSelected
                        ? Colors.white
                        : AppColors.primaryDark,
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
