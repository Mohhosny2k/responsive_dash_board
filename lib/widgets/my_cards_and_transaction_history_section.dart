import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'income_section.dart';

import 'my_cards_section.dart';
import 'transction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransctionHistory(),

       
      ],
    ));
  }
}
