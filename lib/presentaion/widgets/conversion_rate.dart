import 'package:adaptive_dashboard/presentaion/widgets/mini_cards.dart';
import 'package:flutter/material.dart';

class ConversionCards extends StatelessWidget {
  const ConversionCards({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        final isMobile = screenWidth < 600;
        final isTablet = screenWidth >= 600 && screenWidth < 1024;

        final textScale = isMobile
            ? 0.8
            : isTablet
                ? 0.9
                : 1.0;

        if (isMobile) {
          return Column(
            children: [
              MiniCard(
                title: "Conversion",
                value: "3.4%",
                icon: Icons.show_chart,
                textScale: textScale,
              ),
              const SizedBox(height: 10),
              MiniCard(
                title: "Active Users",
                value: "856",
                icon: Icons.people,
                textScale: textScale,
              ),
              const SizedBox(height: 10),
              MiniCard(
                title: "Bounce Rate",
                value: "42%",
                icon: Icons.trending_down,
                textScale: textScale,
              ),
            ],
          );
        } else {
          return Row(
            children: [
              Expanded(
                child: MiniCard(
                  title: "Conversion",
                  value: "3.4%",
                  icon: Icons.show_chart,
                  textScale: textScale,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: MiniCard(
                  title: "Active Users",
                  value: "856",
                  icon: Icons.people,
                  textScale: textScale,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: MiniCard(
                  title: "Bounce Rate",
                  value: "42%",
                  icon: Icons.trending_down,
                  textScale: textScale,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
