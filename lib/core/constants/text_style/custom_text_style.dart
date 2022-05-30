import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle unSelectedTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle SelectedTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w900,
    );
  }
}
