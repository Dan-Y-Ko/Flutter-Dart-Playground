import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.borderRadius,
    required this.backgroundColor,
    required this.padding,
    this.borderColor,
    required this.onPress,
    this.gradient,
  }) : super(key: key);

  final String text;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final Color? borderColor;
  final void Function(BuildContext) onPress;
  final LinearGradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: borderRadius, gradient: gradient),
        child: ElevatedButton(
          onPressed: () => onPress(context),
          child: Text(
            text,
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: backgroundColor,
            textStyle: TextStyle(
              fontWeight: AppTheme().fontWeights[2],
              fontSize: AppTheme().fontSizes[6],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
              side: BorderSide(
                color: borderColor ?? Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
