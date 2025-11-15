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

Widget drawerItem(IconData icon, String title, {bool isSelected = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    child: Card(
      elevation: isSelected ? 4 : 0, // Add slight elevation if selected
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(color: Colors.blue.shade200, width: 1)
            : BorderSide.none,
      ),
      // Use a lighter shade of white/grey for the selected background to contrast with the F0F0F0 card background
      color: isSelected ? const Color(0xFFE0E0FF) : Colors.white,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Add navigation logic here
            print('$title clicked');
          },
          hoverColor: Colors.blue.withOpacity(0.1), // Explicit hover color
          splashColor: Colors.blue.withOpacity(0.2), // Ripple color
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 22,
                  color: isSelected ? Colors.blue : Colors.grey[700],
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected ? Colors.blue : Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
