import 'package:banking_app_ui/module/auth/widgets/instruction-text.dart';
import 'package:flutter/material.dart';

import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/gradient-button.dart';
import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/core/widgets/input.dart';
import 'package:banking_app_ui/module/auth/screens/verification.dart';

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
                InstructionText(
                    text:
                        'We need your registration phon number to send you password reset code!'),
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
                  onPress: (context, id) {
                    Navigator.of(context).pushNamed(Verification.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
