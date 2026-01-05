import 'package:flutter/widgets.dart';
import '../core/responsive_builder.dart';
import '../core/device_screen_type.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double size;
  final TextStyle? style;

  const ResponsiveText(this.text, {super.key, required this.size, this.style});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, sizing) {
        final scale = sizing.deviceScreenType == DeviceScreenType.desktop
            ? 1.2
            : sizing.deviceScreenType == DeviceScreenType.tablet
            ? 1.1
            : 1.0;

        return Text(
          text,
          style:
              style?.copyWith(fontSize: size * scale) ??
              TextStyle(fontSize: size * scale),
        );
      },
    );
  }
}
