import 'package:flutter/material.dart';

import 'all_expensess.dart';
import 'quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
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
