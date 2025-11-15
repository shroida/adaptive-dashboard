import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      50.0,
      40.0,
      20.0,
      60.0,
      75.0,
      80.0,
      60.0,
      90.0,
      70.0,
      90.0,
      85.0,
      70.0
    ]; // Example data
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
