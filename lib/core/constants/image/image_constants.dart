import 'package:flutter/widgets.dart';

enum ImagePaths { wallpaper }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return "assets/images/wallpaper.JPG";
  }

  Widget toWidget() {
    return Image.asset(path());
  }
}
