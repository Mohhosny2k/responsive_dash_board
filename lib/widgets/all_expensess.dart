import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_header.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';
import 'all_expensess_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child:const Column(
        children: [
          AllExpensessHeader()  ,
          SizedBox(height: 16,),
           AllExpensessItem(itemModel: AllExpensessItemModel(image: Assets.imagesIncome, title: 'Income', date: 'April 2022', price: r'$ 20.129'))
        ]
    ),
    );
  }
}

