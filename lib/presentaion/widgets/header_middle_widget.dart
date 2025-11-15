import 'package:flutter/material.dart';

class HeaderMiddleWidget extends StatelessWidget {
  const HeaderMiddleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Team Overview',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.notifications,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(Icons.settings),
            SizedBox(
              width: 25,
            ),
          ],
        )
      ],
    );
  }
}
