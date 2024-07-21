import 'package:flutter/material.dart';

import 'all_expensess.dart';
import 'quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:const Column(
        children: [
           SizedBox(
            height: 40,
          ),
          AllExpensess(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
