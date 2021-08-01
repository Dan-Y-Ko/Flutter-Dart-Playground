import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.0,
      width: 59.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(0, 0, 0, 0.1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SvgPicture.asset(
          'assets/images/notification.svg',
        ),
      ),
    );
  }
}
