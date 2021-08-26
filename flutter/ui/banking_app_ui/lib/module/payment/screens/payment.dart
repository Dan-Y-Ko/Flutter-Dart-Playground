import '../../../core/widgets/credit-card-carousel.dart';
import '../../../core/widgets/custom-icon-button.dart';
import '../../../core/widgets/header.dart';
import '../../../core/widgets/people-list.dart';
import '../../../core/widgets/back-arrow-widget.dart';
import '../widgets/recent-transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/theme/theme.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  // static const routeName = '/home';

  static const List<Map<String, String>> _people = [
    {
      'avatarUrl': 'assets/images/person_placeholder.png',
      'name': 'Add',
    },
    {
      'avatarUrl': 'assets/images/avatar_5.png',
      'name': 'Kawsar',
    },
    {
      'avatarUrl': 'assets/images/avatar_6.png',
      'name': 'Rumpa',
    },
    {
      'avatarUrl': 'assets/images/avatar_7.png',
      'name': 'Riyadh',
    },
    {
      'avatarUrl': 'assets/images/avatar_8.png',
      'name': 'Monir',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Header(
                  leadingIcon: BackArrowButton(),
                  appBarText: 'Payments',
                ),
              ),
              SizedBox(
                height: 26.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Credit Card',
                  style: TextStyle(
                    color: AppTheme().primaryText,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              CreditCardCarousel(),
              SizedBox(
                height: 21.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Send Money',
                      style: TextStyle(
                        color: AppTheme().secondaryText,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (Map<String, String> person in _people)
                          PeopleList(
                            avatarUrl: person['avatarUrl']!,
                            name: person['name']!,
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Transactions',
                          style: TextStyle(
                            color: AppTheme().primaryText,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomIconButton(
                          height: 30.0,
                          width: 30.0,
                          color: AppTheme().tertiaryUI,
                          borderRadius: BorderRadius.circular(6.0),
                          padding: EdgeInsets.all(8.0),
                          asset: SvgPicture.asset(
                            'assets/images/arrow_right.svg',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    RecentTransactions(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
