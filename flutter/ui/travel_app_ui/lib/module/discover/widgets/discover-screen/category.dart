import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF222222),
            fontFamily: 'Poppins600',
            fontSize: 24.0,
          ),
        ),
        SvgPicture.asset(
          'assets/images/arrow-right.svg',
        ),
      ],
    );
  }
}
