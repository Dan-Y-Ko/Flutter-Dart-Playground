import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/navigation/main-flow.dart';
import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/button.dart';
import '../../../core/widgets/gradient-button.dart';
import '../../../core/widgets/header.dart';
import '../../../core/widgets/input.dart';
import '../widgets/back-arrow-widget.dart';
import 'forgot-password.dart';
import 'index.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/auth';

  void navigateToAuth(context) {
    Navigator.of(context).pushNamed(AuthScreen.routeName);
  }

  void navigateToNextScreen(BuildContext context, int id) {
    if (id == 0) {
      Navigator.of(context).pushNamed(MainFlow.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

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
                children: [
                  args.isSignupScreen
                      ? Header(
                          leadingIcon: BackArrowButton(),
                          appBarText: "Let's Sign Up")
                      : Header(
                          leadingIcon: BackArrowButton(),
                          appBarText: "Let's Sign In",
                        ),
                  SizedBox(
                    height: 49.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 143.0,
                      height: 78.0,
                      child: Text(
                        args.title,
                        style: TextStyle(
                          fontWeight: AppTheme().fontWeights[2],
                          fontSize: AppTheme().fontSizes[13],
                          color: AppTheme().primaryText,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 49.0,
                  ),
                  Input(
                    hintText: 'Name',
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  args.isSignupScreen
                      ? Column(
                          children: [
                            Input(
                              hintText: 'Email',
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        )
                      : SizedBox(height: 0.0),
                  Input(
                    hintText: 'Password',
                    borderRadius: BorderRadius.circular(10.0),
                    suffixIcon: SvgPicture.asset('assets/images/some_icon.svg'),
                  ),
                  args.isSignupScreen
                      ? SizedBox(
                          height: 35.0,
                        )
                      : SizedBox(
                          height: 107.0,
                        ),
                  GradientButton(
                    text: args.buttonText,
                    padding: EdgeInsets.all(0.0),
                    onPress: !args.isSignupScreen
                        ? (context, id) => navigateToNextScreen(context, 0)
                        : (context, id) => navigateToNextScreen(context, 1),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: args.subText,
                        style: TextStyle(
                          fontWeight: AppTheme().fontWeights[1],
                          fontSize: AppTheme().fontSizes[4],
                          color: AppTheme().primaryText,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontWeight: AppTheme().fontWeights[2],
                              fontSize: AppTheme().fontSizes[4],
                              color: AppTheme().secondaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  !args.isSignupScreen
                      ? TextButton(
                          style: TextButton.styleFrom(
                            primary: AppTheme().primaryText,
                            textStyle: TextStyle(
                              fontWeight: AppTheme().fontWeights[2],
                              fontSize: AppTheme().fontSizes[4],
                            ),
                          ),
                          child: Text(
                            'Forgot Password',
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(ForgotPassword.routeName);
                          },
                        )
                      : SizedBox(
                          height: 0.0,
                        ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: Divider(
                            color: AppTheme().primaryText,
                            thickness: 1.0,
                          ),
                        ),
                      ),
                      Text(
                        'or continue with',
                        style: TextStyle(
                          color: AppTheme().primaryText,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: AppTheme().fontWeights[1],
                          fontSize: AppTheme().fontSizes[6],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: Divider(
                            color: AppTheme().primaryText,
                            thickness: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Sign In',
                          padding: EdgeInsets.all(0.0),
                          borderRadius: BorderRadius.circular(10.0),
                          onPress: (context, id) => {},
                          backgroundColor: AppTheme().tertiaryUI!,
                          icon:
                              SvgPicture.asset('assets/images/google_icon.svg'),
                          height: 52.0,
                        ),
                      ),
                      SizedBox(
                        width: 19.0,
                      ),
                      Expanded(
                        child: CustomButton(
                          text: 'Sign In',
                          padding: EdgeInsets.all(0.0),
                          borderRadius: BorderRadius.circular(10.0),
                          onPress: (context, id) => {},
                          backgroundColor: AppTheme().tertiaryUI!,
                          icon:
                              SvgPicture.asset('assets/images/apple_icon.svg'),
                          height: 52.0,
                        ),
                      ),
                    ],
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
