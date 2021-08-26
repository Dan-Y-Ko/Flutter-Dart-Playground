import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.hintText,
    required this.borderRadius,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText,
  }) : super(key: key);

  final String hintText;
  final BorderRadius borderRadius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: obscureText ?? false,
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
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide.none,
          ),
          prefixIcon: prefixIcon,
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
