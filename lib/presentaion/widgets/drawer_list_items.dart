import 'package:adaptive_dashboard/presentaion/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class DrawerListItems extends StatelessWidget {
  const DrawerListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerItem(
          icon: Icons.dashboard,
          title: "Dashboard",
          isSelected: true,
          onTap: () {},
        ),
        DrawerItem(
          icon: Icons.person,
          title: "Users",
          onTap: () {},
        ),
        DrawerItem(
          icon: Icons.settings,
          title: "Settings",
          onTap: () {},
        ),
        DrawerItem(
          icon: Icons.message,
          title: "Messages",
          onTap: () {},
        ),
        DrawerItem(
          icon: Icons.notifications,
          title: "Notifications",
          onTap: () {},
        ),
        DrawerItem(
          icon: Icons.logout,
          title: "Logout",
          onTap: () {},
        ),
      ],
    );
  }
}
