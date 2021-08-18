import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'module/auth/screens/auth-screen.dart';
import 'module/auth/screens/forgot-password.dart';
import 'module/auth/screens/index.dart';
import 'module/auth/screens/reset-password.dart';
import 'module/auth/screens/verification.dart';
import 'module/home/screens/home.dart';
import 'module/onboarding/screens/onboarding-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: OnboardingScreen(),
      routes: {
        SignInAndSignUpScreen.routeName: (_) => SignInAndSignUpScreen(),
        AuthScreen.routeName: (_) => AuthScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ForgotPassword.routeName: (_) => ForgotPassword(),
        Verification.routeName: (_) => Verification(),
        ResetPassword.routeName: (_) => ResetPassword(),
      },
    );
  }
}
