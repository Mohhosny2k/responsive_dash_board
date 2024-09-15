import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(image: Assets.imagesAvatar3, title: 'Lekan Okeowo', subTitle: 'demo@gmail.com'),
                // image: Assets.imagesAvatar3,
                // title: 'Lekan Okeowo',
                // subtitle: 'demo@gmail.com'
                ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 8,
          )),
         
             DrawerItemListView(),
         
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSettings)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
