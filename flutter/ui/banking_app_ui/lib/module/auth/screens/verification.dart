import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/gradient-button.dart';
import '../../../core/widgets/header.dart';
import '../../../core/widgets/verification-input.dart';
import '../widgets/back-arrow-widget.dart';
import '../widgets/instruction-text.dart';
import 'reset-password.dart';

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
                  leadingIcon: BackArrowButton(),
                  appBarText: 'Verification Code',
                ),
                SizedBox(
                  height: 23.0,
                ),
                InstructionText(text: 'Enter the code we sent you'),
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
                  text: 'Confirm',
                  padding: EdgeInsets.zero,
                  onPress: (context, id) {
                    Navigator.of(context).pushNamed(ResetPassword.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
