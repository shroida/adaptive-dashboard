import 'package:adaptive_dashboard/presentaion/widgets/bar_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/conversion_rate.dart';
import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/line_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/revenue_cards.dart';
import 'package:adaptive_dashboard/presentaion/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const SizedBox(
        // SIDEBAR drawer
        width: 280,
        child: Drawer(
          child: SideBar(),
        ),
      ),
      drawer: const Drawer(child: DrawerMenu()),
      appBar: AppBar(
        title: const HeaderMiddleWidget(),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const RevenueCards(),
            const SizedBox(height: 20),
            const ConversionCards(),
            const SizedBox(height: 20),
            Container(
              height: 250,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const BarChartWidget(),
            ),
            const SizedBox(height: 20),
            Container(
              height: 250,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const LineChartWidget(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
