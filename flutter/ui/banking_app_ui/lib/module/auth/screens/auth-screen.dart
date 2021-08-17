import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
