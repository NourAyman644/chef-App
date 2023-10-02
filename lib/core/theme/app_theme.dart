import 'package:chef_app/core/utils/App_colors.dart';
import 'package:chef_app/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    textTheme: TextTheme(
      displayLarge: boldStyle(),
      displayMedium: regularStyle(),
    ),
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: boldStyle(color: AppColors.textfield, fontSize: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      suffixIconColor: AppColors.textfield,
    ),
  );
}
