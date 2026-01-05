import 'package:flutter/widgets.dart';
import 'breakpoints.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveBuilder({
    required this.mobile,
    this.tablet,
    this.desktop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width >= Breakpoints.tablet) {
      return desktop ?? tablet ?? mobile;
    } else if (width >= Breakpoints.mobile) {
      return tablet ?? mobile;
    }
    return mobile;
  }
}
