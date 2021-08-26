import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';
import '../models/incoming-transactions.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: AppTheme().tertiaryBackground,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 21.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today, 25 June',
                      style: TextStyle(
                        color: AppTheme().secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '\$210.02',
                      style: TextStyle(
                        color: AppTheme().secondaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17.0,
                ),
                for (var i = 0; i < incomingTransactions.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(incomingTransactions[i].avatarUrl),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              incomingTransactions[i].name,
                              style: TextStyle(
                                color: AppTheme().primaryText,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              incomingTransactions[i].paymentType,
                              style: TextStyle(
                                color: AppTheme().primaryText,
                                fontSize: 11.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              incomingTransactions[i].amount,
                              style: TextStyle(
                                color: AppTheme().primaryText,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              incomingTransactions[i].time,
                              style: TextStyle(
                                color: AppTheme().primaryText,
                                fontSize: 11.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
