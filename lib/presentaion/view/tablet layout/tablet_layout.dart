import 'package:adaptive_dashboard/presentaion/widgets/bar_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/conversion_rate.dart';
import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/line_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/revenue_cards.dart';
import 'package:adaptive_dashboard/presentaion/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        title: const HeaderMiddleWidget(),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: RevenueCards(),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    flex: 1,
                    child: ConversionCards(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(child: BarChartWidget()),
                        SizedBox(width: 20),
                        Expanded(child: LineChartWidget()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 300,
              child: SideBar(),
            ),
          ],
        ),
      ),
    );
  }
}
