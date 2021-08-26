import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/header.dart';
import '../../../core/widgets/back-arrow-widget.dart';
import '../widgets/transfer-grid-view.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);

  static const routeName = '/transfer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Header(
                leadingIcon: BackArrowButton(),
                appBarText: 'Transfer',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'All Way',
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
            TransferGridView(),
          ],
        ),
      ),
    );
  }
}
