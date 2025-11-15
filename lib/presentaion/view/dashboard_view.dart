import 'package:adaptive_dashboard/presentaion/view/desktop%20layout/desktop_layout.dart';
import 'package:adaptive_dashboard/presentaion/view/mobile%20layout/mobile_layout.dart';
import 'package:adaptive_dashboard/presentaion/view/tablet%20layout/tablet_layout.dart';
import 'package:adaptive_dashboard/presentaion/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  DashboardViewState createState() => DashboardViewState();
}

class DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
      desktopLayout: (context) => const DesktopLayout(),
      tabletLayout: (context) => const TabletLayout(),
      mobileLayout: (context) => const MobileLayout(),
    ));
  }
}
