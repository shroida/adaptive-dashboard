import 'package:adaptive_dashboard/presentaion/widgets/dashboard_card.dart';
import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
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

          // Right Sidebar
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

// -------------------- BAR CHART --------------------
class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [50.0, 80.0, 30.0, 70.0, 90.0]; // Example data
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 5))
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: CustomPaint(
        painter: BarChartPainter(data),
        child: Container(),
      ),
    );
  }
}

class BarChartPainter extends CustomPainter {
  final List<double> data;
  BarChartPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blueAccent
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;
    final gap = size.width / (data.length * 2 + 1);
    for (int i = 0; i < data.length; i++) {
      final x = gap * (i * 2 + 1) + gap;
      final y = size.height - (data[i] / 100 * size.height);
      canvas.drawLine(Offset(x, size.height), Offset(x, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// -------------------- LINE CHART --------------------
class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [50.0, 80.0, 30.0, 70.0, 90.0]; // Example data
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 5))
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: CustomPaint(
        painter: LineChartPainter(data),
        child: Container(),
      ),
    );
  }
}

class LineChartPainter extends CustomPainter {
  final List<double> data;
  LineChartPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.orange
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final path = Path();
    final gap = size.width / (data.length - 1);
    for (int i = 0; i < data.length; i++) {
      final x = i * gap;
      final y = size.height - (data[i] / 100 * size.height);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    canvas.drawPath(path, paint);

    // Draw points
    final pointPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 6;
    for (int i = 0; i < data.length; i++) {
      final x = i * gap;
      final y = size.height - (data[i] / 100 * size.height);
      canvas.drawCircle(Offset(x, y), 4, pointPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
