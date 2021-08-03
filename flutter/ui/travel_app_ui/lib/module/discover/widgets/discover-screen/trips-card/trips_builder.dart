import 'package:flutter/material.dart';

import '../../../../../core/widgets/horizontal_list_builder.dart';
import '../../../models/trips.dart';
import 'trip_card.dart';

class TripsBuilder extends StatelessWidget {
  const TripsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListBuilder(
      height: 282.0,
      itemCount: trips.length,
      itemBuilder: (BuildContext context, int index) {
        return TripCard(
          index: index,
        );
      },
    );
  }
}
