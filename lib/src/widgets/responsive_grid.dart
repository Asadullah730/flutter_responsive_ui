import 'package:flutter/material.dart';
import '../core/responsive.dart'; // ✅ ADD THIS

class ResponsiveGrid extends StatelessWidget {
  final int mobile;
  final int tablet;
  final int desktop;
  final List<Widget> children;
  final double spacing;

  const ResponsiveGrid({
    super.key,
    required this.children,
    this.mobile = 2,
    this.tablet = 4,
    this.desktop = 6,
    this.spacing = 12,
  });

  @override
  Widget build(BuildContext context) {
    final columns = Responsive.value(
      context,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
    );

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
      ),
      itemCount: children.length,
      itemBuilder: (_, i) => children[i],
    );
  }
}
