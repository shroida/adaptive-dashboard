import 'package:adaptive_dashboard/presentaion/widgets/bar_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/dashboard_card.dart';
import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/line_chart_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Drawer menu
          const Expanded(
            flex: 1,
            child: DrawerMenu(),
          ),

          // Main Dashboard
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 9.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HeaderMiddleWidget(),

                      // Top Cards
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: DashboardCard(
                                    title: "Revenue", value: "\$12,345")),
                            SizedBox(width: 20),
                            Expanded(
                                child: DashboardCard(
                                    title: "Users", value: "1,234")),
                            SizedBox(width: 20),
                            Expanded(
                                child: DashboardCard(
                                    title: "Orders", value: "567")),
                          ],
                        ),
                      ),

                      SizedBox(height: 30),

                      // Custom Charts
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
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "SIDEBAR\n(Widgets & Charts)",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
