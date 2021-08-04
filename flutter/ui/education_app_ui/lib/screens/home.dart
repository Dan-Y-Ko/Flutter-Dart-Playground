import 'package:education_app_ui/widgets/home-screen/header.dart';
import 'package:education_app_ui/widgets/home-screen/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 36.0,
                ),
                Search(),
                SizedBox(
                  height: 26.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
