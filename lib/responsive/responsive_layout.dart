import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.desktopScreenLayout,
  }) : super(key: key);

  final Widget mobileScreenLayout;
  final Widget desktopScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return desktopScreenLayout;
      } else {
        return mobileScreenLayout;
      }
    });
  }
}
