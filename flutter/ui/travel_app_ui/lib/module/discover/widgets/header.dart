import 'package:flutter/material.dart';

import 'avatar.dart';
import 'greeting.dart';
import 'notification.dart' as TravelApp;

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Avatar(),
            SizedBox(
              width: 20.0,
            ),
            Greeting(),
          ],
        ),
        TravelApp.Notification(),
      ],
    );
  }
}
