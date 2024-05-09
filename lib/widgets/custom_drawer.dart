import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          const UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
          const SizedBox(
            height: 8,
          ),
          DrawerItemListView(),

          Expanded(
            child: SizedBox(),
          ),

          InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Setting system', image: Assets.imagesSettings)),
          InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout account', image: Assets.imagesLogout)),
        SizedBox(height: 48,)
        ],
      ),
    );
  }
}

