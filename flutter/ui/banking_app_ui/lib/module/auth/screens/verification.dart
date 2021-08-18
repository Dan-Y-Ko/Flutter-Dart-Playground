import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/gradient-button.dart';
import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/core/widgets/input.dart';
import 'package:banking_app_ui/core/widgets/verification-input.dart';
import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  static const routeName = '/verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Header(
                  appBarText: 'Verification Code',
                ),
                SizedBox(
                  height: 23.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Enter the code we sent you',
                    style: TextStyle(
                      fontWeight: AppTheme().fontWeights[1],
                      fontSize: AppTheme().fontSizes[7],
                      color: AppTheme().primaryText,
                      height: 1.7,
                    ),
                  ),
                ),
                SizedBox(
                  height: 95.0,
                ),
                VerificationInput(),
                SizedBox(
                  height: 6.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Text(
                    'Resend Code',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: AppTheme().secondaryText,
                        fontWeight: AppTheme().fontWeights[1],
                        fontSize: AppTheme().fontSizes[7]),
                  ),
                ),
                SizedBox(
                  height: 94.0,
                ),
                GradientButton(
                  text: 'Send Code',
                  padding: EdgeInsets.zero,
                  onPress: (context, id) {},
                  colors: [
                    AppTheme().primaryUI!,
                    AppTheme().secondaryUI!,
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
