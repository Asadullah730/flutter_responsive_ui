import 'package:flutter/widgets.dart';

class ScreenConfig {
  static late double width;
  static late double height;
  static late double devicePixelRatio;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    width = mediaQuery.size.width;
    height = mediaQuery.size.height;
    devicePixelRatio = mediaQuery.devicePixelRatio;
  }
}
