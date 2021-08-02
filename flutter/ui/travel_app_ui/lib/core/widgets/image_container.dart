import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    this.color,
    required this.height,
    required this.width,
    this.border,
    this.borderRadius,
    required this.padding,
    required this.asset,
  }) : super(key: key);

  final Color? color;
  final double height;
  final double width;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry padding;
  final Widget asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: padding,
        child: asset,
      ),
    );
  }
}
