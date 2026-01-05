import 'package:flutter/widgets.dart';
import '../core/responsive_builder.dart';
import '../core/device_screen_type.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget? child, mobileChild, tabletChild, desktopChild;
  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final AlignmentGeometry? alignment;
  final Decoration? decoration;

  const ResponsiveContainer({
    super.key,
    this.child,
    this.mobileChild,
    this.tabletChild,
    this.desktopChild,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.alignment,
    this.decoration,
  });

  Widget? _select(DeviceScreenType t) => t == DeviceScreenType.desktop
      ? desktopChild ?? tabletChild ?? child ?? mobileChild
      : t == DeviceScreenType.tablet
      ? tabletChild ?? child ?? mobileChild
      : mobileChild ?? child;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, s) => Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        alignment: alignment,
        decoration: decoration,
        child: _select(s.deviceScreenType),
      ),
    );
  }
}
