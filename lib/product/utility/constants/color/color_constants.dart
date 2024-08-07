import 'package:flutter/material.dart';

class ColorConstants {
static ColorConstants? _instance;
static ColorConstants get instance {
 _instance ??= ColorConstants._init();
return _instance!;
}
ColorConstants._init();


final Color activeGreen = const Color(0xFF59FFD2);
final Color passiveGreen = const Color(0xFF0B1323);
final Color activeWhite = const Color(0xFFC1CCF3);
final Color passiveWhite = const Color(0xFF757FA0);
final Color activeBlue = const Color(0xFF0F1931);
final Color white = const Color(0xFFFFFFFF);

}