import 'device_screen_type.dart';
import 'package:flutter/widgets.dart';

class ResponsiveSizingInfo {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;

  ResponsiveSizingInfo({
    required this.deviceScreenType,
    required this.screenSize,
  });
}
