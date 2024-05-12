import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboradDeskTopLayout extends StatelessWidget {
  const DashboradDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
            child: Column(
          children: [
            Expanded(child: AllExpensess()),
          ],
        )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
