import 'package:my_dashboard/responsive/base_scaffold.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;
  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return BaseScaffold(
        isDesktop: constraints.maxWidth > 1100,
        isTablet: constraints.maxWidth >= 600,
        child: constraints.maxWidth <= 600
            ? mobileBody
            : constraints.maxWidth < 1100
                ? tabletBody
                : desktopBody,
      );
    });
  }
}
