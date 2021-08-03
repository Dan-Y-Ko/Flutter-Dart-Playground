import 'package:flutter/material.dart';

class HorizontalListBuilder extends StatelessWidget {
  const HorizontalListBuilder({
    Key? key,
    required this.height,
    required this.itemCount,
    required this.itemBuilder,
  }) : super(key: key);

  final double height;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          clipBehavior: Clip.none,
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          itemBuilder: itemBuilder),
    );
  }
}
