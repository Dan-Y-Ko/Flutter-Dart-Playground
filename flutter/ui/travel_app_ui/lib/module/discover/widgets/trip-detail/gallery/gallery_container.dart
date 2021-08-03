import 'package:flutter/material.dart';

import 'gallery_list.dart';

class GalleryContainer extends StatelessWidget {
  const GalleryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Gallery',
          style: TextStyle(
            color: Color(0xFF222222),
            fontFamily: 'Poppins600',
            fontSize: 24.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        GalleryList(),
      ],
    );
  }
}
