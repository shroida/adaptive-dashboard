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
                    drawerItem(Icons.dashboard, "Dashboard", isSelected: true),
                    const SizedBox(height: 10),
                    drawerItem(Icons.person, "Users"),
                    const SizedBox(height: 10),
                    drawerItem(Icons.settings, "Settings"),
                    const SizedBox(height: 10),
                    drawerItem(Icons.message, "Messages"),
                    const SizedBox(height: 10),
                    drawerItem(Icons.notifications, "Notifications"),
                    const Spacer(),
                    const Divider(),
                    drawerItem(Icons.logout, "Logout"),
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
