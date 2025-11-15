import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
import 'package:adaptive_dashboard/presentaion/widgets/revenue_cards.dart';
import 'package:adaptive_dashboard/presentaion/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        title: const HeaderMiddleWidget(),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Row(
          children: [
            // LEFT CONTENT
            Column(
              children: [
                Expanded(
                  child: RevenueCards(),
                ),
                
              ],
            ),

            // RIGHT SIDEBAR (ثابت)
            SizedBox(
              width: 250,
              child: SideBar(),
            ),
          ],
        ),
      ),
    );
  }
}
