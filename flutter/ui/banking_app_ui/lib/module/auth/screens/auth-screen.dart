import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/button.dart';
import '../../../core/widgets/input.dart';
import '../widgets/back-arrow-widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  static const routeName = '/auth';

  void navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).pushNamed(AuthScreen.routeName);
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackArrowButton(),
                    SizedBox(
                      width: 63.0,
                    ),
                    Text(
                      "Let's Sign In",
                      style: TextStyle(
                        color: AppTheme().primaryText,
                        fontWeight: AppTheme().fontWeights[2],
                        fontSize: AppTheme().fontSizes[8],
                      ),
                    ),
                    Spacer(),
                  ],
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
                      'Welcome Back!',
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
                Input(
                  hintText: 'Password',
                  borderRadius: BorderRadius.circular(10.0),
                  suffixIcon: SvgPicture.asset('assets/images/some_icon.svg'),
                ),
                SizedBox(
                  height: 107.0,
                ),
                CustomButton(
                  text: 'Sign In',
                  padding: EdgeInsets.all(0.0),
                  borderRadius: BorderRadius.circular(10.0),
                  onPress: navigateToHomeScreen,
                  backgroundColor: Colors.transparent,
                  gradient: LinearGradient(
                    colors: [
                      AppTheme().primaryUI!,
                      AppTheme().secondaryUI!,
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t have an account? ',
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
                SizedBox(
                  height: 89.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
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
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
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
                        onPress: (context) => {},
                        backgroundColor: AppTheme().tertiaryUI!,
                        icon: SvgPicture.asset('assets/images/google_icon.svg'),
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
                        onPress: (context) => {},
                        backgroundColor: AppTheme().tertiaryUI!,
                        icon: SvgPicture.asset('assets/images/apple_icon.svg'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
