import 'package:flutter/material.dart';
import 'package:flutter_sun_eye/core/colors/app_color.dart';

class DefaultButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const DefaultButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.blackColor,
        backgroundColor: AppColors.mainColor, // Text color
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Button padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35), // Button border radius
        ),
      ),
      child: Text(text),
    );
  }
}
