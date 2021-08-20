import 'package:flutter/material.dart';

import 'credit-card.dart';
import 'custom_indicator.dart';

class CreditCardCarousel extends StatelessWidget {
  const CreditCardCarousel({
    Key? key,
    this.onPageChanged,
    required this.index,
  }) : super(key: key);

  final void Function(int)? onPageChanged;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 194.0,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            onPageChanged: onPageChanged,
            controller: PageController(initialPage: 0, viewportFraction: 0.9),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: CreditCard(),
              );
            },
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIndicator(
              index: index,
              data: [0, 1, 2],
            ),
          ],
        ),
      ],
    );
  }
}
