
import 'package:animals_app/feature/home/presentation/screens/pet_details_screen.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_strings.dart';
import '../../../../core/constant/app_text_style.dart';
import '../../../../core/widgets/error_state.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/search_bar.dart';
import '../../../onboarding/presentation/onboarding_screen.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';
import '../widget/category_list.dart';
import '../widget/pet_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomSearchBar(hintText: AppStrings.search),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(AppStrings.categories, style: AppTextStyles.textStyleBold20),
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
                            builder: (context) => PetDetailsScreen(pet: pet,),
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
    );
  }
}


