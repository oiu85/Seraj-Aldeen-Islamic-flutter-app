import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

/// Reusable text field for contact form
class ContactTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int maxLines;

  const ContactTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      onChanged: onChanged,
      validator: validator,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: 14.f,
        color: AppColors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.primary.withValues(alpha: 0.08),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(maxLines > 1 ? 20.r : 60.r),
          borderSide: BorderSide(color: AppColors.primary.withValues(alpha: 0.2), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(maxLines > 1 ? 20.r : 60.r),
          borderSide: BorderSide(color: AppColors.primary.withValues(alpha: 0.2), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(maxLines > 1 ? 20.r : 60.r),
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(maxLines > 1 ? 20.r : 60.r),
          borderSide: BorderSide(color: AppColors.error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(maxLines > 1 ? 20.r : 60.r),
          borderSide: BorderSide(color: AppColors.error, width: 2),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12.f,
          fontFamily: FontFamily.tajawal,
          color: AppColors.grey,
          height: 1,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      ),
    );
  }
}
