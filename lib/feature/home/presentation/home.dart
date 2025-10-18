import 'package:animals_app/core/constant/app_colors.dart';
import 'package:animals_app/core/constant/app_text_style.dart';
import 'package:animals_app/feature/home/presentation/cubit/home_cubit.dart';
import 'package:animals_app/feature/home/presentation/widget/bottom_navigation.dart';
import 'package:animals_app/feature/home/presentation/widget/category_list.dart';
import 'package:animals_app/feature/home/presentation/widget/pet_card.dart';
import 'package:animals_app/feature/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constant/app_strings.dart';
import '../../../core/widgets/error_state.dart';
import '../../../core/widgets/loading_widget.dart';
import '../../../core/widgets/search_bar.dart';
import '../data/models/response_model.dart';
import 'cubit/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomSearchBar(hintText: 'Search'),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Categories', style: AppTextStyles.textStyleBold20),
          ),
          const SizedBox(height: 14),
          CategoryList(),
          const SizedBox(height: 20),

          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoadingState) {
                  return LoadingWidget(color: AppColors.primary, size: 50);
                } else if (state is HomeErrorState) {
                  return CustomErrorWidget(message: state.errorMessage);
                } else if (state is HomeLoadedState) {
                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: state.catImages.length,
                    itemBuilder: (context, index) {
                      final pet = state.catImages[index];
                      return PetCard(
                        pet: pet,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnboardingScreen(),
                            ),
                          );
                        },
                      );
                    },
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
