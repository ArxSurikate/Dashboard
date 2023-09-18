import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_app/screen/homepage/dashboard/desktop_dashboardpage.dart';
import 'package:rpg_app/screen/homepage/dashboard/mobile_dashboardpage.dart';
import 'package:rpg_app/screen/homepage/dashboard/tablet_dashboardpage.dart';
import 'package:rpg_app/screen/homepage/widgets/CustomDrawer.dart';
import 'package:rpg_app/service/provider.dart';
import 'package:rpg_app/service/theme.dart';

import '../../responsivelayout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<String> texts = [
    "Profil",
    "Formations",
    "Messages",
    "Daily mission",
    "Dashboard",
  ];
  static final List<Widget> mobileView = [
    Container(
      color: Colors.yellow[100],
    ),
    Container(
      color: Colors.yellow[200],
    ),
    Container(
      color: Colors.yellow[300],
    ),
    Container(
      color: Colors.yellow[400],
    ),
    MobileDashboardPage()
  ];

  static final List<Widget> tabletView = [
    Container(
      color: Colors.yellow[100],
    ),
    Container(
      color: Colors.yellow[200],
    ),
    Container(
      color: Colors.yellow[300],
    ),
    Container(
      color: Colors.yellow[400],
    ),
    const TabletDashboardPage(),
  ];

  static final List<Widget> desktopView = [
    DesktopDashboardPage(),
    DesktopDashboardPage(),
    DesktopDashboardPage(),
    DesktopDashboardPage(),
    DesktopDashboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomProvider>(
      builder: (context, provider, child) {
        final int index = provider.getIndex();
        return Scaffold(
          appBar: AppBar(
            title: Text(texts.elementAt(index)),
          ),
          drawer: (MediaQuery.of(context).size.width > CustomTheme.tabletSize)
              ? null
              : CustomDrawer(
                  currentIndex: index),
          body: ResponsiveLayout(
              mobileScaffold:
                  mobileView[index],
              tabletScaffold:
                  tabletView[index],
              desktopScaffold:
                  desktopView[index]),
        );
      },
    );
  }

}
