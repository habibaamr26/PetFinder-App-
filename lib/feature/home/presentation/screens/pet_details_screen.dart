import 'package:animals_app/core/constant/app_colors.dart';
import 'package:animals_app/core/constant/app_strings.dart';
import 'package:animals_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import '../../data/models/response_model.dart';
import '../widget/info_box.dart';
import '../widget/pet_details_stack.dart';

class PetDetailsScreen extends StatelessWidget {
  final CatApiResponse pet;

  const PetDetailsScreen({super.key, required this.pet});
  @override
  Widget build(BuildContext context) {
    final breed = pet.breeds?.isNotEmpty == true ? pet.breeds!.first : null;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PetDetailsStack(petImageUrl: pet.url),
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              breed!.name,
                              style: AppTextStyles.textStyleBold28,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Colors.red,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  breed.lifeSpan,
                                  style: AppTextStyles.textStyleRegular18,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '\$95',
                          style: AppTextStyles.textStyleBold28.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: InfoBox(title: 'breed', value: 'Male'),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: InfoBox(title: 'Age', value: '1 Year'),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: InfoBox(title: 'Weight', value: '10 Kg'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      AppStrings.about,
                      style: AppTextStyles.textStyleSemiBold22,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      breed.description,
                      style: AppTextStyles.textStyleRegular16,
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: SizedBox(
              width: 297,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  AppStrings.adoptMe,
                  style: AppTextStyles.textStyleMedium16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
