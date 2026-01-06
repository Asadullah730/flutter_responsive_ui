import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_ui_plus/src/core/device_screen_type.dart';
import 'breakpoints.dart';
import 'responsive_sizing_info.dart';

typedef ResponsiveWidgetBuilder = Widget Function(
    BuildContext context, ResponsiveSizingInfo sizing);

class ResponsiveBuilder extends StatelessWidget {
  final ResponsiveWidgetBuilder builder;

  const ResponsiveBuilder({super.key, required this.builder});

  DeviceScreenType _getDeviceType(double width) {
    if (width >= Breakpoints.desktop) return DeviceScreenType.desktop;
    if (width >= Breakpoints.tablet) return DeviceScreenType.tablet;
    return DeviceScreenType.mobile;
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return builder(
      context,
      ResponsiveSizingInfo(
        deviceScreenType: _getDeviceType(media.size.width),
        screenSize: media.size,
      ),
    );
  }
}
