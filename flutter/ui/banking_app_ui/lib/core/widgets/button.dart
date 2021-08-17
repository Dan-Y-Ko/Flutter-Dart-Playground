import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.borderRadius,
    required this.backgroundColor,
    required this.padding,
    required this.onPress,
    this.borderColor,
  }) : super(key: key);

  final String text;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final Color? borderColor;
  final void Function(BuildContext) onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        onPressed: () => onPress(context),
        child: Text(
          text,
        ),
        style: ElevatedButton.styleFrom(
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
    );
  }
}
