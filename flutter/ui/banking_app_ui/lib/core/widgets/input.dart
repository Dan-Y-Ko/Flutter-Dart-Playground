import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/theme/theme.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.hintText,
    required this.borderRadius,
    this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final BorderRadius borderRadius;
  final SvgPicture? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 24.0,
            top: 21.0,
            bottom: 21.0,
          ),
          filled: true,
          fillColor: AppTheme().tertiaryUI,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppTheme().primaryText,
            fontSize: AppTheme().fontSizes[6],
            fontWeight: AppTheme().fontWeights[1],
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide.none,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(18.0),
            child: suffixIcon,
          ),
        ),
        style: TextStyle(
          color: AppTheme().primaryText,
        ),
      ),
    );
  }
}
