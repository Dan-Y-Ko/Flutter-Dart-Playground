import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  // static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
