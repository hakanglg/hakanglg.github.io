import '../constants/border/border_constants.dart';
import '../constants/color/color_constants.dart';

abstract class BaseState {
  BorderConstants borderConstants = BorderConstants.instance;
  ColorConstants colorConstants = ColorConstants.instance;
  // InputDecorator inputDecorator = InputDecorator.instance;
}
