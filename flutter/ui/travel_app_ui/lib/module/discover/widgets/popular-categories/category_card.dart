import 'package:flutter/material.dart';

import '../../models/categories.dart';
import 'category_card_image.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      width: 201.0,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(24.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 80.0,
            offset: Offset(0, 23.0),
          ),
        ],
      ),
      child: Row(
        children: [
          CategoryCardImage(index: index),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories[index].category,
                    style: TextStyle(
                      fontFamily: 'Poppins600',
                      fontSize: 20.0,
                      color: Color(0xFF222222),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    categories[index].location,
                    style: TextStyle(
                      fontFamily: 'Poppins500',
                      fontSize: 15.0,
                      color: Color(0xFFACB1C2),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
