import 'package:flutter/material.dart';

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
                Container(
                  height: 450.0,
                  width: 366.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(36.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/greenland.jpg'),
                      fit: BoxFit.cover,
                    ),
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
