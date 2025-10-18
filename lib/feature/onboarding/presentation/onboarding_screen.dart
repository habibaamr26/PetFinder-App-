import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_assets.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/app_text_style.dart';
import '../../../core/route/route_constant.dart';
import '../../../core/widgets/elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Image.asset(AppAssets.onboardingPets, height: 300),
                const SizedBox(height: 60),
                const Text(
                  AppStrings.onboardingTitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyleBold32,
                ),
                const SizedBox(height: 10),
                Text(
                  AppStrings.onboardingDescription,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyleRegular16,
                ),
                const SizedBox(height: 61),
                CustomElevatedButton(
                  text: AppStrings.getStarted,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                  height: 54,
                  backgroundColor: Color(0xFF4ECDC4),
                  textStyle: AppTextStyles.textStyleMedium18,
                  icon: SvgPicture.asset(
                    AppAssets.onboardingIcon,
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
