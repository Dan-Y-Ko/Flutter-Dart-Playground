import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.leadingIcon,
    required this.appBarText,
    this.suffixIcon,
  }) : super(key: key);

  final Widget leadingIcon;
  final String appBarText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leadingIcon,
        SizedBox(
          width: 63.0,
        ),
        Text(
          appBarText,
          style: TextStyle(
            color: AppTheme().primaryText,
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
        ),
        Spacer(),
        suffixIcon ?? Spacer(),
      ],
    );
  }
}
