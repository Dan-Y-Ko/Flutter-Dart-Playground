import 'package:flutter/material.dart';

import '../../../../../core/widgets/horizontal_list_builder.dart';
import '../../../models/categories.dart';
import 'category_card.dart';

class CategoriesBuilder extends StatelessWidget {
  const CategoriesBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListBuilder(
      height: 95.0,
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return CategoryCard(
          index: index,
        );
      },
    );
  }
}
