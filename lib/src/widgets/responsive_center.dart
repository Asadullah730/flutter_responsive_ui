import 'package:flutter/widgets.dart';
import '../core/responsive_builder.dart';
import '../core/device_screen_type.dart';

class ResponsiveCenter extends StatelessWidget {
  final Widget? child, mobileChild, tabletChild, desktopChild;

  const ResponsiveCenter({
    super.key,
    this.child,
    this.mobileChild,
    this.tabletChild,
    this.desktopChild,
  });

  Widget? _select(DeviceScreenType t) => t == DeviceScreenType.desktop
      ? desktopChild ?? tabletChild ?? child ?? mobileChild
      : t == DeviceScreenType.tablet
      ? tabletChild ?? child ?? mobileChild
      : mobileChild ?? child;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, s) => Center(child: _select(s.deviceScreenType)),
    );
  }
}
