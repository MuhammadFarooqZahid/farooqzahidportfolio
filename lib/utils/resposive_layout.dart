import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget desktopWidget;
  final Widget mobileWidget;
  const ResposiveLayout({
    super.key,
    required this.desktopWidget,
    required this.mobileWidget,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return desktopWidget;
        } else {
          return mobileWidget;
        }
      },
    );
  }
}
