import 'package:adaptive_dashboard/presentaion/widgets/drawer_list_items.dart';
import 'package:adaptive_dashboard/presentaion/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const DrawerListItems(),
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
    );
  }
}
