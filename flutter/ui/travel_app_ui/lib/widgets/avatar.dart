import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.0,
      width: 61.0,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.05)
            // color: Color(0xFFAAAAAA),
            ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(
          'assets/images/male_avatar.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
