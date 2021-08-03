import 'package:flutter/material.dart';

import '../../../../../core/widgets/image_container.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: 61.0,
      width: 61.0,
      border: Border.all(
        color: Color.fromRGBO(0, 0, 0, 0.05),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
      padding: const EdgeInsets.all(4.0),
      asset: Image.asset(
        'assets/images/male_avatar.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
