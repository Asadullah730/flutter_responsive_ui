import 'package:flutter/material.dart';

class Responsive {
  static const double mobileMax = 600;
  static const double tabletMax = 1024;

  static T value<T>(
    BuildContext context, {
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (width <= mobileMax) return mobile;
    if (width <= tabletMax) return tablet;
    return desktop;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileMax;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > mobileMax &&
      MediaQuery.of(context).size.width <= tabletMax;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > tabletMax;
}
