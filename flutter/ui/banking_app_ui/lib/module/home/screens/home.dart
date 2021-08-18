import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

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
                  leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar_1.png'),
                  ),
                  appBarText: 'Hello, Kawsar!',
                  suffixIcon:
                      Image.asset('assets/images/notification_icon.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
