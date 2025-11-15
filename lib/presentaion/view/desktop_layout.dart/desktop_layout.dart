import 'package:adaptive_dashboard/presentaion/widgets/drawer_menu.dart';
import 'package:adaptive_dashboard/presentaion/widgets/header_middle_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: DrawerMenu(),
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 9.0),
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
                      ],
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 30),
                      child: const Column(
                        children: [HeaderMiddleWidget()],
                      ),
                    )),
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
                  const SizedBox(height: 8),
                  Text(
                    "The Luhn algorithm (mod 10) is a simple checksum formula used to validate identification numbers, most famously credit card numbers. It ensures the number is not a random sequence of digits but doesn't check if the card is active or real.",
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
