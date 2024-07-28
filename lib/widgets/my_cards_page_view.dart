import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
  // List<double> childerenHeight = [];
  // int currentPage = 0;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //  // height: childerenHeight[currentPage],
    //   child: PageView.builder(
    //     itemCount: 3,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => const MyCard(),
    //   ),
    // );
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          print('vvvvvv$value');
        },
        children: List.generate(
          3,
          (index) => const MyCard(),
        ));
  }
}
