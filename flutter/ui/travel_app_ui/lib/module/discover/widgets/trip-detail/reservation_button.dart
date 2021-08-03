import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReservationButton extends StatelessWidget {
  const ReservationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24.0, 0, 24.0, 33.0),
          height: 74.0,
          width: 366.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Color(0xFF222222),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(),
              Text(
                'Book Now',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'DMSans500',
                  fontSize: 20.0,
                ),
              ),
              SvgPicture.asset(
                'assets/images/arrow-right-white.svg',
              ),
            ],
          ),
        ),
        Positioned.fill(
          left: 24.0,
          right: 24.0,
          bottom: 33.0,
          child: Material(
            borderRadius: BorderRadius.all(
              Radius.circular(
                24.0,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
