import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  // static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(
            color: AppTheme().primaryText,
          ),
        ),
      ),
    );
  }
}
