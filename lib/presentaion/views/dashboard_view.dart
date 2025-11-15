import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  DashboardViewState createState() => DashboardViewState();
}

class DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 767) {
        return Center(
          child: Text('Mobile'),
        );
      }
      if (constraints.maxWidth < 1200) {
        return Center(
          child: Text('Tablet'),
        );
      } else {
        return Text('Desktop');
      }
    }));
  }
}
