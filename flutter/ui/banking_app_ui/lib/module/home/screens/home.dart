import 'package:banking_app_ui/core/widgets/credit-card-carousel.dart';
import 'package:banking_app_ui/module/home/widgets/bottom-section.dart';
import 'package:banking_app_ui/module/home/widgets/features-list.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/credit-card.dart';
import '../../../core/widgets/custom_indicator.dart';
import '../../../core/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Header(
                leadingIcon: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar_1.png'),
                ),
                appBarText: 'Hello, Kawsar!',
                suffixIcon: Image.asset('assets/images/notification_icon.png'),
              ),
            ),
            SizedBox(
              height: 27.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Credit Card',
                style: TextStyle(
                  color: AppTheme().primaryText,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            CreditCardCarousel(
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              index: _currentPage,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 27.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Featured',
                      style: TextStyle(
                        color: AppTheme().secondaryText,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  FeaturesList(),
                ],
              ),
            ),
            BottomSection(),
          ],
        ),
      ),
    );
  }
}
