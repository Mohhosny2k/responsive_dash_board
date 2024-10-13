import 'package:flutter/material.dart';
import 'all_expensess_header.dart';
import 'all_expensess_items_list_view.dart';

import 'custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,// start
         children: [
        AllExpensessHeader(),
        SizedBox(
          height: 16,
        ),
        // AllExpensessItem(itemModel: AllExpensessItemModel(image: Assets.imagesIncome, title: 'Income', date: 'April 2022', price: r'$ 20.129'))
        AllExpensessItemsListView(),
      ]),
    //  padding: 20.0,
    );
  }
}
