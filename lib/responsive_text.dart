import 'package:flutter/widgets.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double size;
  final TextStyle? style;

  const ResponsiveText(this.text, {required this.size, this.style, super.key});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 375;
    return Text(
      text,
      style:
          style?.copyWith(fontSize: size * scale) ??
          TextStyle(fontSize: size * scale),
    );
  }
}
