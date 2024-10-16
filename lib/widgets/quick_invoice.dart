import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'latest_transction.dart';

import 'custom_text_field.dart';
import 'quick_invoice_form.dart';
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
             color: Color(0xffF1F1F1),
          ),
        QuickInvoiceForm(),
        ],
      ),
    );
  }
}

