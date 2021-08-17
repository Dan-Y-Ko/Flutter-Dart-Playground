import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/theme/theme.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.text,
    required this.padding,
    required this.onPress,
    required this.colors,
    this.icon,
  }) : super(key: key);

  final String text;
  final EdgeInsetsGeometry padding;
  final void Function(BuildContext, int?) onPress;
  final List<Color> colors;
  final SvgPicture? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 52.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
          ),
          borderRadius: BorderRadiusDirectional.circular(10.0),
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: AppTheme().primaryText,
              fontWeight: AppTheme().fontWeights[2],
              fontSize: AppTheme().fontSizes[6],
            ),
          ),
          onPressed: () => onPress(context, 0),
        ),
      ),
    );
  }
}
