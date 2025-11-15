import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [50.0, 80.0, 30.0, 70.0, 90.0];
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
