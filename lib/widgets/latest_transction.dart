import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'latest_teanction_list_view.dart';

class LatestTeansction extends StatelessWidget {
  const LatestTeansction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Text('Latest Transactions', style: AppStyles.styleMedium16),
     SizedBox(height: 16,),

   LatestTeansctionListView(),
      ],
    );
  }
}

