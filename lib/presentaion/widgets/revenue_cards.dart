import 'package:adaptive_dashboard/presentaion/widgets/dashboard_card.dart';
import 'package:flutter/material.dart';

class RevenueCards extends StatelessWidget {
  const RevenueCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: const DashboardCard(title: "Revenue", value: "\$12,345")),
        SizedBox(width: 20),
        Expanded(child: DashboardCard(title: "Users", value: "1,234")),
        SizedBox(width: 20),
        Expanded(child: DashboardCard(title: "Orders", value: "567")),
      ],
    );
  }
}
