import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/core/widgets/input.dart';
import 'package:banking_app_ui/module/auth/widgets/back-arrow-widget.dart';
import 'package:banking_app_ui/module/home/widgets/search-button.dart';
import 'package:flutter/material.dart';

class BillScreen extends StatelessWidget {
  const BillScreen({Key? key}) : super(key: key);

  static const routeName = '/bill';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Header(
                leadingIcon: BackArrowButton(),
                appBarText: 'Bill',
              ),
              SizedBox(
                height: 30.0,
              ),
              Input(
                hintText: 'Enter Biller Name',
                borderRadius: BorderRadius.circular(12.0),
                prefixIcon: Icon(Icons.search, color: AppTheme().primaryText),
                suffixIcon: SearchButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
