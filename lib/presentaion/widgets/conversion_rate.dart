import 'package:adaptive_dashboard/presentaion/widgets/mini_cards.dart';
import 'package:flutter/material.dart';

class ConversionCards extends StatelessWidget {
  const ConversionCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: MiniCard(
              title: "Conversion", value: "3.4%", icon: Icons.show_chart),
        ),
        SizedBox(width: 20),
        Expanded(
          child:
              MiniCard(title: "Active Users", value: "856", icon: Icons.people),
        ),
        SizedBox(width: 20),
        Expanded(
          child: MiniCard(
              title: "Bounce Rate", value: "42%", icon: Icons.trending_down),
        ),
      ],
    );
  }
}
