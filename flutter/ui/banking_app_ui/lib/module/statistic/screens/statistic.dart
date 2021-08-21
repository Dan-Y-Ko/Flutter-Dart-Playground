import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/module/auth/widgets/back-arrow-widget.dart';
import 'package:banking_app_ui/module/statistic/widgets/chart.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class Statistic extends StatelessWidget {
  const Statistic({Key? key}) : super(key: key);

  // static const routeName = '/home';

  static const List<String> _monthsList = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Header(
                  leadingIcon: BackArrowButton(),
                  appBarText: 'Statistic',
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar_1.png'),
                radius: 27.0,
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: AppTheme().primaryText,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '\$18,100',
                style: TextStyle(
                  color: AppTheme().secondaryText,
                  fontSize: 29.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 49.0,
              ),
              Chart(),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 33.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (String list in _monthsList)
                      Text(
                        list,
                        style: TextStyle(
                          color: AppTheme().primaryText,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
