import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'latest_teanction_list_view.dart';

class LatestTeansction extends StatelessWidget {
  const LatestTeansction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
   const Text('Latest Transactions', style: AppStyles.styleMedium16),
  const   SizedBox(height: 16,),

   LatestTeansctionListView(),
      ],
    );
  }
}

