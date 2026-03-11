import 'package:flutter/material.dart';
import 'package:greenmart/core/text_style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    extensions:[ MaterialPinThemeExtension(theme: MaterialPinTheme(
      shape: MaterialPinShape.outlined,
      cellSize: Size(56, 64),
      spacing: 12,
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderWidth: 1.5,
      focusedBorderWidth: 2.5,
      borderColor: Colors.grey,
      focusedBorderColor: Colors.indigo,
    ))],
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,surfaceTintColor: AppColors.transColor,),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(AppColors.whiteColor),
        backgroundColor: MaterialStateProperty.all(AppColors.meentGreenColor),
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(22)),
        textStyle: MaterialStateProperty.all(
          AppStyles.poppin600White.copyWith(fontSize: 16),
        ),
      ),
    ),
  );

}
