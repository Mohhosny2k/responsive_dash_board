import 'package:flutter/material.dart';
import '../models/user_info_model.dart';
import 'user_info_list_tile.dart';
import '../utils/app_images.dart';

class LatestTeansctionListView extends StatelessWidget {
  const LatestTeansctionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniandi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniandi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniandi20@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel:e))).toList(),
      ),
    );

    // return SizedBox(
    //   height: 90,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //           padding: const EdgeInsets.only(top: 20),
    //           child: IntrinsicWidth(
    //               child: UserInfoListTile(userInfoModel: items[index])));
    //     },
    //   ),
    // );
  }
}
