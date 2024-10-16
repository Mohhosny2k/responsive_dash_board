import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

import 'tranaction_history_header.dart';
import 'transcation_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const TransactionHistoryHeader(),
       const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style:AppStyles.styleMedium16(context)
        ),
       const  SizedBox(
          height: 16,
        ),
       const TransctionHistoryListView(),
      ],
    );
  }
}
