import 'package:flutter/material.dart';
import '../common/constant/app_dimens.dart';

const fontFamily = "Poppins";
const disabledColor = Color(0xFFbcbcbc);
const primaryColor = Color.fromARGB(255, 233, 140, 0);
const secondaryColor = Color(0xFF2d3032);
const errorColor = Color(0xFFEF4444);
const successColor = Color(0xFF00da9f);
const buttonColor = Color(0xFFFFFFFF);

abstract class AppThemes {
  static ThemeData light = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: disabledColor),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blueGrey.shade400,
      elevation: 0,
      titleTextStyle: ThemeData.light().textTheme.bodyMedium?.copyWith(
          fontSize: AppDimens.headlineFontSizeSmall1, color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: ThemeData.light()
        .textTheme
        .apply(
          bodyColor: secondaryColor,
          fontFamily: fontFamily,
        )
        .copyWith(
          bodyMedium: ThemeData.light().textTheme.bodyMedium?.copyWith(
                color: secondaryColor,
                fontSize: AppDimens.headlineFontSizeXXSmall,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.3,
              ),
        ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
