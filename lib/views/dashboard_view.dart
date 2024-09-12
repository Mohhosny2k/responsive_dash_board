import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/my_cards_section.dart';

class DashBoradView extends StatelessWidget {
  const DashBoradView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) =>const  DashBoardMobileLayout(),
          tabletLayout: (context) =>const DashBoardTabletLayout(),
          desktopLayout: (context) =>const DashboradDeskTopLayout()),
    );
  }
}
