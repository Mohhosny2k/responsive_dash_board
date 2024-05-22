import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import 'all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = const [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$ 20.129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$ 20.129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$ 20.129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        // children: items.map((e) => Expanded(child: AllExpensessItem(itemModel: e))).toList()

        children: items.asMap().entries.map(
      (e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                    itemModel: item, isSelected: selectedIndex == index),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                  updateIndex(index);
                },
              child: AllExpensessItem(
                      itemModel: item, isSelected: selectedIndex == index),
            ),
          );
        }
      },
    ).toList());
    // return SizedBox(
    //   height: 500,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return AllExpensessItem(
    //         itemModel: items[index],
    //       );
    //     },
    //   ),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
