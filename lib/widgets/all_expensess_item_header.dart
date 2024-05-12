
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 60,
        width: 60,
        decoration:const ShapeDecoration(
         
          color: const Color(0xFFFAFAFA),
          shape: OvalBorder(),
        ),
        child:SvgPicture.asset(image),
      ),
    ],);
  }
}