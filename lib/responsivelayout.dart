import 'package:rpg_app/service/theme.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.desktopScaffold,
      required this.tabletScaffold});

  final Widget mobileScaffold;
  final Widget desktopScaffold;
  final Widget tabletScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < CustomTheme.mobileSize) {
          return mobileScaffold;
        } else if (constraints.maxWidth < CustomTheme.tabletSize) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
