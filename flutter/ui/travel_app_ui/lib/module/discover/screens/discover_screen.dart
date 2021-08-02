import 'package:flutter/material.dart';
import '../widgets/trips_builder.dart';

import '../widgets/category.dart';
import '../widgets/header.dart';
import '../widgets/search.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 33.0),
              child: Column(
                children: [
                  Header(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Search(),
                  SizedBox(
                    height: 30.0,
                  ),
                  Category(text: 'Popular Trips'),
                  SizedBox(
                    height: 12.0,
                  ),
                  TripsBuilder(),
                  SizedBox(
                    height: 32.0,
                  ),
                  Category(text: 'Popular Categories'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
