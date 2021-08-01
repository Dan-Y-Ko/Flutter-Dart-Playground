import 'package:flutter/material.dart';

import 'input.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Input()),
      ],
    );
  }
}
