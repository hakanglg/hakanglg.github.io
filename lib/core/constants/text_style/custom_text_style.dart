import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle unSelectedTextStyle(BuildContext context) {
    return const TextStyle(
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle SelectedTextStyle(BuildContext context) {
    return const TextStyle(
      fontWeight: FontWeight.w900,
    );
  }
}
