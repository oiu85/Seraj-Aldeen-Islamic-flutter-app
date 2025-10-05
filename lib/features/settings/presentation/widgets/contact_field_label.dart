import 'package:flutter/material.dart';
import 'package:seraj_aldean_flutter_app/core/responsive/screen_util_res.dart';
import 'package:seraj_aldean_flutter_app/config/appconfig/app_colors.dart';
import 'package:seraj_aldean_flutter_app/gen/fonts.gen.dart';

/// Field label with optional required indicator
class ContactFieldLabel extends StatelessWidget {
  final String label;
  final bool isRequired;

  const ContactFieldLabel({
    super.key,
    required this.label,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 14.f,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (isRequired)
          Text(
            ' *',
            style: TextStyle(
              color: AppColors.error,
              fontSize: 16.f,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}
