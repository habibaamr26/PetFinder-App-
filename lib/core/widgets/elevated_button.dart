
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_text_style.dart';


class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double height;
  final double borderRadius;
  final bool isLoading;
  final Widget? icon;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height = 56,
    this.borderRadius = 16,
    this.isLoading = false,
    this.icon,
    this.textStyle,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,
          disabledBackgroundColor: AppColors.lightGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: isLoading
            ? SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(
              textColor ?? AppColors.white,
            ),
          ),
        )
            : icon != null
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            const SizedBox(width: 8),
            Text(
              text,
              style: textStyle ??
                  AppTextStyles.buttonLarge.copyWith(
                    color: textColor ?? AppColors.white,
                  ),
            ),
          ],
        )
            : Text(
          text,
          style: textStyle ??
              AppTextStyles.buttonLarge.copyWith(
                color: textColor ?? AppColors.white,
              ),
        ),
      ),
    );
  }
}
