import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expensess.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

import 'all_expensess_and_quick_invoice.dart';

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
        Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardsPageView()),
      ],
    );
  }
}
