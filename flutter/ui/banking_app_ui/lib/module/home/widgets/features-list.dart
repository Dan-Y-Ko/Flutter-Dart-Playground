import '../../../core/utils/theme/theme.dart';
import '../models/features.dart';
import '../screens/bill.dart';
import '../../top-up/screens/top-up.dart';
import '../screens/transfer.dart';
import 'package:flutter/material.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({
    Key? key,
  }) : super(key: key);

  static const route = [
    TopUpScreen.routeName,
    BillScreen.routeName,
    TransferScreen.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < features.length; i++)
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 63.0,
                      height: 63.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppTheme().tertiaryUI,
                      ),
                      child: Image.asset(features[i].logo),
                    ),
                    Positioned.fill(
                      child: Material(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(route[i]);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  features[i].title,
                  style: TextStyle(
                    color: AppTheme().primaryText,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
