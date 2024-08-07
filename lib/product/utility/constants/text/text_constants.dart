import 'package:flutter/material.dart';

class TextConstants {
  static TextConstants? _instance;
  static TextConstants get instance {
    _instance ??= TextConstants._init();
    return _instance!;
  }

  TextConstants._init();

  final TextStyle headlineSmall = TextStyle();
}
