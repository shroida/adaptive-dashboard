import 'package:flutter/material.dart';

class MiniBarChartPainter extends CustomPainter {
  final List<double> data = [50, 80, 30, 70, 60, 90, 40]; // Example data

  @override
  void paint(Canvas canvas, Size size) {
    final double maxData = data.reduce((a, b) => a > b ? a : b);

    final double barWidth =
        size.width / (data.length * 2); // spacing between bars
    final double spacing = barWidth; // space between bars

    for (int i = 0; i < data.length; i++) {
      final double x = i * (barWidth + spacing);
      final double barHeight = (data[i] / maxData) * size.height;

      final Rect rect = Rect.fromLTWH(
        x,
        size.height - barHeight,
        barWidth,
        barHeight,
      );

      // Gradient color
      final Paint paint = Paint()
        ..shader = const LinearGradient(
          colors: [Colors.blueAccent, Colors.lightBlueAccent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ).createShader(rect)
        ..maskFilter =
            const MaskFilter.blur(BlurStyle.normal, 2); // subtle shadow

      // Rounded bars
      final RRect rrect =
          RRect.fromRectAndRadius(rect, const Radius.circular(6));

      canvas.drawRRect(rrect, paint);

      // Optional: draw value above each bar
      final textSpan = TextSpan(
        text: data[i].toInt().toString(),
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
      final tp = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      tp.layout();
      tp.paint(
          canvas,
          Offset(
              x + barWidth / 2 - tp.width / 2, size.height - barHeight - 16));
    }

    // Draw baseline
    final baselinePaint = Paint()
      ..color = Colors.grey[400]!
      ..strokeWidth = 1.5;
    canvas.drawLine(
        Offset(0, size.height), Offset(size.width, size.height), baselinePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
