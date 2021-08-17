import '../../../core/widgets/input.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';
import '../widgets/back-arrow-widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
