import 'package:flutter/widgets.dart';

extension ResponsiveSize on num {
  double w(BuildContext context) =>
      MediaQuery.of(context).size.width * (this / 100);

  double h(BuildContext context) =>
      MediaQuery.of(context).size.height * (this / 100);

  double sp(BuildContext context) =>
      MediaQuery.of(context).textScaleFactor * this;
}
