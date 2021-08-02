import 'package:flutter/material.dart';
import '../../../core/widgets/image_container.dart';

class Hearts extends StatelessWidget {
  const Hearts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: 37.0,
      width: 37.0,
      color: Color(0xFFFFFFFF),
      padding: EdgeInsets.all(0.0),
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      asset: Icon(
        Icons.favorite,
        color: Color(0xFFF9685E),
      ),
    );
  }
}
