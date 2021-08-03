import 'package:flutter/material.dart';

import '../../../models/trips.dart';
import '../../../screens/trip_detail_screen.dart';

class TripCardImage extends StatelessWidget {
  const TripCardImage({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 187.0,
          width: 203.0,
          margin: EdgeInsets.only(top: 11.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                24.0,
              ),
            ),
            image: DecorationImage(
              image: AssetImage(trips[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          top: 11.0,
          child: Material(
            borderRadius: BorderRadius.all(
              Radius.circular(
                24.0,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(TripDetail.routeName);
              },
            ),
          ),
        ),
      ],
    );
  }
}
