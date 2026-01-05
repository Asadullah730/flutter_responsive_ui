import 'package:flutter/widgets.dart';
import '../core/responsive_builder.dart';
import '../core/device_screen_type.dart';

class ResponsiveListView extends StatelessWidget {
  final List<Widget>? children, mobileChildren, tabletChildren, desktopChildren;
  final EdgeInsetsGeometry? padding;

  const ResponsiveListView({
    super.key,
    this.children,
    this.mobileChildren,
    this.tabletChildren,
    this.desktopChildren,
    this.padding,
  });

  List<Widget> _select(DeviceScreenType t) => t == DeviceScreenType.desktop
      ? desktopChildren ?? tabletChildren ?? children ?? mobileChildren ?? []
      : t == DeviceScreenType.tablet
      ? tabletChildren ?? children ?? mobileChildren ?? []
      : mobileChildren ?? children ?? [];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, s) =>
          ListView(padding: padding, children: _select(s.deviceScreenType)),
    );
  }
}
