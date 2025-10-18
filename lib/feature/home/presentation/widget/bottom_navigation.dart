import 'package:animals_app/core/constant/app_colors.dart';
import 'package:animals_app/feature/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 50,
      backgroundColor: AppColors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: context.read<HomeCubit>().currentIndex,
      onTap: (index) {
        context.read<HomeCubit>().changeBottomNavIndex(index);
      },
      selectedItemColor: const Color(0xFF4ECDC4),
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: context.read<HomeCubit>().currentIndex == 0
              ? SvgPicture.asset(
                  "asset/images/home_color.svg",
                  width: 30,
                  height: 30,
                )
              : SvgPicture.asset(
                  "asset/images/home-2.svg",
                  width: 30,
                  height: 30,
                ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: context.read<HomeCubit>().currentIndex == 1
              ? SvgPicture.asset(
                  "asset/images/heart_color.svg",
                  width: 30,
                  height: 30,
                )
              : SvgPicture.asset(
                  "asset/images/heart.svg",
                  width: 30,
                  height: 30,
                ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "asset/images/messages.svg",
            width: 30,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "asset/images/profile-circle.svg",
            width: 30,
            height: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}
