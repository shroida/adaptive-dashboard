import 'package:adaptive_dashboard/presentaion/widgets/bar_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/dashboard_card.dart';
import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/line_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/mini_bar_chart_printer.dart';
import 'package:adaptive_dashboard/presentaion/widgets/mini_cards.dart';
import 'package:adaptive_dashboard/presentaion/widgets/side_bar_stat_card.dart';
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
                      // ADDITIONAL STATS CARDS
                      Row(
                        children: [
                          Expanded(
                            child: MiniCard(
                                title: "Conversion",
                                value: "3.4%",
                                icon: Icons.show_chart),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: MiniCard(
                                title: "Active Users",
                                value: "856",
                                icon: Icons.people),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: MiniCard(
                                title: "Bounce Rate",
                                value: "42%",
                                icon: Icons.trending_down),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      SizedBox(height: 30),

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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Sidebar Header
                    const Text(
                      "Dashboard Info",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Quick Stats Cards
                    const SidebarStatCard(
                      title: "Active Users",
                      value: "856",
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(height: 12),
                    const SidebarStatCard(
                      title: "Pending Orders",
                      value: "34",
                      color: Colors.orangeAccent,
                    ),
                    const SizedBox(height: 12),
                    const SidebarStatCard(
                      title: "Revenue Today",
                      value: "\$1,245",
                      color: Colors.green,
                    ),
                    const SizedBox(height: 20),

                    // Mini Chart Placeholder
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12),
                        child: CustomPaint(
                          painter: MiniBarChartPainter(),
                          child: const Center(
                            child: Text(
                              "Weekly Sales",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
