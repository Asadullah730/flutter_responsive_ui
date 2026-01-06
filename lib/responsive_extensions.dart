import 'package:flutter/widgets.dart';

extension ResponsiveSize on num {
  /// Width percentage (based on screen width)
  double w(BuildContext context) =>
      MediaQuery.of(context).size.width * (this / 100);

  /// Height percentage (based on screen height)
  double h(BuildContext context) =>
      MediaQuery.of(context).size.height * (this / 100);

  /// Scaled font size (respects system accessibility settings)
  double sp(BuildContext context) =>
      MediaQuery.of(context).textScaler.scale(toDouble());
}
