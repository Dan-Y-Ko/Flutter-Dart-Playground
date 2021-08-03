import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30.0,
        bottom: 33.0,
        right: 30.0,
      ),
      height: 88.0,
      width: 354.0,
      decoration: BoxDecoration(
        color: Color(0xFF222222),
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.18),
            blurRadius: 31.0,
            offset: Offset(0, 11.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Material(
                  type: MaterialType.transparency,
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 45.0,
                    icon: SvgPicture.asset(
                      'assets/images/home.svg',
                    ),
                  ),
                ),
                Positioned(
                  left: 29.0,
                  bottom: 3.0,
                  child: Image.asset('assets/images/Ellipse5.png'),
                ),
              ],
            ),
            Material(
              type: MaterialType.transparency,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                onPressed: () {},
                iconSize: 45.0,
                icon: SvgPicture.asset(
                  'assets/images/discover.svg',
                ),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                onPressed: () {},
                iconSize: 45.0,
                icon: SvgPicture.asset(
                  'assets/images/heart.svg',
                ),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: IconButton(
                onPressed: () {},
                iconSize: 45.0,
                icon: SvgPicture.asset(
                  'assets/images/user.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
