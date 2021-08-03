import 'package:flutter/material.dart';

import '../../../models/gallery.dart';

class GalleryList extends StatelessWidget {
  const GalleryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 36.0),
      child: Row(
        children: [
          for (var i = 0; i < gallery.length; i++)
            i == 3
                ? Container(
                    margin: EdgeInsets.only(right: 5.0),
                    height: 75.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage(gallery[i].imageUrl),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Color.fromRGBO(34, 34, 34, 0.6),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '12+',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Poppins600',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(right: 5.0),
                    height: 75.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage(gallery[i].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
        ],
      ),
    );
  }
}
