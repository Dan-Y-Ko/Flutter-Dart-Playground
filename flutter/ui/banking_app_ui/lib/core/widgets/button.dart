import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    this.icon,
  }) : super(key: key);

  final String text;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final Color? borderColor;
  final void Function(BuildContext, int?) onPress;
  final LinearGradient? gradient;
  final SvgPicture? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        onPressed: () => onPress(context, 0),
        child: Ink(
          height: 52.0,
          decoration:
              BoxDecoration(borderRadius: borderRadius, gradient: gradient),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                child: icon,
              ),
              Text(
                text,
              ),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 52.0),
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
    );
  }
}
