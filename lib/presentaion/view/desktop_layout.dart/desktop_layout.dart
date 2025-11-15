import 'package:adaptive_dashboard/presentaion/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
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
                    ]),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blueGrey,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Muhammad Walied",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
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
                    const Spacer(),
                    const Divider(),
                    DrawerItem(
                      icon: Icons.logout,
                      title: "Logout",
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 9.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0F0F0), // Light Grey Card Background
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                      // Added Shadow
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "MAIN DASHBOARD CONTENT",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0F0F0), // Light Grey Card Background
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                      // Added Shadow
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
