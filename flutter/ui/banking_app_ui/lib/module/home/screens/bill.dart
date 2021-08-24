import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/core/widgets/input.dart';
import 'package:banking_app_ui/module/auth/widgets/back-arrow-widget.dart';
import 'package:banking_app_ui/module/home/widgets/bill-grid-view.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Header(
                leadingIcon: BackArrowButton(),
                appBarText: 'Bill',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Input(
                hintText: 'Enter Biller Name',
                borderRadius: BorderRadius.circular(12.0),
                prefixIcon: Icon(Icons.search, color: AppTheme().primaryText),
                suffixIcon: SearchButton(),
              ),
            ),
            SizedBox(
              height: 29.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Bill Type',
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
            BillGridView(),
          ],
        ),
      ),
    );
  }
}
