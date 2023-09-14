import 'package:flutter/material.dart';
import 'package:yandex_map_test/src/common/constant/app_colors.dart';
import 'package:yandex_map_test/src/common/theme/theme_builder.dart';

sealed class AppMessenger {
  static void showMessage(BuildContext context, String message) {
    _showSnackBar(context, message, AppColors.white, AppColors.black);
  }

  static void showError(BuildContext context, String message) {
    _showSnackBar(context, message, AppColors.red, AppColors.white);
  }

  static void _showSnackBar(
    BuildContext context,
    String message,
    Color backgroundColor,
    Color textColor,
  ) {
    final snackBar = SnackBar(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeBuilder.defaultBorderRadius,
      ),
      behavior: SnackBarBehavior.floating,
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
