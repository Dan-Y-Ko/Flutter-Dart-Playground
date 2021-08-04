import 'package:flutter/material.dart';

import '../widgets/home-screen/header.dart';
import '../widgets/home-screen/search.dart';
import '../widgets/home-screen/subject-list.dart';

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
                SubjectList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
