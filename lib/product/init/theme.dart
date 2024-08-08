import 'package:flutter/material.dart';
import 'package:portfolio_me/product/utility/constants/app/app_constants.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';



final ThemeData myTheme = ThemeData(
  fontFamily: AppConstants.FONT_FAMILY,
  useMaterial3: true,
  scaffoldBackgroundColor: ColorConstants.instance.passiveGreen,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorConstants.instance.passiveGreen,
    elevation: 0,
    iconTheme: IconThemeData(color: ColorConstants.instance.activeWhite),
    titleTextStyle: TextStyle(color: ColorConstants.instance.activeWhite),
  ),
  textTheme: TextTheme(
    headlineSmall: TextStyle(
      color: ColorConstants.instance.activeWhite,
      fontSize: 24,
      // fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: ColorConstants.instance.activeWhite,
      fontSize: 32,
      // fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      color: ColorConstants.instance.activeWhite,
      fontSize: 48,
      // fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      color: ColorConstants.instance.activeWhite,
      fontSize: 13,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.5

    ),
    bodyMedium: TextStyle(
      color: ColorConstants.instance.activeWhite,
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: TextStyle(
      color: ColorConstants.instance.activeWhite,
      fontSize: 32,
      fontWeight: FontWeight.normal,
    ),
  )
);
