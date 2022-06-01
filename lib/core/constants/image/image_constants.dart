// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

enum ImagePaths { wallpaper, otodo_light, otodo_dark, otodo_mockup }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return "assets/images/$name.PNG";
  }

  Widget toWidget() {
    return Image.asset(path());
  }
}
