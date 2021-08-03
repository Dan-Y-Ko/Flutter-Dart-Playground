import 'package:flutter/material.dart';

import '../widgets/trip-detail/jumbotron/jumbotron.dart';

class TripDetail extends StatelessWidget {
  const TripDetail({Key? key}) : super(key: key);

  static const routeName = '/trip-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Jumbotron(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
