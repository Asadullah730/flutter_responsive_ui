import 'package:flutter/material.dart';
import '../core/responsive.dart';

class ResponsivePadding extends StatelessWidget {
  final Widget child;
  final EdgeInsets mobile;
  final EdgeInsets tablet;
  final EdgeInsets desktop;

  const ResponsivePadding({
    super.key,
    required this.child,
    this.mobile = const EdgeInsets.all(12),
    this.tablet = const EdgeInsets.all(24),
    this.desktop = const EdgeInsets.all(32),
  });

  @override
  Widget build(BuildContext context) {
    final padding = Responsive.value(
      context,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );

    return Padding(padding: padding, child: child);
  }
}
