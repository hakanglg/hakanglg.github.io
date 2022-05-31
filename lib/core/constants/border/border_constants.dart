import 'package:flutter/widgets.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();
  BorderConstants._init();

  final radiusCircular = const Radius.circular(15);

  final radiusAllLow = BorderRadius.circular(15);
  final radiusAllNormal = BorderRadius.circular(25);
  final radiusAllHigh = BorderRadius.circular(50);

  final radiusRoundedAllLow =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));
  final radiusRoundedAllNormal =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
  final radiusRoundedAllHigh =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));

  final radiusTopHigh = const BorderRadius.only(
      topLeft: Radius.circular(40), topRight: Radius.circular(40));
}
