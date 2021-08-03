import 'package:flutter/material.dart';

import 'module/discover/screens/discover_screen.dart';
import 'module/discover/screens/trip_detail_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: DiscoverScreen(),
      routes: {
        TripDetail.routeName: (ctx) => TripDetail(),
      },
    );
  }
}

// design credit to: Salung Prastyo
// https://www.uplabs.com/posts/travel-app-05f44f53-353d-490f-80af-6bef443cd669