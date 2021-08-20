import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/module/auth/widgets/back-arrow-widget.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';

class Statistic extends StatelessWidget {
  const Statistic({Key? key}) : super(key: key);

  // static const routeName = '/home';

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
            ],
          ),
        ),
      ),
    );
  }
}
