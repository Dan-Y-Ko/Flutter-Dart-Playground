import 'package:flutter/material.dart';

import '../widgets/trip-detail/description.dart';
import '../widgets/trip-detail/jumbotron/jumbotron.dart';
import '../widgets/trip-detail/reservation_button.dart';

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
                SizedBox(
                  height: 22.0,
                ),
                Description(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ReservationButton(),
    );
  }
}
