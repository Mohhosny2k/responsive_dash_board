import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

import '../utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.hint , required this.title});
final String title, hint;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  Text('Customer name', style: AppStyles.styleMedium16),
     const   SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
