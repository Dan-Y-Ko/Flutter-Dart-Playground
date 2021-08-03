import 'package:flutter/material.dart';

import '../../models/categories.dart';

class CategoryCardImage extends StatelessWidget {
  const CategoryCardImage({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81.0,
      width: 80.0,
      margin: EdgeInsets.only(left: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            24.0,
          ),
        ),
        image: DecorationImage(
          image: AssetImage(categories[index].imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
