import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import '../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                  shape: const OvalBorder(), color: itemDetailsModel.color),
            ),
           const SizedBox(width: 12,),
            Text(itemDetailsModel.title, style: AppStyles.styleRegular16(context)),
            const SizedBox(width: 24,),
            Text(itemDetailsModel.value, style: AppStyles.styleMedium16(context)),
        
          ],
        ),
      ),
    );
    
    // return ListTile(
    //   leading: Container(
    //     width: 12,
    //     height: 12,
    //     decoration: ShapeDecoration(
    //         shape: const OvalBorder(), color: itemDetailsModel.color),
    //   ),
    //   title: Text(itemDetailsModel.title, style: AppStyles.styleRegular16),
    //   trailing: Text(itemDetailsModel.value, style: AppStyles.styleMedium16),
    // );
  }
}
