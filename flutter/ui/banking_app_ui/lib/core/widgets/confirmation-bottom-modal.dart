import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/gradient-button.dart';
import 'package:flutter/material.dart';

class ConfirmationBottomModal extends StatelessWidget {
  const ConfirmationBottomModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 501.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 18.0),
                  width: 42.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(5.0),
                    color: AppTheme().primaryText,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      'assets/images/confirmation_logo.png',
                    ),
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 28.0,
                  ),
                  Text(
                    'Hurrah!',
                    style: TextStyle(
                      color: AppTheme().primaryText,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Top Up Successfully Done',
                    style: TextStyle(
                      color: AppTheme().primaryText,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            GradientButton(
              text: 'Go Back To Home',
              padding: EdgeInsets.zero,
              onPress: (context, int) {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
