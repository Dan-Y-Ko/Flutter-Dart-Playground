import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/gradient-button.dart';
import '../../../core/widgets/header.dart';
import '../../../core/widgets/input.dart';
import '../widgets/back-arrow-widget.dart';
import '../widgets/instruction-text.dart';
import 'index.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  static const routeName = '/reset-password';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: AppTheme().primaryBackground,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Header(
                    leadingIcon: BackArrowButton(),
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
                  GradientButton(
                    text: 'Confirm',
                    padding: EdgeInsets.zero,
                    onPress: (context, id) {
                      Navigator.of(context)
                          .pushNamed(SignInAndSignUpScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
