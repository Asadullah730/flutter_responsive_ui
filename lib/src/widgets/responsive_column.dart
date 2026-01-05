import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_ui/src/core/device_screen_type.dart';
import '../core/responsive_builder.dart';

class ResponsiveColumn extends StatelessWidget {
  final List<Widget>? children;
  final List<Widget>? mobileChildren;
  final List<Widget>? tabletChildren;
  final List<Widget>? desktopChildren;

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  /// NEW
  final bool scrollable;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  const ResponsiveColumn({
    super.key,
    this.children,
    this.mobileChildren,
    this.tabletChildren,
    this.desktopChildren,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.scrollable = true, // ✅ default enabled
    this.padding,
    this.physics,
  });

  List<Widget> _select(DeviceScreenType t) {
    return t == DeviceScreenType.desktop
        ? desktopChildren ??
              tabletChildren ??
              children ??
              mobileChildren ??
              const []
        : t == DeviceScreenType.tablet
        ? tabletChildren ?? children ?? mobileChildren ?? const []
        : mobileChildren ?? children ?? const [];
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, s) {
        final content = Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: _select(s.deviceScreenType),
        );

        if (!scrollable) return content;

        return SingleChildScrollView(
          padding: padding,
          physics: physics,
          child: content,
        );
      },
    );
  }
}
