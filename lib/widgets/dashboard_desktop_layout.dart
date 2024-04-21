import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboradDeskTopLayout extends StatelessWidget {
  const DashboradDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}