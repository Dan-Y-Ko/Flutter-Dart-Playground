import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_ui/widgets/input.dart';

import 'image_container.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Input()),
        ImageContainer(
          color: Color(0xFF222222),
          height: 65.0,
          width: 65.0,
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
          padding: const EdgeInsets.all(0.0),
          asset: SvgPicture.asset(
            'assets/images/search-normal.svg',
          ),
        ),
      ],
    );
  }
}
