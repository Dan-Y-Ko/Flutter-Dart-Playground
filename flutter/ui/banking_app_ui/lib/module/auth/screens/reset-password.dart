import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:banking_app_ui/core/widgets/header.dart';
import 'package:banking_app_ui/core/widgets/input.dart';
import 'package:banking_app_ui/module/auth/widgets/instruction-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  static const routeName = '/reset-password';

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
              children: <Widget>[
                Header(
                  appBarText: 'Reset Password',
                ),
                SizedBox(
                  height: 23.0,
                ),
                InstructionText(text: 'Enter a new password'),
                SizedBox(
                  height: 96.0,
                ),
                Input(
                  hintText: 'Password',
                  borderRadius: BorderRadius.circular(10.0),
                  suffixIcon: SvgPicture.asset('assets/images/some_icon.svg'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Input(
                  hintText: 'Confirm Password',
                  borderRadius: BorderRadius.circular(10.0),
                  suffixIcon: SvgPicture.asset('assets/images/some_icon.svg'),
                ),
                SizedBox(
                  height: 55.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
