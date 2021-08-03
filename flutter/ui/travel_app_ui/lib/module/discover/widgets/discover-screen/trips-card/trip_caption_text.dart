import 'package:flutter/material.dart';

import '../../../models/trips.dart';

class TripCaptionText extends StatelessWidget {
  const TripCaptionText({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 23.0),
            child: Text(
              trips[index].title,
              style: TextStyle(
                fontFamily: 'DMSans700',
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 23.0),
            child: Text(
              trips[index].caption,
              style: TextStyle(
                fontFamily: 'DMSans500',
                fontSize: 12.0,
                color: Color(0xFFACB1C2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
