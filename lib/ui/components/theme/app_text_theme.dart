import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextTheme {
  static TextStyle titleAppBar({
    Color color = Colors.white,
  }) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle titleCategory({
    Color color = AppColors.kSubTitle,
  }) {
    return TextStyle(
      color: color,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    );
  }
}
