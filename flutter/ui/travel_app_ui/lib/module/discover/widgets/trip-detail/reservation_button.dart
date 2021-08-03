import 'package:flutter/material.dart';

class ReservationButton extends StatelessWidget {
  const ReservationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24.0, 0, 24.0, 33.0),
      height: 74.0,
      width: 366.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Color(0xFF222222),
      ),
    );
  }
}
