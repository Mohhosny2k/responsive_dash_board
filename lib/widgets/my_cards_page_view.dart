import 'package:flutter/material.dart';

import 'my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});
  List<double> childerenHeight = [];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: childerenHeight[currentPage],
      child: PageView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const MyCard(),
      ),
    );
  }
}
