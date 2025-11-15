import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.desktopLayout});
  final WidgetBuilder desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 767) {
        return const Center(
          child: Text('Mobile'),
        );
      }
      if (constraints.maxWidth < 1200) {
        return const Center(
          child: Text('Tablet'),
        );
      } else {
        return desktopLayout(context);
      }
    });
  }
}
