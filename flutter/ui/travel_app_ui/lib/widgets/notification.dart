import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_container.dart';

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: 59.0,
      width: 59.0,
      border: Border.all(
        color: Color.fromRGBO(0, 0, 0, 0.1),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      padding: const EdgeInsets.all(12.0),
      asset: SvgPicture.asset(
        'assets/images/notification.svg',
      ),
    );
  }
}
