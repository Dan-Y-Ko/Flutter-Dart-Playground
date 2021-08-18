import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/button.dart';
import 'auth-screen.dart';

class ScreenArguments {
  final String title;
  final String buttonText;
  final String subText;
  final bool isSignupScreen;

  const ScreenArguments({
    required this.title,
    required this.buttonText,
    required this.subText,
    required this.isSignupScreen,
  });
}

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

  void navigateToAuth(BuildContext context, int? id) {
    if (id == 1) {
      Navigator.of(context).pushNamed(
        AuthScreen.routeName,
        arguments: ScreenArguments(
            title: 'Welcome Back!',
            buttonText: 'Sign In',
            subText: 'Don’t have an account? ',
            isSignupScreen: false),
      );
    }

    if (id == 2) {
      Navigator.of(context).pushNamed(
        AuthScreen.routeName,
        arguments: ScreenArguments(
          title: 'Create Account!',
          buttonText: 'Sign Up',
          subText: 'Already have an account? ',
          isSignupScreen: true,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
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
              CustomButton(
                text: 'Sign In',
                borderRadius: BorderRadius.circular(10.0),
                backgroundColor: AppTheme().primaryUI!,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                onPress: (context, id) => navigateToAuth(context, 1),
                height: 52.0,
              ),
              SizedBox(
                height: 17.0,
              ),
              CustomButton(
                text: 'Sign Up',
                borderRadius: BorderRadius.circular(10.0),
                backgroundColor: AppTheme().secondaryUI!,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                borderColor: AppTheme().primaryText!,
                onPress: (context, id) => navigateToAuth(context, 2),
                height: 52.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
