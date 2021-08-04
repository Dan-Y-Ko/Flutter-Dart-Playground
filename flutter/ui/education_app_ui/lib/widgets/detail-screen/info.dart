import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 27.0),
            height: 171.0,
            width: 142.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Title(),
                SizedBox(
                  height: 21.0,
                ),
                Stats(),
                SizedBox(
                  height: 21.0,
                ),
                Price(),
              ],
            ),
          ),
          Positioned(
            top: -30.0,
            left: 190.0,
            child: Image.asset(
              'assets/images/book.png',
              height: 240.0,
              width: 242.0,
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Basic Grammar',
      style: TextStyle(
        color: Color(0xFF4D2C5E),
        fontFamily: 'Inter700',
        fontSize: 30.0,
      ),
    );
  }
}

class Stats extends StatelessWidget {
  const Stats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/fa-solid_user.svg'),
        Text(
          '1.2k',
          style: TextStyle(
            color: Color(0xFF575E83),
            fontFamily: 'Inter400',
            fontSize: 15.75,
          ),
        ),
        SizedBox(
          width: 60.0,
        ),
        SvgPicture.asset('assets/images/Star.svg'),
        Text(
          '4.5',
          style: TextStyle(
            color: Color(0xFF575E83),
            fontFamily: 'Inter400',
            fontSize: 15.75,
          ),
        ),
      ],
    );
  }
}

class Price extends StatelessWidget {
  const Price({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        Text(
          '\$280',
          style: TextStyle(
            color: Color(0xFF4D2C5E),
            fontFamily: 'Inter700',
            fontSize: 30.0,
          ),
        ),
        Text(
          '\$340',
          style: TextStyle(
            color: Color.fromRGBO(87, 94, 131, 0.5),
            fontFamily: 'Inter500',
            fontSize: 20.0,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }
}
