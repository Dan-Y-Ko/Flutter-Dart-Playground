import 'package:flutter/material.dart';

import '../../module/home/screens/home.dart';
import '../../module/payment/screens/payment.dart';
import '../../module/profile/screens/profile.dart';
import '../../module/statistic/screens/statistic.dart';
import '../utils/theme/theme.dart';

class MainFlow extends StatefulWidget {
  const MainFlow({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  _MainFlowState createState() => _MainFlowState();
}

class _MainFlowState extends State<MainFlow> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _screens = [
    HomeScreen(),
    Statistic(),
    Payment(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Theme(
        data: ThemeData().copyWith(
          splashColor: AppTheme().secondaryUI,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppTheme().primaryBackground,
          selectedItemColor: AppTheme().primaryText,
          unselectedItemColor: AppTheme().secondaryText,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppTheme().secondaryUI,
              label: '',
              tooltip: '',
              icon: Container(
                padding: EdgeInsets.only(top: 14.0),
                child: ImageIcon(
                  AssetImage('assets/images/bottom_nav_icon_1.png'),
                  size: 48.0,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              tooltip: '',
              icon: Container(
                padding: EdgeInsets.only(top: 14.0),
                child: ImageIcon(
                  AssetImage('assets/images/bottom_nav_icon_2.png'),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              tooltip: '',
              icon: Container(
                padding: EdgeInsets.only(top: 14.0),
                child: ImageIcon(
                  AssetImage('assets/images/bottom_nav_icon_3.png'),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              tooltip: '',
              icon: Container(
                padding: EdgeInsets.only(top: 14.0),
                child: ImageIcon(
                  AssetImage('assets/images/bottom_nav_icon_4.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
