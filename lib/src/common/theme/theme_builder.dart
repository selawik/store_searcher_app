import 'package:flutter/material.dart';
import 'package:yandex_map_test/src/common/constant/app_colors.dart';

class ThemeBuilder {
  static ThemeData buildLightTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.white,
      brightness: Brightness.light,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 13,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        labelLarge: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          color: AppColors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
      scaffoldBackgroundColor: AppColors.appBackgroundLight,
      appBarTheme: const AppBarTheme(
        color: AppColors.appBackgroundLight,
      ),
      elevatedButtonTheme: _getElevatedButtonTheme(),
      iconTheme: const IconThemeData(color: AppColors.black),
    );
  }

  static ThemeData buildDarkTheme() {
    return ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          titleMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 13,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        scaffoldBackgroundColor: AppColors.appBackgroundDark,
        elevatedButtonTheme: _getElevatedButtonTheme(),
        iconTheme: const IconThemeData(color: AppColors.white));
  }

  static ElevatedButtonThemeData _getElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: _buttonStyle(color: AppColors.buttonColor),
    );
  }

  static BorderRadius get defaultBorderRadius => BorderRadius.circular(16);

  static List<BoxShadow> get defaultShadow => [
        BoxShadow(
          offset: const Offset(2, 3),
          blurRadius: 5,
          color: AppColors.black.withOpacity(0.4),
        )
      ];

  static ButtonStyle get blueButtonStyle =>
      _buttonStyle(color: AppColors.buttonColor);

  static ButtonStyle get orangeButtonStyle =>
      _buttonStyle(color: AppColors.tretiary);

  static ButtonStyle _buttonStyle({required Color color}) {
    return TextButton.styleFrom(
      minimumSize: const Size(0, 60),
      backgroundColor: color,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      foregroundColor: AppColors.white,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  static BoxDecoration get cardDecoration => BoxDecoration(
        borderRadius: defaultBorderRadius,
        color: AppColors.white,
        boxShadow: ThemeBuilder.defaultShadow,
      );
}
