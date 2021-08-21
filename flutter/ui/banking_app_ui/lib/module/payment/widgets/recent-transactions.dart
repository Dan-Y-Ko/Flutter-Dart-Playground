import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/module/payment/models/transactions.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (Transactions transaction in transactions)
            Container(
              margin: EdgeInsets.only(bottom: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: AppTheme().tertiaryUI,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 7.0, 9.0, 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(transaction.avatarUrl),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.name,
                            style: TextStyle(
                              color: AppTheme().primaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            transaction.date,
                            style: TextStyle(
                              color: AppTheme().primaryText,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      transaction.amount,
                      style: TextStyle(
                        color: AppTheme().primaryText,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
