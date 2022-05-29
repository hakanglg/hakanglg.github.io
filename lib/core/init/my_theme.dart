import 'package:flutter/material.dart';
import 'package:porfolio_web/core/constants/border/border_constants.dart';
import 'package:porfolio_web/core/constants/color/color_constants.dart';

ThemeData myTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
        color: ColorConstants.instance.white,
        toolbarTextStyle: TextStyle(
            color: ColorConstants.instance.white, fontWeight: FontWeight.w600),
        titleTextStyle: TextStyle(
          color: ColorConstants.instance.black,
        )),
    textTheme: TextTheme(
      headline3: TextStyle(
        // fontSize: 36,
        fontWeight: FontWeight.w600,
        color: ColorConstants.instance.white,
      ),
      bodyText2: TextStyle(
        // fontSize: 36,
        // fontWeight: FontWeight.w600,
        color: ColorConstants.instance.white,
      ),
      subtitle2: TextStyle(
        // fontSize: 24,
        // fontWeight: FontWeight.w300,
        fontStyle: FontStyle.italic,
        color: Colors.grey[600],
      ),
    ),
    iconTheme: IconThemeData(color: ColorConstants.instance.white),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(150, 50),
        maximumSize: const Size(150, 50),
        shape: RoundedRectangleBorder(
            borderRadius: BorderConstants.instance.radiusAllHigh,
            side: const BorderSide(color: Colors.white)),
      ),
    ));
