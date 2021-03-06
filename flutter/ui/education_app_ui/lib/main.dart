import 'package:flutter/material.dart';

import 'screens/detail.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
      routes: {
        Detail.routeName: (_) => Detail(),
      },
    );
  }
}

// design credit to: MD Sabbir
// https://www.uplabs.com/posts/education-app-5120f560-78c7-4eb9-99b7-69ed32d5388c