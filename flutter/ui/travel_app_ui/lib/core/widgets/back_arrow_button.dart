import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_container.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: 57.0,
      width: 57.0,
      color: Color(0xFFFFFFFF),
      padding: EdgeInsets.all(15.0),
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
      asset: SvgPicture.asset(
        'assets/images/arrow-left.svg',
      ),
    );
  }
}
