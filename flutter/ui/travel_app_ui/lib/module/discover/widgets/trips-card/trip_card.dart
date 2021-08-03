import 'package:flutter/material.dart';

import '../../models/trips.dart';
import '../../../../core/widgets/hearts.dart';
import 'trip_caption_text.dart';
import 'trip_card_image.dart';

class TripCard extends StatelessWidget {
  const TripCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225.0,
      height: 282.0,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 94.0,
            offset: Offset(0, 17.0),
          ),
        ],
      ),
      child: Column(
        children: [
          trips[index].isFavorite
              ? Stack(
                  children: [
                    TripCardImage(index: index),
                    Positioned(
                      top: 20.0,
                      right: 12.0,
                      child: Hearts(),
                    ),
                  ],
                )
              : TripCardImage(index: index),
          SizedBox(
            height: 16.0,
          ),
          TripCaptionText(index: index),
        ],
      ),
    );
  }
}
