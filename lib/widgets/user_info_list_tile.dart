import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/user_info_model.dart';
import '../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  //final String image, title, subtitle; required this.image, required this.title, required this.subtitle
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfoModel.image,
          ),
          title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: FittedBox(
              alignment: AlignmentDirectional.centerStart,
              fit: BoxFit.scaleDown,
              child: Text(
                userInfoModel.title,
                style: AppStyles.styleSemiBold16(context),
              ),
            ),
          ),
          subtitle: Text(userInfoModel.subTitle,
              style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
