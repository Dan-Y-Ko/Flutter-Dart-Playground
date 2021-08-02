import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Poppins400',
            color: Color(0xFFAAAAAA),
          ),
        ),
        Text(
          'Salung',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Poppins600',
            color: Color(0xFF222222),
          ),
        ),
      ],
    );
  }
}
