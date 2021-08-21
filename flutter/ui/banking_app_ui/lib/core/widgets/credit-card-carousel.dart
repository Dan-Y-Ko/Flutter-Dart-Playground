import 'package:flutter/material.dart';

import 'credit-card.dart';
import 'custom_indicator.dart';

class CreditCardCarousel extends StatefulWidget {
  const CreditCardCarousel({
    Key? key,
  }) : super(key: key);

  @override
  _CreditCardCarouselState createState() => _CreditCardCarouselState();
}

class _CreditCardCarouselState extends State<CreditCardCarousel> {
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 194.0,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
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
              index: currentPage,
              data: [0, 1, 2],
            ),
          ],
        ),
      ],
    );
  }
}
