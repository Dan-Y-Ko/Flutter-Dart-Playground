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
      body: SingleChildScrollView(
        child: SafeArea(
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
                  suffixIcon:
                      Image.asset('assets/images/notification_icon.png'),
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
              SizedBox(
                height: 194.0,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.9),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: CreditCard(),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicator(
                    index: _currentPage,
                    data: [0, 1, 2],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
