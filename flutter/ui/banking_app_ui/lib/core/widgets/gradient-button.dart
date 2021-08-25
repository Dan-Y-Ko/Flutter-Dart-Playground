import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/theme/theme.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.text,
    required this.padding,
    required this.onPress,
    this.icon,
  }) : super(key: key);

  final String text;
  final EdgeInsetsGeometry padding;
  final void Function(BuildContext, int?) onPress;
  final SvgPicture? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 52.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme().primaryUI!,
              AppTheme().secondaryUI!,
            ],
          ),
          borderRadius: BorderRadiusDirectional.circular(10.0),
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: icon == null
              ? Text(
                  text,
                  style: TextStyle(
                    color: AppTheme().primaryText,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: AppTheme().primaryText,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                      ),
                    ),
                    icon!
                  ],
                ),
          onPressed: () => onPress(context, 0),
        ),
      ),
    );
  }
}
