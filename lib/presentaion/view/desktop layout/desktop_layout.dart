import 'package:adaptive_dashboard/presentaion/widgets/bar_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/line_chart_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/mini_cards.dart';
import 'package:adaptive_dashboard/presentaion/widgets/revenue_cards.dart';
import 'package:adaptive_dashboard/presentaion/widgets/side_bar.dart';
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
                        child: RevenueCards(),
                      ),
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

          const Expanded(
            flex: 1,
            child: SideBar(),
          )
        ],
      ),
    );
  }
}
