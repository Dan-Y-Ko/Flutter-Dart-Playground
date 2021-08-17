import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/button-widget.dart';
import 'auth-screen.dart';

class SignInAndSignUpScreen extends StatefulWidget {
  const SignInAndSignUpScreen({Key? key}) : super(key: key);

  static const routeName = '/signinandsignup';

  @override
  _SignInAndSignUpScreenState createState() => _SignInAndSignUpScreenState();
}

class _SignInAndSignUpScreenState extends State<SignInAndSignUpScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  void navigateToAuth(BuildContext context) {
    Navigator.of(context).pushNamed(AuthScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().secondaryUI,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 120.0,
              height: 112.0,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 80.0,
            ),
            SizedBox(
              width: 263.0,
              height: 272.0,
              child: Image.asset('assets/images/login_screen_image.png'),
            ),
            SizedBox(
              height: 80.0,
            ),
            ButtonWidget(
              text: 'Sign In',
              borderRadius: BorderRadius.circular(10.0),
              backgroundColor: AppTheme().primaryUI!,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              onPress: navigateToAuth,
            ),
            SizedBox(
              height: 17.0,
            ),
            ButtonWidget(
              text: 'Sign Up',
              borderRadius: BorderRadius.circular(10.0),
              backgroundColor: AppTheme().secondaryUI!,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              borderColor: AppTheme().primaryText!,
              onPress: navigateToAuth,
            ),
          ],
        ),
      ),
    );
  }
}
