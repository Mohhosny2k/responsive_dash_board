import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

import '../utils/app_styles.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        title: 'Design service', value: '%40', color: Color(0xFF208BC7)),
    ItemDetailsModel(
        title: 'Design product', value: '%25', color: Color(0xFF4DB7F2)),
    ItemDetailsModel(
        title: 'product royalti', value: '%20', color: Color(0xFF064060)),
    ItemDetailsModel(title: 'Other', value: '%22', color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
      return ItemDetails(itemDetailsModel: items[index]);
    });
  }
}
