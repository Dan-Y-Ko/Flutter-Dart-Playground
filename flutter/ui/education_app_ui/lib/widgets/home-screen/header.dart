import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/Menu.svg'),
              ),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          Greeting()
        ],
      ),
    );
  }
}

class Greeting extends StatelessWidget {
  const Greeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 85.0,
      left: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hey Alex',
            style: TextStyle(
              color: Color(0xFF4D2C5E),
              fontFamily: 'Inter600',
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Find a course you want to learn',
            style: TextStyle(
              color: Color(0xFF575E83),
              fontFamily: 'Inter400',
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
