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
    this.onTap,
    required this.asset,
  }) : super(key: key);

  final Color? color;
  final double height;
  final double width;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry padding;
  final void Function()? onTap;
  final Widget asset;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
        ),
        Positioned.fill(
          child: Material(
            borderRadius: BorderRadius.all(
              Radius.circular(
                50.0,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
