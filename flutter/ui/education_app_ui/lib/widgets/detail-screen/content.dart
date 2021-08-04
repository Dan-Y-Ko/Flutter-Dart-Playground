import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(27.0, 46.0, 24.0, 0),
        decoration: BoxDecoration(
          color: Color(0xFFFEF9EF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Title(),
            SizedBox(
              height: 21.0,
            ),
            CardContainer(
              height: 165.0,
              title: 'Get Started',
              icon: SvgPicture.asset('assets/images/chevron-up.svg'),
            ),
            SizedBox(
              height: 14.0,
            ),
            CardContainer(
              height: 59.0,
              title: 'The Brief',
              icon: SvgPicture.asset('assets/images/chevron-down.svg'),
            ),
            SizedBox(
              height: 14.0,
            ),
            CardContainer(
              height: 59.0,
              title: 'Rolls of Grammar',
              icon: SvgPicture.asset('assets/images/chevron-down.svg'),
            ),
          ],
        ),
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
      'Course Content',
      style: TextStyle(
        color: Color(0xFF4D2C5E),
        fontFamily: 'Inter600',
        fontSize: 24.0,
      ),
      textAlign: TextAlign.left,
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
    required this.height,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final double height;
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.fromLTRB(19.0, 16.0, 20.0, 19.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(63, 62, 118, 0.04),
              offset: Offset(0, 8.0),
              blurRadius: 16.0,
            )
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF4D2C5E),
                  fontFamily: 'Inter600',
                  fontSize: 16.0,
                ),
              ),
              icon,
            ],
          ),
        ],
      ),
    );
  }
}

class Playlist extends StatelessWidget {
  const Playlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.only(left: -20.0),
            leading: Image.asset('assets/images/play.png'),
            title: Text(
              'Introduction',
              style: TextStyle(
                color: Color(0xFF4D2C5E),
                fontFamily: 'Inter400',
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(
              '02:04',
              style: TextStyle(
                color: Color(0xFFB9B9B9),
                fontFamily: 'Inter400',
                fontSize: 12.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
