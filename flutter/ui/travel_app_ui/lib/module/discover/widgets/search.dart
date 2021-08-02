import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/image_container.dart';
import '../../../core/widgets/input.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Input(),
        ),
        SizedBox(
          width: 13.0,
        ),
        ImageContainer(
          color: Color(0xFF222222),
          height: 65.0,
          width: 65.0,
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
          padding: const EdgeInsets.all(21.0),
          asset: SvgPicture.asset(
            'assets/images/search-normal.svg',
          ),
        ),
      ],
    );
  }
}
