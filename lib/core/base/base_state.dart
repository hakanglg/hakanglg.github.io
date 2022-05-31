import 'package:porfolio_web/core/constants/string/strings_constants.dart';

import '../constants/border/border_constants.dart';
import '../constants/color/color_constants.dart';

abstract class BaseState {
  BorderConstants borderConstants = BorderConstants.instance;
  ColorConstants colorConstants = ColorConstants.instance;
  StringConstants stringConstants = StringConstants.instance;
  // InputDecorator inputDecorator = InputDecorator.instance;
}
