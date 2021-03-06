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
    this.icon,
    this.width,
    required this.height,
  }) : super(key: key);

  final String text;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final Color? borderColor;
  final void Function(BuildContext, int?) onPress;
  final SvgPicture? icon;
  final double? width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: width,
        height: height,
        child: TextButton(
          onPressed: () => onPress(context, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: icon,
                ),
              Text(
                text,
              ),
            ],
          ),
          style: TextButton.styleFrom(
            primary: AppTheme().primaryText,
            backgroundColor: backgroundColor,
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
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
