import 'package:flutter/material.dart';
import 'package:movie_app_provider_mvvm/constants/app_colors.dart';

class MyAppTheme {
  static final ThemeData lighttheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.kWhite,
      foregroundColor: AppColors.kBlack,
      elevation: 1,
    ),
    colorScheme: ColorScheme.light(surface: Color.fromARGB(26, 13, 184, 247)),
  );

  static final ThemeData darktheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade800,
      foregroundColor: AppColors.kWhite,
      elevation: 1,
    ),
    colorScheme: ColorScheme.dark(),
  );
}
