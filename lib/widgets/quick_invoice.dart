import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transction.dart';

import 'custom_text_field.dart';
import 'quick_invoice_header.dart';
import 'title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTeansction(),
          Divider(
            height: 48,
          ),
          TitleTextField(title: 'Customer name', hint:'Type customer name' ,),
        ],
      ),
    );
  }
}
