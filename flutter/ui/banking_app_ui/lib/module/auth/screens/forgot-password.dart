import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/gradient-button.dart';
import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/core/widgets/input.dart';
import 'package:banking_app_ui/module/auth/widgets/back-arrow-widget.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static const routeName = '/forgot-password';

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
                  appBarText: 'Forgot Password',
                ),
                SizedBox(
                  height: 23.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'We need your registration phon number to send you password reset code!',
                    style: TextStyle(
                      fontWeight: AppTheme().fontWeights[1],
                      fontSize: AppTheme().fontSizes[7],
                      color: AppTheme().primaryText,
                      height: 1.7,
                    ),
                  ),
                ),
                SizedBox(
                  height: 74.0,
                ),
                Input(
                  hintText: 'Enter password',
                  borderRadius: BorderRadius.circular(10.0),
                ),
                SizedBox(
                  height: 18.0,
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
