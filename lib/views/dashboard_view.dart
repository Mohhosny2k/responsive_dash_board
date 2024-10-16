import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../widgets/adaptive_layout_widget.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/dashboard_tablet_layout.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/my_cards_section.dart';

class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width <  SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet? const CustomDrawer() : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashboradDeskTopLayout()),
    );
  }
}
