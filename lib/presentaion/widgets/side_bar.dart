import 'package:adaptive_dashboard/presentaion/widgets/mini_bar_chart_printer.dart';
import 'package:adaptive_dashboard/presentaion/widgets/side_bar_stat_card.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
