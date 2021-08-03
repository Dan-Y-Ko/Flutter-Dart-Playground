import 'package:flutter/material.dart';

import '../../../../../core/widgets/hearts.dart';

class Caption extends StatelessWidget {
  const Caption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              'Greenland',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Poppins600',
                fontSize: 30.0,
              ),
            ),
            Text(
              'Greenland, North',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'DMSans500',
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 88.0,
        ),
        Hearts(),
      ],
    );
  }
}
