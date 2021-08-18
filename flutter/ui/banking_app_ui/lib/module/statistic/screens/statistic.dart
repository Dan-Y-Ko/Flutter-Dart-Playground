import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class Statistic extends StatelessWidget {
  const Statistic({Key? key}) : super(key: key);

  // static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: Center(
        child: Text(
          'Statistic Screen',
          style: TextStyle(
            color: AppTheme().primaryText,
          ),
        ),
      ),
    );
  }
}
