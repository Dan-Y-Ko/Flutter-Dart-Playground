import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: Text('Test'),
    );
  }
}
